import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';

enum NetworkState { checking, connected, unstable, disconnected }

enum NetworkIssue {
  none,
  noInterface, // OS reports no WiFi/mobile interface
  noInternet, // interface up but real internet unreachable (no balance, blocked, dead uplink)
  captivePortal, // something answered but not the real endpoint (redirect / 2xx with unexpected body)
}

abstract interface class IInternetConnectionService {
  Stream<NetworkState> get stateStream;
  Stream<void> get connectivityRestoredStream; // fires ONLY on disconnected -> connected
  Future<bool> hasConnection(); // true for connected or unstable
  Future<void> checkNow(); // forces an active check; concurrent callers share one in-flight check
  NetworkState get currentState;
  NetworkIssue get lastIssue;
  bool get isStable; // currentState == connected
  void reportLatency(int ms); // from the HTTP interceptor
  void reportRequestFailure(); // from the HTTP interceptor on real network failures
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

/// Target endpoint used by [ReachabilityProbe] to check internet reachability.
/// Custom targets (e.g. backend health checks) can be injected via [ReachabilityProbe] constructor.
class ProbeTarget {
  final Uri uri;
  final bool Function(int statusCode, String body) isValid;

  const ProbeTarget(this.uri, this.isValid);
}

sealed class ProbeResult {
  const ProbeResult();
}

class ProbeOk extends ProbeResult {
  final int latencyMs;
  const ProbeOk(this.latencyMs);
}

class ProbePortal extends ProbeResult {
  const ProbePortal();
}

class ProbeFailed extends ProbeResult {
  const ProbeFailed();
}

class FullProbeResult {
  final bool isSuccess;
  final int? latencyMs;
  final NetworkIssue issue;

  const FullProbeResult({
    required this.isSuccess,
    required this.latencyMs,
    required this.issue,
  });
}

/// Probes HTTPS endpoints to verify actual internet reachability and captive portal detection.
class ReachabilityProbe {
  ReachabilityProbe({
    List<ProbeTarget>? targets,
    HttpClient? httpClient,
    Duration? timeout,
  })  : targets = targets ?? defaultTargets,
        timeout = timeout ?? NetworkConfig.probeTimeout,
        _client = httpClient ?? _defaultHttpClient();

  final List<ProbeTarget> targets;
  final Duration timeout;
  final HttpClient _client;
  int _primaryIndex = 0;

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

  static HttpClient _defaultHttpClient() => HttpClient()
    ..connectionTimeout = NetworkConfig.probeTimeout
    ..idleTimeout = const Duration(seconds: 30)
    ..userAgent = 'Wassaly-Probe/1.0';

  Future<ProbeResult> run(ProbeTarget target) async {
    HttpClientRequest? request;
    try {
      final sw = Stopwatch()..start();
      request = await _client.openUrl('GET', target.uri).timeout(timeout)
        ..followRedirects = false;
      request.headers.set(HttpHeaders.cacheControlHeader, 'no-cache');

      final response = await request.close().timeout(timeout);
      sw.stop();
      final latency = sw.elapsedMilliseconds;

      final chunks = <int>[];
      await for (final chunk in response.timeout(timeout)) {
        chunks.addAll(chunk);
        if (chunks.length >= 4096) break;
      }
      final bodyBytes =
          chunks.length > 4096 ? chunks.sublist(0, 4096) : chunks;
      final body = utf8.decode(bodyBytes, allowMalformed: true);

      if (response.statusCode >= 300 && response.statusCode < 400) {
        return const ProbePortal();
      }
      if (target.isValid(response.statusCode, body)) {
        return ProbeOk(latency);
      }
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return const ProbePortal();
      }
      return const ProbeFailed();
    } on Object catch (_) {
      try {
        request?.abort();
      } on Object catch (_) {}
      return const ProbeFailed();
    }
  }

  Future<ProbeResult> runPrimary() async {
    if (targets.isEmpty) return const ProbeFailed();
    if (_primaryIndex >= targets.length) _primaryIndex = 0;
    return run(targets[_primaryIndex]);
  }

