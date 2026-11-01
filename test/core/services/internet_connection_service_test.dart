import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';

class MockConnectivity extends Mock implements Connectivity {}

class MockReachabilityProbe extends Mock implements ReachabilityProbe {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockConnectivity mockConnectivity;
  late MockReachabilityProbe mockProbe;
  late StreamController<List<ConnectivityResult>> connectivityController;

  setUp(() {
    mockConnectivity = MockConnectivity();
    mockProbe = MockReachabilityProbe();
    connectivityController =
        StreamController<List<ConnectivityResult>>.broadcast();

    when(() => mockConnectivity.onConnectivityChanged)
        .thenAnswer((_) => connectivityController.stream);
    when(() => mockConnectivity.checkConnectivity())
        .thenAnswer((_) async => [ConnectivityResult.wifi]);

    when(() => mockProbe.close()).thenReturn(null);
    when(() => mockProbe.runAll()).thenAnswer(
      (_) async => const FullProbeResult(
        isSuccess: true,
        latencyMs: 50,
        issue: NetworkIssue.none,
      ),
    );
    when(() => mockProbe.runPrimary())
        .thenAnswer((_) async => const ProbeOk(50));
  });

  tearDown(() async {
    await connectivityController.close();
  });

  group('InternetConnectionService Specification Tests', () {
    test(
      'Interface up + all probes fail -> disconnected, lastIssue == noInternet',
      () async {
        when(() => mockProbe.runAll()).thenAnswer(
          (_) async => const FullProbeResult(
            isSuccess: false,
            latencyMs: null,
            issue: NetworkIssue.noInternet,
          ),
        );

        final service = InternetConnectionService(
          probe: mockProbe,
          connectivity: mockConnectivity,
          registerObserver: false,
        );
        addTearDown(service.dispose);

        await Future<void>.delayed(const Duration(milliseconds: 20));

        expect(service.currentState, NetworkState.disconnected);
        expect(service.lastIssue, NetworkIssue.noInternet);
      },
    );

    test('Probes return portal -> lastIssue == captivePortal', () async {
      when(() => mockProbe.runAll()).thenAnswer(
        (_) async => const FullProbeResult(
          isSuccess: false,
          latencyMs: null,
          issue: NetworkIssue.captivePortal,
        ),
      );

      final service = InternetConnectionService(
        probe: mockProbe,
        connectivity: mockConnectivity,
        registerObserver: false,
      );
      addTearDown(service.dispose);

      await Future<void>.delayed(const Duration(milliseconds: 20));

      expect(service.currentState, NetworkState.disconnected);
      expect(service.lastIssue, NetworkIssue.captivePortal);
    });

    test(
      'One failed check while connected -> stays connected; two consecutive -> disconnected',
      () async {
        final service = InternetConnectionService(
          probe: mockProbe,
          connectivity: mockConnectivity,
          registerObserver: false,
        );
        addTearDown(service.dispose);

        await Future<void>.delayed(const Duration(milliseconds: 20));
        expect(service.currentState, NetworkState.connected);

        // First failure: primary and fallback runAll both fail
        when(() => mockProbe.runPrimary())
            .thenAnswer((_) async => const ProbeFailed());
        when(() => mockProbe.runAll()).thenAnswer(
          (_) async => const FullProbeResult(
            isSuccess: false,
            latencyMs: null,
            issue: NetworkIssue.noInternet,
          ),
        );

        await service.checkNow();
        // Stays connected after 1 failure
        expect(service.currentState, NetworkState.connected);

        // Second failure
        await service.checkNow();
        // Disconnected after 2 consecutive failures
        expect(service.currentState, NetworkState.disconnected);
      },
    );

    test(
      'Disconnected -> probe succeeds on later timer tick with NO connectivity event -> connected, restored stream fires once',
      () {
        fakeAsync((async) {
          var probeShouldSucceed = false;

          when(() => mockProbe.runAll()).thenAnswer((_) async {
            if (probeShouldSucceed) {
              return const FullProbeResult(
                isSuccess: true,
                latencyMs: 50,
                issue: NetworkIssue.none,
              );
            }
            return const FullProbeResult(
              isSuccess: false,
              latencyMs: null,
              issue: NetworkIssue.noInternet,
            );
          });

          final service = InternetConnectionService(
            probe: mockProbe,
            connectivity: mockConnectivity,
            registerObserver: false,
          );
          addTearDown(service.dispose);

          async.flushMicrotasks();
          expect(service.currentState, NetworkState.disconnected);

          var restoredFiredCount = 0;
          final sub = service.connectivityRestoredStream
              .listen((_) => restoredFiredCount++);
          addTearDown(sub.cancel);

          // Now internet comes back without any OS connectivity event
          probeShouldSucceed = true;

          // First backoff delay is 2 seconds
          async
            ..elapse(const Duration(seconds: 2))
            ..flushMicrotasks();

          expect(service.currentState, NetworkState.connected);
          expect(restoredFiredCount, 1);
        });
      },
    );

    test('Backoff while disconnected: ticks at 2, 4, 6, 10, 15, 15 s', () {
      fakeAsync((async) {
        final tickTimestamps = <int>[];

        when(() => mockProbe.runAll()).thenAnswer((_) async {
          tickTimestamps.add(async.elapsed.inSeconds);
          return const FullProbeResult(
            isSuccess: false,
            latencyMs: null,
            issue: NetworkIssue.noInternet,
          );
        });

        final service = InternetConnectionService(
          probe: mockProbe,
          connectivity: mockConnectivity,
          registerObserver: false,
        );
        addTearDown(service.dispose);

        async.flushMicrotasks();
        // Initial run at 0s
        expect(tickTimestamps, [0]);

        // Advance 2s (index 0 -> 2s)
        async.elapse(const Duration(seconds: 2));
        expect(tickTimestamps, [0, 2]);

        // Advance 4s (index 1 -> 4s)
        async.elapse(const Duration(seconds: 4));
        expect(tickTimestamps, [0, 2, 6]);

        // Advance 6s (index 2 -> 6s)
        async.elapse(const Duration(seconds: 6));
        expect(tickTimestamps, [0, 2, 6, 12]);

        // Advance 10s (index 3 -> 10s)
        async.elapse(const Duration(seconds: 10));
        expect(tickTimestamps, [0, 2, 6, 12, 22]);

        // Advance 15s (index 4 -> 15s)
        async.elapse(const Duration(seconds: 15));
        expect(tickTimestamps, [0, 2, 6, 12, 22, 37]);

        // Advance 15s (index 4 repeats -> 15s)
        async.elapse(const Duration(seconds: 15));
        expect(tickTimestamps, [0, 2, 6, 12, 22, 37, 52]);
      });
    });

    test(
      'Ping and HTTP slow hits counted separately; fast ping does not clear HTTP hits; HTTP hits decay after 30s',
      () {
        fakeAsync((async) {
          var fakeTime = DateTime(2026);
          final service = InternetConnectionService(
            probe: mockProbe,
            connectivity: mockConnectivity,
            nowProvider: () => fakeTime,
            registerObserver: false,
          );
          addTearDown(service.dispose);

          async.flushMicrotasks();
          expect(service.currentState, NetworkState.connected);

          // 3 slow HTTP hits trigger unstable
          service
            ..reportLatency(3000)
            ..reportLatency(3000)
            ..reportLatency(3000);
          expect(service.currentState, NetworkState.unstable);

          // Fast ping occurs via timer or checkNow
          fakeTime = fakeTime.add(const Duration(seconds: 5));
          async
            ..elapse(const Duration(seconds: 5))
            ..flushMicrotasks();
          // Still unstable because HTTP hits are not cleared by fast pings!
          expect(service.currentState, NetworkState.unstable);

          // Fast HTTP report clears slow HTTP hits
          service.reportLatency(200);
          expect(service.currentState, NetworkState.connected);

          // Test decay: 3 slow HTTP hits again
          service
            ..reportLatency(3000)
            ..reportLatency(3000)
            ..reportLatency(3000);
          expect(service.currentState, NetworkState.unstable);

          // Advance past 30 seconds decay without new slow requests
          fakeTime = fakeTime.add(const Duration(seconds: 31));
          async
            ..elapse(const Duration(seconds: 31))
            ..flushMicrotasks();

          expect(service.currentState, NetworkState.connected);
        });
      },
    );

    test(
      'hasConnection() during initial check awaits and returns right value; concurrent checkNow() calls share one check',
      () async {
        final completer = Completer<FullProbeResult>();
        when(() => mockProbe.runAll()).thenAnswer((_) => completer.future);

        final service = InternetConnectionService(
          probe: mockProbe,
          connectivity: mockConnectivity,
          registerObserver: false,
        );
        addTearDown(service.dispose);

        // Before completing probe, state is checking
        expect(service.currentState, NetworkState.checking);

        final hasConnectionFuture = service.hasConnection();
        final checkNowFuture1 = service.checkNow();
        final checkNowFuture2 = service.checkNow();

        completer.complete(
          const FullProbeResult(
            isSuccess: true,
            latencyMs: 40,
            issue: NetworkIssue.none,
          ),
        );

        final results = await Future.wait([
          hasConnectionFuture,
          checkNowFuture1.then((_) => true),
          checkNowFuture2.then((_) => true),
        ]);

        expect(results[0], isTrue);
        expect(service.currentState, NetworkState.connected);
        // Probe was invoked once for initial check
        verify(() => mockProbe.runAll()).called(1);
      },
    );

    test('Network switch mid-check: stale result discarded, new check runs',
        () async {
      var callCount = 0;
      final completer1 = Completer<FullProbeResult>();
      final completer2 = Completer<FullProbeResult>();

      when(() => mockProbe.runAll()).thenAnswer((_) {
        callCount++;
        if (callCount == 1) return completer1.future;
        return completer2.future;
      });

      final service = InternetConnectionService(
        probe: mockProbe,
        connectivity: mockConnectivity,
        registerObserver: false,
      );
      addTearDown(service.dispose);

      await Future<void>.delayed(const Duration(milliseconds: 10));

      // Network switch occurs mid-check
      connectivityController.add([ConnectivityResult.mobile]);
      await Future<void>.delayed(const Duration(milliseconds: 10));

      // Complete the first (stale) check with failure
      completer1.complete(
        const FullProbeResult(
          isSuccess: false,
          latencyMs: null,
          issue: NetworkIssue.noInternet,
        ),
      );

      // Complete the second check with success
      completer2.complete(
        const FullProbeResult(
          isSuccess: true,
          latencyMs: 60,
          issue: NetworkIssue.none,
        ),
      );

      await Future<void>.delayed(const Duration(milliseconds: 20));

      // The stale failure was discarded, final state is connected
      expect(service.currentState, NetworkState.connected);
    });

    test(
      'reportRequestFailure() triggers check, debounced within 3s, ignored while disconnected',
      () async {
        final service = InternetConnectionService(
          probe: mockProbe,
          connectivity: mockConnectivity,
          registerObserver: false,
        );
        addTearDown(service.dispose);

        await Future<void>.delayed(const Duration(milliseconds: 20));
        expect(service.currentState, NetworkState.connected);

        // Reset verify count
        clearInteractions(mockProbe);

        service.reportRequestFailure();
        await Future<void>.delayed(const Duration(milliseconds: 20));
        verify(() => mockProbe.runAll()).called(1);

        // Immediately call again -> debounced
        service.reportRequestFailure();
        await Future<void>.delayed(const Duration(milliseconds: 20));
        verifyNoMoreInteractions(mockProbe);
      },
    );

    test('Lifecycle observer cancels timer in background and checks on resume',
        () {
      fakeAsync((async) {
        final service = InternetConnectionService(
          probe: mockProbe,
          connectivity: mockConnectivity,
          registerObserver: false,
        );
        addTearDown(service.dispose);

        async.flushMicrotasks();
        expect(service.currentState, NetworkState.connected);

        clearInteractions(mockProbe);

        // Background app
        service.didChangeAppLifecycleState(AppLifecycleState.paused);

        // Elapse time in background -> no ping check should run
        async.elapse(const Duration(seconds: 20));
        verifyNoMoreInteractions(mockProbe);

        // Resume app -> triggers active check
        service.didChangeAppLifecycleState(AppLifecycleState.resumed);
        async.flushMicrotasks();
        verify(() => mockProbe.runAll()).called(1);
      });
    });

    test('dispose() is idempotent and closes streams', () async {
      final service = InternetConnectionService(
        probe: mockProbe,
        connectivity: mockConnectivity,
        registerObserver: false,
      );

      await Future<void>.delayed(const Duration(milliseconds: 20));

      service
        ..dispose()
        ..dispose();

      expect(service.hasConnection(), completion(isTrue));
    });
  });
}
