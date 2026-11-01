import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';

enum NetworkState { checking, connected, unstable, disconnected }

enum NetworkIssue {
  none,
  noInterface,
  noInternet,
  captivePortal,
}

abstract interface class IInternetConnectionService {
  Stream<NetworkState> get stateStream;
  Stream<void> get connectivityRestoredStream;
  Future<bool> hasConnection();
  Future<void> checkNow();
  NetworkState get currentState;
  NetworkIssue get lastIssue;
  bool get isStable;
  void reportLatency(int ms);
  void reportRequestFailure();
  void dispose();
}

class NetworkConfig {
  static const int pingIntervalSeconds = 5;
  static const List<int> recoveryBackoffSeconds = [2, 4, 6, 10, 15];
  static const int slowPingThresholdMs = 700;
  static const int slowDioThresholdMs = 2800;
  static const int maxSlowHits = 3;
  static const Duration slowHttpDecay = Duration(seconds: 30);
  static const int failuresBeforeDisconnect = 2;
  static const int requiredProbeSuccesses = 2;
  static const Duration probeTimeout = Duration(seconds: 4);
  static const Duration failureCheckDebounce = Duration(seconds: 3);
}

class ProbeTarget {
  final Uri uri;
  final bool Function(int statusCode, String body) isValid;

  const ProbeTarget(this.uri, this.isValid);
}

enum ProbeOutcome { ok, portal, failed }

class ProbeResult {
  final ProbeOutcome outcome;
  final int? latencyMs;

  const ProbeResult.ok(int latency)
      : outcome = ProbeOutcome.ok,
        latencyMs = latency;

  const ProbeResult.portal()
      : outcome = ProbeOutcome.portal,
        latencyMs = null;

  const ProbeResult.failed()
      : outcome = ProbeOutcome.failed,
        latencyMs = null;

  bool get isOk => outcome == ProbeOutcome.ok;
  bool get isPortal => outcome == ProbeOutcome.portal;
  bool get isFailed => outcome == ProbeOutcome.failed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProbeResult &&
          runtimeType == other.runtimeType &&
          outcome == other.outcome &&
          latencyMs == other.latencyMs;

  @override
  int get hashCode => Object.hash(outcome, latencyMs);

  @override
  String toString() =>
      'ProbeResult(outcome: $outcome, latencyMs: $latencyMs)';
}

class ProbeSummary {
  final bool isSuccess;
  final int? latencyMs;
  final NetworkIssue issue;
  final List<ProbeResult> results;