  Future<FullProbeResult> runAll() async {
    if (targets.isEmpty) {
      return const FullProbeResult(
        isSuccess: false,
        latencyMs: null,
        issue: NetworkIssue.noInternet,
      );
    }

    final results = await Future.wait(targets.map(run));
    final okResults = <({int index, int latency})>[];
    var hasPortal = false;

    for (var i = 0; i < results.length; i++) {
      final r = results[i];
      if (r is ProbeOk) {
        okResults.add((index: i, latency: r.latencyMs));
      } else if (r is ProbePortal) {
        hasPortal = true;
      }
    }

    final requiredSuccesses =
        math.min(NetworkConfig.requiredProbeSuccesses, targets.length);

    if (okResults.length >= requiredSuccesses) {
      okResults.sort((a, b) => a.latency.compareTo(b.latency));
      _primaryIndex = okResults.first.index;

      final latencies = okResults.map((e) => e.latency).toList()..sort();
      final median = latencies[latencies.length ~/ 2];

      return FullProbeResult(
        isSuccess: true,
        latencyMs: median,
        issue: NetworkIssue.none,
      );
    } else {
      return FullProbeResult(
        isSuccess: false,
        latencyMs: null,
        issue: hasPortal ? NetworkIssue.captivePortal : NetworkIssue.noInternet,
      );
    }
  }

  void close() {
    _client.close(force: true);
  }
}

