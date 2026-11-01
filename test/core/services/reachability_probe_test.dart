import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';

void main() {
  group('ReachabilityProbe against local HttpServer', () {
    late HttpServer server;
    late int port;

    setUp(() async {
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      port = server.port;

      server.listen((request) async {
        switch (request.uri.path) {
          case '/status204':
            request.response.statusCode = HttpStatus.noContent;
            await request.response.close();
          case '/status302':
            request.response.statusCode = HttpStatus.found;
            request.response.headers.set(HttpHeaders.locationHeader, '/login');
            await request.response.close();
          case '/status200_wrong':
            request.response.statusCode = HttpStatus.ok;
            request.response.write('Captive Portal Login');
            await request.response.close();
          case '/status200_success':
            request.response.statusCode = HttpStatus.ok;
            request.response.write('Success');
            await request.response.close();
          case '/status500':
            request.response.statusCode = HttpStatus.internalServerError;
            await request.response.close();
          case '/slow':
            await Future<void>.delayed(const Duration(milliseconds: 300));
            request.response.statusCode = HttpStatus.noContent;
            await request.response.close();
          default:
            request.response.statusCode = HttpStatus.notFound;
            await request.response.close();
        }
      });
    });

    tearDown(() async {
      await server.close(force: true);
    });

    test('204 response yields ProbeResult.ok', () async {
      final probe = ReachabilityProbe();
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/status204'),
        (status, _) => status == 204,
      );

      final result = await probe.run(target);
      expect(result.isOk, isTrue);
      expect(result.latencyMs, isNotNull);
      expect(result.latencyMs, greaterThanOrEqualTo(0));
    });

    test('302 redirect yields ProbeResult.portal', () async {
      final probe = ReachabilityProbe();
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/status302'),
        (status, _) => status == 204,
      );

      final result = await probe.run(target);
      expect(result.isPortal, isTrue);
      expect(result.latencyMs, isNull);
    });

    test('200 with wrong body yields ProbeResult.portal', () async {
      final probe = ReachabilityProbe();
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/status200_wrong'),
        (status, body) => status == 200 && body.contains('Success'),
      );

      final result = await probe.run(target);
      expect(result.isPortal, isTrue);
    });

    test('200 with Success on Apple captive endpoint yields ProbeResult.ok',
        () async {
      final probe = ReachabilityProbe();
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/status200_success'),
        (status, body) => status == 200 && body.contains('Success'),
      );

      final result = await probe.run(target);
      expect(result.isOk, isTrue);
      expect(result.latencyMs, greaterThanOrEqualTo(0));
    });

    test('500 server error yields ProbeResult.failed', () async {
      final probe = ReachabilityProbe();
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/status500'),
        (status, _) => status == 204,
      );

      final result = await probe.run(target);
      expect(result.isFailed, isTrue);
    });

    test('slow response exceeding timeout yields ProbeResult.failed', () async {
      final probe = ReachabilityProbe(
        timeout: const Duration(milliseconds: 100),
      );
      addTearDown(probe.close);

      final target = ProbeTarget(
        Uri.parse('http://127.0.0.1:$port/slow'),
        (status, _) => status == 204,
      );

      final result = await probe.run(target);
      expect(result.isFailed, isTrue);
    });

    test(
      'runAll() consensus: succeeds when at least 2 of 3 succeed, returns median latency, updates primaryIndex',
      () async {
        final probe = ReachabilityProbe(
          targets: [
            ProbeTarget(
              Uri.parse('http://127.0.0.1:$port/status204'),
              (s, _) => s == 204,
            ),
            ProbeTarget(
              Uri.parse('http://127.0.0.1:$port/status200_success'),
              (s, b) => s == 200 && b.contains('Success'),
            ),
            ProbeTarget(
              Uri.parse('http://127.0.0.1:$port/status500'),
              (s, _) => s == 204,
            ),
          ],
        );
        addTearDown(probe.close);

        final summary = await probe.runAll();
        expect(summary.isSuccess, isTrue);
        expect(summary.issue, NetworkIssue.none);
        expect(summary.latencyMs, isNotNull);
        expect(probe.primaryIndex, isIn([0, 1]));
      },
    );

    test('runAll() consensus fails with captivePortal if any probe saw portal',
        () async {
      final probe = ReachabilityProbe(
        targets: [
          ProbeTarget(
            Uri.parse('http://127.0.0.1:$port/status302'),
            (s, _) => s == 204,
          ),
          ProbeTarget(
            Uri.parse('http://127.0.0.1:$port/status500'),
            (s, _) => s == 204,
          ),
          ProbeTarget(
            Uri.parse('http://127.0.0.1:$port/status500'),
            (s, _) => s == 204,
          ),
        ],
      );
      addTearDown(probe.close);

      final summary = await probe.runAll();
      expect(summary.isSuccess, isFalse);
      expect(summary.issue, NetworkIssue.captivePortal);
    });

    test('runAll() consensus fails with noInternet when all endpoints fail without portal',
        () async {
      final probe = ReachabilityProbe(
        targets: [
          ProbeTarget(
            Uri.parse('http://127.0.0.1:$port/status500'),
            (s, _) => s == 204,
          ),
          ProbeTarget(
            Uri.parse('http://127.0.0.1:$port/status500'),
            (s, _) => s == 204,
          ),
        ],
      );
      addTearDown(probe.close);

      final summary = await probe.runAll();
      expect(summary.isSuccess, isFalse);
      expect(summary.issue, NetworkIssue.noInternet);
    });
  });
}