  const ProbeSummary({
    required this.isSuccess,
    required this.latencyMs,
    required this.issue,
    required this.results,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProbeSummary &&
          runtimeType == other.runtimeType &&
          isSuccess == other.isSuccess &&
          latencyMs == other.latencyMs &&
          issue == other.issue;

  @override
  int get hashCode => Object.hash(isSuccess, latencyMs, issue);

  @override
  String toString() =>
      'ProbeSummary(isSuccess: $isSuccess, latencyMs: $latencyMs, issue: $issue, results: $results)';
}

class ReachabilityProbe {
  ReachabilityProbe({
    List<ProbeTarget>? targets,
    HttpClient? httpClient,
    this.timeout = NetworkConfig.probeTimeout,
    this.requiredSuccesses = NetworkConfig.requiredProbeSuccesses,
  })  : targets = List<ProbeTarget>.unmodifiable(targets ?? defaultTargets),
        _client = httpClient ?? _createDefaultClient(timeout);

  final List<ProbeTarget> targets;
  final Duration timeout;
  final int requiredSuccesses;
  final HttpClient _client;
  int _primaryIndex = 0;

  int get primaryIndex => _primaryIndex;

  static List<ProbeTarget> get defaultTargets => [
        ProbeTarget(
          Uri.parse('https://cp.cloudflare.com/generate_204'),
          (statusCode, _) => statusCode == 204,
        ),
        ProbeTarget(
          Uri.parse('https://www.gstatic.com/generate_204'),
          (statusCode, _) => statusCode == 204,
        ),
        ProbeTarget(
          Uri.parse('https://captive.apple.com/hotspot-detect.html'),
          (statusCode, body) => statusCode == 200 && body.contains('Success'),
        ),
      ];

  static HttpClient _createDefaultClient(Duration timeout) =>
      HttpClient()
        ..connectionTimeout = timeout
        ..idleTimeout = const Duration(seconds: 30)
        ..userAgent = 'App-ReachabilityProbe/1.0';

  static const int _maxBodyBytes = 4096;

  Future<ProbeResult> run(ProbeTarget target) async {
    HttpClientRequest? request;
    try {
      final stopwatch = Stopwatch()..start();
      request = await _client.getUrl(target.uri).timeout(timeout)
        ..followRedirects = false
        ..headers.set(HttpHeaders.cacheControlHeader, 'no-cache');

      final response = await request.close().timeout(timeout);
      stopwatch.stop();
      final latencyMs = stopwatch.elapsedMilliseconds;

      final chunks = <int>[];
      await for (final chunk in response.timeout(timeout)) {
        chunks.addAll(chunk);
        if (chunks.length >= _maxBodyBytes) break;
      }
      final bodyBytes = chunks.length > _maxBodyBytes
          ? chunks.sublist(0, _maxBodyBytes)
          : chunks;
      final body = utf8.decode(bodyBytes, allowMalformed: true);

      final statusCode = response.statusCode;
      if (statusCode >= 300 && statusCode < 400) {
        return const ProbeResult.portal();
      }
      if (target.isValid(statusCode, body)) {
        return ProbeResult.ok(latencyMs);
      }
      if (statusCode >= 200 && statusCode < 300) {
        return const ProbeResult.portal();
      }
      return const ProbeResult.failed();
    } on Object catch (_) {
      try {
        request?.abort();
      } on Object catch (_) {}
      return const ProbeResult.failed();
    }
  }

  Future<ProbeResult> runPrimary() async {
    if (targets.isEmpty) return const ProbeResult.failed();
    return run(targets[_primaryIndex.clamp(0, targets.length - 1)]);
  }

  Future<ProbeSummary> runAll() async {
    if (targets.isEmpty) {
      return const ProbeSummary(
        isSuccess: false,
        latencyMs: null,
        issue: NetworkIssue.noInternet,
        results: [],
      );
    }

    final results = await Future.wait(targets.map(run));
    final okEntries = <({int index, int latency})>[];

    for (var i = 0; i < results.length; i++) {
      final r = results[i];
      if (r.isOk && r.latencyMs != null) {
        okEntries.add((index: i, latency: r.latencyMs!));
      }
    }

    final needed = math.min(requiredSuccesses, targets.length);

    if (okEntries.length >= needed) {
      okEntries.sort((a, b) => a.latency.compareTo(b.latency));
      _primaryIndex = okEntries.first.index;

      final okLatencies = okEntries.map((e) => e.latency).toList()..sort();
      final medianLatency = okLatencies[okLatencies.length ~/ 2];

      return ProbeSummary(
        isSuccess: true,
        latencyMs: medianLatency,
        issue: NetworkIssue.none,
        results: results,
      );
    } else {
      final hasPortal = results.any((r) => r.isPortal);
      return ProbeSummary(
        isSuccess: false,
        latencyMs: null,
        issue: hasPortal ? NetworkIssue.captivePortal : NetworkIssue.noInternet,
        results: results,
      );
    }
  }

  void close() {
    _client.close(force: true);
  }
}

class InternetConnectionService
    with WidgetsBindingObserver
    implements IInternetConnectionService {
  InternetConnectionService({
    ReachabilityProbe? probe,
    Connectivity? connectivity,
    Future<int?> Function()? pingChecker,
    DateTime Function()? nowProvider,
    bool registerObserver = true,
  })  : _probe = probe ?? ReachabilityProbe(),
        _connectivity = connectivity ?? Connectivity(),
        _pingChecker = pingChecker,
        _now = nowProvider ?? DateTime.now,
        _registerObserver = registerObserver {
    if (_registerObserver) {
      try {
        WidgetsBinding.instance.addObserver(this);
      } on Object catch (_) {}
    }

    _listenToConnectivity();
    unawaited(checkNow());
  }

  final ReachabilityProbe _probe;
  final Connectivity _connectivity;
  final Future<int?> Function()? _pingChecker;
  final DateTime Function() _now;
  final bool _registerObserver;

  final StreamController<NetworkState> _stateController =
      StreamController<NetworkState>.broadcast();
  final StreamController<void> _restoredController =
      StreamController<void>.broadcast();

  NetworkState _currentState = NetworkState.checking;
  NetworkIssue _lastIssue = NetworkIssue.none;
  NetworkIssue _lastEmittedIssue = NetworkIssue.none;

  int _slowPingHits = 0;
  int _slowHttpHits = 0;
  DateTime? _lastSlowHttpAt;
  Timer? _slowHttpDecayTimer;

  int _consecutiveFailures = 0;
  int _recoveryAttempt = 0;
  bool _forceConsensus = true;

  Future<void>? _inFlight;
  bool _recheck = false;
  int _epoch = 0;

  DateTime? _lastFailureCheckAt;
  Timer? _failureDebounceTimer;

  bool _isBackground = false;
  bool _isDisposed = false;
  Timer? _timer;
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  @override
  Stream<NetworkState> get stateStream => _stateController.stream;

  @override
  Stream<void> get connectivityRestoredStream => _restoredController.stream;

  @override
  NetworkState get currentState => _currentState;

  @override
  NetworkIssue get lastIssue => _lastIssue;

  @override
  bool get isStable => _currentState == NetworkState.connected;

  @override
  Future<bool> hasConnection() async {
    if (_currentState == NetworkState.checking) {
      await checkNow();
    }
    return _currentState == NetworkState.connected ||
        _currentState == NetworkState.unstable;
  }

  @override
  Future<void> checkNow() =>
      _inFlight ??= _runChecks().whenComplete(() => _inFlight = null);

  Future<void> _runChecks() async {
    var completedEpoch = false;
    try {
      do {
        _recheck = false;
        completedEpoch = await _performCheck();
      } while (_recheck && !_isDisposed);
    } finally {
      if (completedEpoch && !_isDisposed) {
        _scheduleNext();
      }
    }
  }

  void _listenToConnectivity() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((results) {
      if (_isDisposed) return;
      _epoch++;
      _forceConsensus = true;

      final hasNoInterface =
          results.isEmpty || results.contains(ConnectivityResult.none);

      if (hasNoInterface) {
        _recheck = false;
        _lastIssue = NetworkIssue.noInterface;
        _updateState(NetworkState.disconnected);
        _scheduleNext();
      } else {
        _recheck = true;
        if (!_isBackground) {
          unawaited(checkNow());
        }
      }
    });
  }

  Future<bool> _performCheck() async {
    final startEpoch = _epoch;
    try {
      final connResults = await _connectivity.checkConnectivity();
      if (_isDisposed || _epoch != startEpoch) return false;

      final hasNoInterface = connResults.isEmpty ||
          connResults.contains(ConnectivityResult.none);

      if (hasNoInterface) {
        _lastIssue = NetworkIssue.noInterface;
        _slowPingHits = 0;
        _consecutiveFailures = 0;
        _updateState(NetworkState.disconnected);
        return true;
      }

      final useFullCheck = _currentState == NetworkState.checking ||
          _currentState == NetworkState.disconnected ||
          _forceConsensus;

      final ({bool ok, int? latency, NetworkIssue issue}) outcome;
      if (_pingChecker != null) {
        final latency = await _pingChecker();
        if (_isDisposed || _epoch != startEpoch) return false;
        if (latency != null) {
          outcome = (ok: true, latency: latency, issue: NetworkIssue.none);
        } else {
          outcome = (ok: false, latency: null, issue: NetworkIssue.noInternet);
        }
      } else if (!useFullCheck) {
        final primaryResult = await _probe.runPrimary();
        if (_isDisposed || _epoch != startEpoch) return false;
        if (primaryResult.isOk) {
          outcome = (
            ok: true,
            latency: primaryResult.latencyMs,
            issue: NetworkIssue.none,
          );
        } else {
          final fullResult = await _probe.runAll();
          if (_isDisposed || _epoch != startEpoch) return false;
          outcome = (
            ok: fullResult.isSuccess,
            latency: fullResult.latencyMs,
            issue: fullResult.issue,
          );
        }
      } else {
        final fullResult = await _probe.runAll();
        if (_isDisposed || _epoch != startEpoch) return false;
        outcome = (
          ok: fullResult.isSuccess,
          latency: fullResult.latencyMs,
          issue: fullResult.issue,
        );
      }

      if (_isDisposed || _epoch != startEpoch) return false;

      if (!outcome.ok) {
        _lastIssue = outcome.issue;
        _slowPingHits = 0;
        _consecutiveFailures++;

        final wasOnline = _currentState == NetworkState.connected ||
            _currentState == NetworkState.unstable;
        final requiredFailures =
            wasOnline ? NetworkConfig.failuresBeforeDisconnect : 1;

        if (_consecutiveFailures >= requiredFailures) {
          _updateState(NetworkState.disconnected);
        } else if (_currentState == NetworkState.disconnected &&
            _lastIssue != _lastEmittedIssue) {
          _lastEmittedIssue = _lastIssue;
          _stateController.add(_currentState);
        }
        return true;
      }

      _consecutiveFailures = 0;
      _forceConsensus = false;
      _lastIssue = NetworkIssue.none;
      _recoveryAttempt = 0;

      final latency = outcome.latency ?? 0;
      if (latency >= NetworkConfig.slowPingThresholdMs) {
        _slowPingHits++;
      } else {
        _slowPingHits = 0;
      }

      _applyStability();
      return true;
    } on Object catch (_) {
      if (_isDisposed || _epoch != startEpoch) return false;
      _lastIssue = NetworkIssue.noInternet;
      _slowPingHits = 0;
      _consecutiveFailures++;
      final wasOnline = _currentState == NetworkState.connected ||
          _currentState == NetworkState.unstable;
      final requiredFailures =
          wasOnline ? NetworkConfig.failuresBeforeDisconnect : 1;
      if (_consecutiveFailures >= requiredFailures) {
        _updateState(NetworkState.disconnected);
      }
      return true;
    }
  }

  void _applyStability() {
    if (_lastSlowHttpAt != null &&
        _now().difference(_lastSlowHttpAt!) >= NetworkConfig.slowHttpDecay) {
      _slowHttpHits = 0;
      _lastSlowHttpAt = null;
      _slowHttpDecayTimer?.cancel();
      _slowHttpDecayTimer = null;
    }

    if (_slowPingHits >= NetworkConfig.maxSlowHits ||
        _slowHttpHits >= NetworkConfig.maxSlowHits) {
      _updateState(NetworkState.unstable);
    } else {
      _updateState(NetworkState.connected);
    }
  }

  @override
  void reportLatency(int ms) {
    if (_isBackground ||
        _isDisposed ||
        _currentState == NetworkState.disconnected ||
        _currentState == NetworkState.checking) {
      return;
    }

    if (ms >= NetworkConfig.slowDioThresholdMs) {
      _slowHttpHits++;
      _lastSlowHttpAt = _now();
      _slowHttpDecayTimer?.cancel();
      _slowHttpDecayTimer = Timer(NetworkConfig.slowHttpDecay, () {
        if (!_isDisposed) {
          _slowHttpHits = 0;
          _lastSlowHttpAt = null;
          _applyStability();
        }
      });
    } else {
      _slowHttpHits = 0;
      _lastSlowHttpAt = null;
      _slowHttpDecayTimer?.cancel();
      _slowHttpDecayTimer = null;
    }

    _applyStability();
  }

  @override
  void reportRequestFailure() {
    if (_isBackground ||
        _isDisposed ||
        _currentState == NetworkState.disconnected) {
      return;
    }

    final now = _now();
    if (_lastFailureCheckAt != null &&
        now.difference(_lastFailureCheckAt!) <
            NetworkConfig.failureCheckDebounce) {
      return;
    }

    _lastFailureCheckAt = now;
    _forceConsensus = true;
    unawaited(checkNow());
  }

  void _scheduleNext() {
    _timer?.cancel();
    _timer = null;

    if (_isBackground || _isDisposed) return;

    final Duration delay;
    if (_currentState == NetworkState.disconnected) {
      final backoffIndex = math.min(
        _recoveryAttempt,
        NetworkConfig.recoveryBackoffSeconds.length - 1,
      );
      delay = Duration(
        seconds: NetworkConfig.recoveryBackoffSeconds[backoffIndex],
      );
      _recoveryAttempt++;
    } else if (_consecutiveFailures > 0) {
      delay = const Duration(seconds: 1);
    } else {
      delay = const Duration(seconds: NetworkConfig.pingIntervalSeconds);
    }

    _timer = Timer(delay, () {
      if (!_isBackground && !_isDisposed) {
        unawaited(checkNow());
      }
    });
  }

  void _updateState(NetworkState nextState) {
    if (_isDisposed) return;

    if (_currentState == nextState) {
      if (nextState == NetworkState.disconnected &&
          _lastIssue != _lastEmittedIssue) {
        _lastEmittedIssue = _lastIssue;
        _stateController.add(nextState);
      }
      return;
    }

    final previousState = _currentState;
    _currentState = nextState;
    _lastEmittedIssue = _lastIssue;

    if (nextState == NetworkState.disconnected) {
      _slowPingHits = 0;
      _slowHttpHits = 0;
      _lastSlowHttpAt = null;
      _slowHttpDecayTimer?.cancel();
      _slowHttpDecayTimer = null;
      _recoveryAttempt = 0;
      _consecutiveFailures = 0;
      _forceConsensus = true;
    }

    _stateController.add(nextState);

    if (previousState == NetworkState.disconnected &&
        nextState == NetworkState.connected) {
      _restoredController.add(null);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.hidden) {
      _isBackground = true;
      _timer?.cancel();
      _timer = null;
    } else if (state == AppLifecycleState.resumed) {
      _isBackground = false;
      _forceConsensus = true;
      _recheck = true;
      unawaited(checkNow());
    }
  }

  @override
  void dispose() {
    if (_isDisposed) return;
    _isDisposed = true;

    if (_registerObserver) {
      try {
        WidgetsBinding.instance.removeObserver(this);
      } on Object catch (_) {}
    }

    _timer?.cancel();
    _timer = null;
    _slowHttpDecayTimer?.cancel();
    _slowHttpDecayTimer = null;
    _failureDebounceTimer?.cancel();
    _failureDebounceTimer = null;

    unawaited(_connectivitySubscription?.cancel());
    _connectivitySubscription = null;

    _probe.close();
    unawaited(_stateController.close());
    unawaited(_restoredController.close());
  }
}