/// Centralized service and Single Source of Truth for real internet connectivity.
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
      } on Object catch (_) {
        // Observer registration may fail when run without Flutter test binding
      }
    }

    _connectivitySub =
        _connectivity.onConnectivityChanged.listen(_onConnectivityChanged);

    unawaited(checkNow());
  }

  final ReachabilityProbe _probe;
  final Connectivity _connectivity;
  final Future<int?> Function()? _pingChecker;
  final DateTime Function() _now;
  final bool _registerObserver;

  final StreamController<NetworkState> _stateController =
      StreamController<NetworkState>.broadcast();
  final StreamController<void> _connectivityRestoredController =
      StreamController<void>.broadcast();

  StreamSubscription<List<ConnectivityResult>>? _connectivitySub;
  Timer? _timer;

  NetworkState _currentState = NetworkState.checking;
  NetworkIssue _lastIssue = NetworkIssue.none;
  bool _isBackground = false;
  bool _isDisposed = false;
  bool _forceConsensus = true;
  int _epoch = 0;
  bool _recheck = false;
  Future<void>? _inFlight;

  int _consecutiveFailures = 0;
  int _recoveryAttempt = 0;
  int _slowPingHits = 0;
  int _slowHttpHits = 0;
  DateTime? _lastSlowHttpTime;
  DateTime? _lastFailureReportTime;

  // --- Public API ---

  @override
  Stream<NetworkState> get stateStream => _stateController.stream;

  @override
  Stream<void> get connectivityRestoredStream =>
      _connectivityRestoredController.stream;

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
      _lastSlowHttpTime = _now();
    } else {
      _slowHttpHits = 0;
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
    if (_lastFailureReportTime != null &&
        now.difference(_lastFailureReportTime!) <
            NetworkConfig.failureCheckDebounce) {
      return;
    }

    _lastFailureReportTime = now;
    _forceConsensus = true;
    unawaited(checkNow());
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
    unawaited(_connectivitySub?.cancel());
    _probe.close();
    unawaited(_stateController.close());
    unawaited(_connectivityRestoredController.close());
  }

  // --- Lifecycle Observer ---

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    assert(() {
      debugPrint('[Network] Lifecycle State → $state');
      return true;
    }());

    if (state == AppLifecycleState.paused || state == AppLifecycleState.hidden) {
      _isBackground = true;
      _timer?.cancel();
      _timer = null;
    } else if (state == AppLifecycleState.resumed) {
      _isBackground = false;
      _forceConsensus = true;
      unawaited(checkNow());
    }
  }

  // --- Internals ---

  void _onConnectivityChanged(List<ConnectivityResult> results) {
    _epoch++;
    _recheck = true;
    _forceConsensus = true;

    final hasNoInterface =
        results.isEmpty || results.contains(ConnectivityResult.none);

    if (hasNoInterface) {
      _lastIssue = NetworkIssue.noInterface;
      _updateState(NetworkState.disconnected);
      _scheduleNext();
    } else if (!_isBackground) {
      unawaited(checkNow());
    }
  }

  Future<void> _runChecks() async {
    do {
      _recheck = false;
      await _performCheck();
    } while (_recheck && !_isDisposed);
  }

  Future<void> _performCheck() async {
    final currentEpoch = _epoch;
    try {
      // 1. Connectivity check
      final connResults = await _connectivity.checkConnectivity();
      if (_epoch != currentEpoch || _isDisposed) return;

      final hasNoInterface = connResults.isEmpty ||
          connResults.contains(ConnectivityResult.none);

      if (hasNoInterface) {
        _lastIssue = NetworkIssue.noInterface;
        _updateState(NetworkState.disconnected);
        return;
      }

      // 2. Reachability check
      if (_pingChecker != null) {
        final latency = await _pingChecker();
        if (_epoch != currentEpoch || _isDisposed) return;
        if (latency != null) {
          _handleSuccess(latency);
        } else {
          _handleFailure(NetworkIssue.noInternet);
        }
        return;
      }

      final needsFull = _currentState == NetworkState.checking ||
          _currentState == NetworkState.disconnected ||
          _forceConsensus;

      if (needsFull) {
        final fullResult = await _probe.runAll();
        if (_epoch != currentEpoch || _isDisposed) return;
        if (fullResult.isSuccess) {
          _handleSuccess(fullResult.latencyMs!);
        } else {
          _handleFailure(fullResult.issue);
        }
      } else {
        final primaryResult = await _probe.runPrimary();
        if (_epoch != currentEpoch || _isDisposed) return;
        if (primaryResult is ProbeOk) {
          _handleSuccess(primaryResult.latencyMs);
        } else {
          // Never declare offline from a single endpoint failure
          final fullResult = await _probe.runAll();
          if (_epoch != currentEpoch || _isDisposed) return;
          if (fullResult.isSuccess) {
            _handleSuccess(fullResult.latencyMs!);
          } else {
            _handleFailure(fullResult.issue);
          }
        }
      }
    } finally {
      if (_epoch == currentEpoch && !_isDisposed) {
        _scheduleNext();
      }
    }
  }

  void _handleSuccess(int latency) {
    _consecutiveFailures = 0;
    _forceConsensus = false;
    _lastIssue = NetworkIssue.none;
    _recoveryAttempt = 0;

    if (latency >= NetworkConfig.slowPingThresholdMs) {
      _slowPingHits++;
    } else {
      _slowPingHits = 0;
    }

    _applyStability();
  }

  void _handleFailure(NetworkIssue issue) {
    final previousIssue = _lastIssue;
    _lastIssue = issue;
    _slowPingHits = 0;
    _consecutiveFailures++;

    final wasOnline = _currentState == NetworkState.connected ||
        _currentState == NetworkState.unstable;
    final threshold = wasOnline ? NetworkConfig.failuresBeforeDisconnect : 1;

    if (_consecutiveFailures >= threshold) {
      _updateState(NetworkState.disconnected);
    } else if (_currentState == NetworkState.disconnected &&
        previousIssue != issue) {
      _stateController.add(_currentState);
    }
  }

  void _applyStability() {
    if (_lastSlowHttpTime != null &&
        _now().difference(_lastSlowHttpTime!) >=
            NetworkConfig.slowHttpDecay) {
      _slowHttpHits = 0;
      _lastSlowHttpTime = null;
    }

    if (_slowPingHits >= NetworkConfig.maxSlowHits ||
        _slowHttpHits >= NetworkConfig.maxSlowHits) {
      _updateState(NetworkState.unstable);
    } else {
      _updateState(NetworkState.connected);
    }
  }

  void _updateState(NetworkState next) {
    if (_isDisposed || _currentState == next) return;

    final previous = _currentState;
    _currentState = next;

    assert(() {
      debugPrint('[Network] State → $next');
      return true;
    }());

    if (next == NetworkState.disconnected) {
      _slowPingHits = 0;
      _slowHttpHits = 0;
      _lastSlowHttpTime = null;
      _recoveryAttempt = 0;
      _forceConsensus = true;
    }

    _stateController.add(next);

    if (previous == NetworkState.disconnected &&
        next == NetworkState.connected) {
      _connectivityRestoredController.add(null);
    }
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

    _timer = Timer(delay, () => unawaited(checkNow()));
  }
}
