
# Task: Implement Enterprise-Grade Real Internet Reachability & Network Stability Architecture in Flutter

You are an expert Senior Flutter Architect. Implement a complete, production-ready internet reachability, stability monitoring, UI banner, Dio integration, and auto-recovery system across this Flutter project, following the exact specifications and architecture below.

---

## 1. Architectural Overview & Core Goals

Standard `connectivity_plus` only checks if a hardware interface (Wi-Fi or Mobile Data) is turned on—it does NOT verify actual internet access (e.g., SIM card with zero data balance, dead router uplink, or captive portal login page).

You must build a complete system consisting of:
1. **`InternetConnectionService` & `ReachabilityProbe`** (`lib/core/service/internet_connection_service.dart`): Combines `connectivity_plus` hardware events with strict multi-endpoint HTTPS reachability probes (`dart:io` `HttpClient`), latency stability tracking, exponential backoff offline recovery, epoch concurrency guards, and app lifecycle awareness.
2. **`StabilityInterceptor`** (`lib/core/service/stability_interceptor.dart`): A Dio interceptor that measures real HTTP round-trip latency and reports network timeouts/connection errors back to `IInternetConnectionService`.
3. **`InternetConnectionWrapper` & `_NetworkBanner`** (`lib/core/widgets/internet_connection_wrapper.dart`): A root-level UI wrapper around `MaterialApp.builder` that displays an animated status banner for `disconnected` (with issue-specific messages: `captivePortal`, `noInternet`, `noInterface`), `unstable`, and `restored` states without causing double top `SafeArea` padding.
4. **Dependency Injection (`get_it`) & Dio Wiring**: Registering singletons in `service_locator.dart` and attaching `StabilityInterceptor` to the Dio client.
5. **Feature-Level Auto-Recovery (`connectivityRestoredStream`)**: Automatically re-fetching data in feature pages/screens when transitioning strictly from `disconnected` to `connected`.

---

## 2. Dependencies & Platform Permissions

1. Ensure `connectivity_plus` and `dio` and `get_it` are in `pubspec.yaml` (Do NOT use `internet_connection_checker_plus`; we use our own `dart:io` `HttpClient` probe).
2. Ensure Android `AndroidManifest.xml` has:
   ```xml
   <uses-permission android:name="android.permission.INTERNET"/>
   <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
   ```

---

## 3. Detailed Component Specifications

### 3.1 `lib/core/service/internet_connection_service.dart`

Implement the following types and classes in `lib/core/service/internet_connection_service.dart`:

#### A. Enums & Interface

- `enum NetworkState { checking, connected, unstable, disconnected }`
- `enum NetworkIssue { none, noInterface, noInternet, captivePortal }`
  - `none`: Connection is healthy and verified.
  - `noInterface`: OS reports no active network interface (Wi-Fi / Mobile Data off).
  - `noInternet`: Interface is active, but real internet endpoints cannot be reached (e.g., exhausted mobile data balance, dead router uplink, blocked traffic).
  - `captivePortal`: An intermediate server intercepted the probe (3xx redirect or 2xx with unexpected body, typical of captive portals or carrier billing pages).
- `abstract interface class IInternetConnectionService`:
  - `Stream<NetworkState> get stateStream;`
  - `Stream<void> get connectivityRestoredStream;` (Fires strictly when transitioning from `disconnected` -> `connected`)
  - `Future<bool> hasConnection();`
  - `Future<void> checkNow();`
  - `NetworkState get currentState;`
  - `NetworkIssue get lastIssue;`
  - `bool get isStable;` (`currentState == NetworkState.connected`)
  - `void reportLatency(int ms);`
  - `void reportRequestFailure();`
  - `void dispose();`

#### B. `NetworkConfig` Constants

```dart
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
```

#### C. Probe Models & `ReachabilityProbe`

- `class ProbeTarget`:
  - `const ProbeTarget(this.uri, this.isValid);`
  - `final Uri uri;`
  - `final bool Function(int statusCode, String body) isValid;`
- `enum ProbeOutcome { ok, portal, failed }`
- `class ProbeResult`:
  - Named constructors: `const ProbeResult.ok(int latencyMs)`, `const ProbeResult.portal()`, `const ProbeResult.failed()`.
  - Getters: `isOk`, `isPortal`, `isFailed`, `final int? latencyMs`.
- `class ProbeSummary`:
  - `final bool isSuccess; final int? latencyMs; final NetworkIssue issue; final List<ProbeResult> results;`
- `class ReachabilityProbe`:
  - Constructor:

    ```dart
    ReachabilityProbe({
      List<ProbeTarget>? targets,
      HttpClient? httpClient,
      this.timeout = NetworkConfig.probeTimeout,
      this.requiredSuccesses = NetworkConfig.requiredProbeSuccesses,
    }) : targets = List<ProbeTarget>.unmodifiable(targets ?? defaultTargets),
         _client = httpClient ?? _createDefaultClient(timeout);
    ```

  - Default HTTPS-only targets (`defaultTargets`):
    1. `Uri.parse('https://cp.cloudflare.com/generate_204')` -> `statusCode == 204`
    2. `Uri.parse('https://www.gstatic.com/generate_204')` -> `statusCode == 204`
    3. `Uri.parse('https://captive.apple.com/hotspot-detect.html')` -> `statusCode == 200 && body.contains('Success')`
  - `_createDefaultClient(Duration timeout)`:
    - `HttpClient()..connectionTimeout = timeout..idleTimeout = const Duration(seconds: 30)..userAgent = 'App-ReachabilityProbe/1.0'`
  - Track `int _primaryIndex = 0;` (getter `int get primaryIndex => _primaryIndex;`).
  - `Future<ProbeResult> run(ProbeTarget target)`:
    - Starts `Stopwatch`, sends `GET` with `_client.getUrl(target.uri).timeout(timeout)`, sets `followRedirects = false` and `Cache-Control: no-cache`.
    - Awaits `request.close().timeout(timeout)` and stops stopwatch (`latencyMs` is time to response headers).
    - Reads response stream with `.timeout(timeout)` up to a maximum of `4096` bytes (`_maxBodyBytes`), decodes with `utf8.decode(bytes, allowMalformed: true)`.
    - Validation rules:
      - `statusCode >= 300 && statusCode < 400` -> `ProbeResult.portal()`
      - `target.isValid(statusCode, body)` -> `ProbeResult.ok(latencyMs)`
      - `statusCode >= 200 && statusCode < 300` -> `ProbeResult.portal()`
      - Otherwise -> `ProbeResult.failed()`
    - On any exception: safely call `request?.abort()` inside try/catch and return `ProbeResult.failed()`.
  - `Future<ProbeResult> runPrimary()`:
    - If `targets.isEmpty`, return `ProbeResult.failed()`.
    - Runs `run(targets[_primaryIndex.clamp(0, targets.length - 1)])`.
  - `Future<ProbeSummary> runAll()`:
    - Runs all `targets` in parallel via `Future.wait(targets.map(run))`.
    - Collects all `ok` latencies, finds the fastest target index.
    - `needed = math.min(requiredSuccesses, targets.length)`.
    - If `okLatencies.length >= needed`: updates `_primaryIndex = fastestIndex`, sorts `okLatencies`, computes the **median** latency, and returns `ProbeSummary(isSuccess: true, latencyMs: medianLatency, issue: NetworkIssue.none, results: results)`.
    - Otherwise: checks `hasPortal = results.any((r) => r.isPortal)` and returns `ProbeSummary(isSuccess: false, issue: hasPortal ? NetworkIssue.captivePortal : NetworkIssue.noInternet, results: results)`.
  - `void close()` -> `_client.close(force: true)`.

#### D. `InternetConnectionService` Implementation

- `class InternetConnectionService with WidgetsBindingObserver implements IInternetConnectionService`
- Constructor:

  ```dart
  InternetConnectionService({
    ReachabilityProbe? probe,
    Connectivity? connectivity,
    Future<int?> Function()? pingChecker,
    bool registerObserver = true,
  })
  ```

  - Registers `WidgetsBinding.instance.addObserver(this)` (wrapped in try/catch if `registerObserver` is true).
  - Subscribes to `_listenToConnectivity()`.
  - Immediately triggers `unawaited(checkNow())`.
- State & Concurrency Fields:
  - Broadcast `StreamController<NetworkState> _stateController` and `StreamController<void> _restoredController`.
  - `_currentState = NetworkState.checking`, `_lastIssue = NetworkIssue.none`, `_lastEmittedIssue = NetworkIssue.none`.
  - Separate slow counters: `int _slowPingHits = 0`, `int _slowHttpHits = 0`, `DateTime? _lastSlowHttpAt`, `Timer? _slowHttpDecayTimer`.
  - Failure & Backoff counters: `int _consecutiveFailures = 0`, `int _recoveryAttempt = 0`, `bool _forceConsensus = true`.
  - Concurrency control: `Future<void>? _inFlight`, `bool _recheck = false`, `int _epoch = 0`.
  - Request failure debounce: `DateTime? _lastFailureCheckAt`, `Timer? _failureDebounceTimer`.
  - Lifecycle: `bool _isBackground = false`, `bool _isDisposed = false`, `Timer? _timer`.
- `hasConnection()`:
  - If `_currentState == NetworkState.checking`, awaits `checkNow()` (joining the in-flight Future).
  - Returns `_currentState == NetworkState.connected || _currentState == NetworkState.unstable`.
- `checkNow()` & `_runChecks()`:
  - `Future<void> checkNow() => _inFlight ??= _runChecks().whenComplete(() => _inFlight = null);`
  - `_runChecks()` loops `do { _recheck = false; completedEpoch = await _performCheck(); } while (_recheck && !_isDisposed);` and in `finally`, if `completedEpoch` is true, calls `_scheduleNext()`.
- `_listenToConnectivity()`:
  - On `onConnectivityChanged`: if disposed, return. Increment `_epoch++`, set `_forceConsensus = true`.
  - If `results.isEmpty || results.contains(ConnectivityResult.none)`:
    - `_recheck = false; _lastIssue = NetworkIssue.noInterface; _updateState(NetworkState.disconnected); _scheduleNext();`
  - Else:
    - `_recheck = true; if (!_isBackground) unawaited(checkNow());`
- `_performCheck()`:
  - Captures `final startEpoch = _epoch;`.
  - Calls `_connectivity.checkConnectivity()`. If `_isDisposed || _epoch != startEpoch`, return `false`.
  - If empty or contains `ConnectivityResult.none`:
    - Sets `_lastIssue = NetworkIssue.noInterface`, resets `_slowPingHits = 0`, `_consecutiveFailures = 0`, calls `_updateState(NetworkState.disconnected)`, returns `true`.
  - Determines `useFullCheck = _currentState == NetworkState.checking || _currentState == NetworkState.disconnected || _forceConsensus`.
  - Calls `_evaluateReachability(useFullCheck: useFullCheck, startEpoch: startEpoch)`:
    - If `_pingChecker != null`, uses `_pingChecker()`.
    - Else if `!useFullCheck`, runs `_probe.runPrimary()`. If primary succeeds, returns `ok: true`. If primary fails, falls back to `_probe.runAll()` (never declare offline from a single endpoint failure).
    - When running full check, uses `_probe.runAll()`.
  - After `await _evaluateReachability`, checks `if (_isDisposed || _epoch != startEpoch) return false;`.
  - If `!outcome.ok`:
    - `_lastIssue = outcome.issue; _slowPingHits = 0; _consecutiveFailures++;`
    - `wasOnline = _currentState == NetworkState.connected || _currentState == NetworkState.unstable;`
    - `requiredFailures = wasOnline ? NetworkConfig.failuresBeforeDisconnect : 1;`
    - If `_consecutiveFailures >= requiredFailures`, calls `_updateState(NetworkState.disconnected)`.
    - Returns `true`.
  - If `outcome.ok`:
    - `_consecutiveFailures = 0; _forceConsensus = false; _lastIssue = NetworkIssue.none; _recoveryAttempt = 0;`
    - If `latency >= NetworkConfig.slowPingThresholdMs`, increments `_slowPingHits++`, else `_slowPingHits = 0`.
    - Calls `_applyStability()` and returns `true`.
- `_applyStability()`:
  - Checks if `_lastSlowHttpAt` is older than `NetworkConfig.slowHttpDecay` (30s); if so, resets `_slowHttpHits = 0`, `_lastSlowHttpAt = null`, cancels `_slowHttpDecayTimer`.
  - If `_slowPingHits >= NetworkConfig.maxSlowHits || _slowHttpHits >= NetworkConfig.maxSlowHits` -> `_updateState(NetworkState.unstable)` else `_updateState(NetworkState.connected)`.
- `reportLatency(int ms)`:
  - Ignores if `_isBackground || _isDisposed` or state is `disconnected` or `checking`.
  - If `ms >= NetworkConfig.slowDioThresholdMs`: increments `_slowHttpHits++`, sets `_lastSlowHttpAt = DateTime.now()`, starts/resets `_slowHttpDecayTimer` for 30s.
  - Else: resets `_slowHttpHits = 0`, `_lastSlowHttpAt = null`, cancels decay timer.
  - Calls `_applyStability()`.
- `reportRequestFailure()`:
  - Ignores if `_isBackground || _isDisposed || _currentState == NetworkState.disconnected`.
  - Debounces using `_lastFailureCheckAt` and `NetworkConfig.failureCheckDebounce` (3s).
  - Sets `_forceConsensus = true` and calls `unawaited(checkNow())`.
- `_scheduleNext()`:
  - Cancels existing `_timer`. If `_isBackground || _isDisposed`, return.
  - Calculates `delay`:
    - If `_currentState == NetworkState.disconnected`: picks `NetworkConfig.recoveryBackoffSeconds[math.min(_recoveryAttempt, backoff.length - 1)]`, increments `_recoveryAttempt++`. (This guarantees active polling while offline so data balance top-ups or router recoveries are detected without OS events!).
    - Else if `_consecutiveFailures > 0`: `const Duration(seconds: 1)`.
    - Else: `const Duration(seconds: NetworkConfig.pingIntervalSeconds)` (5s).
  - Starts `_timer = Timer(delay, () { if (!_isBackground && !_isDisposed) unawaited(checkNow()); });`.
- `_updateState(NetworkState nextState)`:
  - If disposed or closed, return.
  - If `_currentState == nextState`:
    - Special case: if `nextState == NetworkState.disconnected && _lastIssue != _lastEmittedIssue`, update `_lastEmittedIssue = _lastIssue` and re-emit `nextState` on `_stateController` so UI banners update their issue message immediately!
    - Return.
  - Saves `previousState = _currentState`, updates `_currentState = nextState`, `_lastEmittedIssue = _lastIssue`.
  - If `nextState == NetworkState.disconnected`: resets `_slowPingHits = 0`, `_slowHttpHits = 0`, `_lastSlowHttpAt = null`, cancels `_slowHttpDecayTimer`, `_recoveryAttempt = 0`, `_consecutiveFailures = 0`, `_forceConsensus = true`.
  - Emits `nextState` on `_stateController`.
  - If `previousState == NetworkState.disconnected && nextState == NetworkState.connected`, emits `null` on `_restoredController`.
- `didChangeAppLifecycleState(AppLifecycleState state)`:
  - `paused` / `hidden`: `_isBackground = true; _cancelTimer();`
  - `resumed`: `_isBackground = false; _forceConsensus = true; _recheck = true; unawaited(checkNow());`
  - `inactive` / `detached`: do nothing (do NOT pause on `inactive` like notification shade or permission dialogs).
- `dispose()`:
  - Idempotent (`if (_isDisposed) return; _isDisposed = true;`).
  - Removes observer, cancels all timers (`_timer`, `_slowHttpDecayTimer`, `_failureDebounceTimer`), cancels `_connectivitySubscription`, calls `_probe.close()`, closes `_stateController` and `_restoredController`.

---

### 3.2 `lib/core/service/stability_interceptor.dart`

Create the Dio `StabilityInterceptor`:

- Constructor takes `final IInternetConnectionService _service;`.
- `static const String skipKey = 'skipStability';`
- `static const String _startTimeKey = 'stability_startTime';`
- `onRequest`: if `options.extra[skipKey] != true`, records `options.extra[_startTimeKey] = DateTime.now().millisecondsSinceEpoch;`. Calls `handler.next(options)`.
- `onResponse`: computes elapsed ms from `_startTimeKey` and calls `_service.reportLatency(latency)`. Calls `handler.next(response)`.
- `onError`: if not skipped, switches on `err.type`:
  - `connectionTimeout`, `sendTimeout`, `receiveTimeout`: reports latency (if available) AND calls `_service.reportRequestFailure()`.
  - `connectionError`: calls `_service.reportRequestFailure()` ONLY (do not report fast failure as fast latency).
  - `badResponse`: reports latency (4xx/5xx still completed a network round-trip).
  - `cancel`, `badCertificate`, `unknown`: reports nothing.
  - Always calls `handler.next(err)`.

---

### 3.3 `lib/core/widgets/internet_connection_wrapper.dart`

Create `InternetConnectionWrapper` and `_NetworkBanner`:

- `InternetConnectionWrapper` is a `StatefulWidget` taking `required Widget child` and optional `IInternetConnectionService? connectionService`.
- In `initState()`:
  - Resolves `_service = widget.connectionService ?? getIt<InternetConnectionService>()`.
  - Initializes `_state = _service.currentState`.
  - Listens to `_service.stateStream`:
    - Calls `setState` on every emission.
    - When transitioning `previousState == NetworkState.disconnected && newState == NetworkState.connected`: sets `_showRestored = true`, starts a `1800ms` timer (`_hideTimer`) that sets `_showRestored = false`.
    - When `newState == NetworkState.disconnected || newState == NetworkState.unstable`: sets `_showRestored = false` and cancels `_hideTimer`.
- Visibility getter `_shouldShowBanner`:
  - Returns `true` if `_showRestored` is true, or `_state == NetworkState.disconnected`, or `_state == NetworkState.unstable`.
  - Returns `false` on cold start (`checking -> connected`).
- `build(BuildContext context)`:

  ```dart
  final showBanner = _shouldShowBanner;
  return Column(
    children: [
      AnimatedSize(
        duration: const Duration(milliseconds: 300), // or context.durations.normal
        curve: Curves.easeInOut,
        child: showBanner
            ? _NetworkBanner(
                state: _state,
                issue: _service.lastIssue,
                isRestored: _showRestored,
                onTap: () => unawaited(_service.checkNow()),
              )
            : const SizedBox.shrink(),
      ),
      Expanded(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: showBanner,
          child: widget.child,
        ),
      ),
    ],
  );
  ```

  *(Note: Always keep `MediaQuery.removePadding` in the tree and toggle `removeTop: showBanner` so `widget.child` never loses its state or recreates its element subtree when the banner appears/disappears, while preventing double top status-bar padding).*
- `_NetworkBanner`:
  - Displays a `Material` with `InkWell(onTap: onTap)` and `SafeArea(bottom: false)`.
  - Visual states & localized messages:
    1. `isRestored == true`:
       - Color: Success Green
       - Icon: `Icons.check_circle_outline_rounded`
       - Message (`internet_restored_banner`):
         - AR: `'تم استعادة الاتصال بالإنترنت'`
         - EN: `'Internet connection restored'`
    2. `state == NetworkState.unstable`:
       - Color: Warning Orange/Amber
       - Icon: `Icons.wifi_protected_setup_rounded`
       - Message (`internet_unstable_banner`):
         - AR: `'اتصال الإنترنت ضعيف — قد يتأخر التحميل'`
         - EN: `'Unstable internet connection — loading may be slow'`
    3. `state == NetworkState.disconnected` (Switch on `issue`):
       - `NetworkIssue.captivePortal`:
         - Color: Warning Orange/Amber
         - Icon: `Icons.wifi_lock_rounded`
         - Message (`internet_captive_portal_banner`):
           - AR: `'الشبكة محتاجة تسجيل دخول أو الباقة منتهية — اضغط للفحص'`
           - EN: `'Network needs sign-in or has no data balance — tap to check'`
       - `NetworkIssue.noInternet`:
         - Color: Warning Orange/Amber
         - Icon: `Icons.wifi_find_rounded`
         - Message (`internet_no_access_banner`):
           - AR: `'متصل بالشبكة لكن بدون إنترنت — تأكد من رصيد الباقة'`
           - EN: `'Connected to the network but no internet — check your data balance'`
       - `NetworkIssue.noInterface` / `NetworkIssue.none`:
         - Color: Error Red
         - Icon: `Icons.wifi_off_rounded`
         - Message: `'${no_internet_title} — ${try_again_text}'` (e.g., AR: `'لا يوجد اتصال بالإنترنت — حاول مرة أخرى'` / EN: `'No Internet Connection — Try Again'`)

---

## 4. Application-Wide Wiring & Usage Patterns

### 4.1 Dependency Injection (`lib/core/di/service_locator.dart`)

Register the services as lazy singletons at the top of `setupServiceLocator()`:

```dart
getIt
  ..registerLazySingleton<InternetConnectionService>(
    InternetConnectionService.new,
  )
  ..registerLazySingleton<IInternetConnectionService>(
    getIt.get<InternetConnectionService>,
  )
  ..registerLazySingleton<StabilityInterceptor>(
    () => StabilityInterceptor(getIt<InternetConnectionService>()),
  );
```

### 4.2 Dio Client Integration (`DioHelper` / Network Client)

When initializing `Dio`:

```dart
if (getIt.isRegistered<StabilityInterceptor>()) {
  client.interceptors.add(getIt<StabilityInterceptor>());
}
```

Also provide a helper method if Dio is initialized before DI or re-attached:

```dart
static void attachStabilityInterceptor(StabilityInterceptor interceptor) {
  if (_dio != null &&
      _dio!.interceptors.every((i) => i is! StabilityInterceptor)) {
    _dio!.interceptors.insert(0, interceptor);
  }
}
```

### 4.3 Global UI Wrapping (`MaterialApp.builder`)

In the root `MaterialApp` (e.g., `app_content.dart` or `main.dart`), wrap the `child` inside `MaterialApp.builder` with `InternetConnectionWrapper`:

```dart
MaterialApp(
  builder: (context, child) {
    return InternetConnectionWrapper(child: child!);
  },
  // ...
)
```

### 4.4 Feature-Level Auto-Refresh on Connectivity Restored (`Pages` / `Views`)

In stateful screens/pages that fetch initial remote data (e.g., `HomeView`, `CategoriesView`, `CartPage`, `OrdersView`, `ProductDetailsPage`, `FavoritesView`, `SearchView`, `ProfilePage`, etc.), subscribe to `connectivityRestoredStream` so the screen automatically reloads its Cubit/Bloc data as soon as real internet returns:

```dart
StreamSubscription<void>? _networkRestoreSubscription;

@override
void initState() {
  super.initState();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (mounted) _initData();
  });
  _networkRestoreSubscription = getIt<InternetConnectionService>()
      .connectivityRestoredStream
      .listen((_) {
        if (mounted) {
          _initData();
        }
      });
}

@override
void dispose() {
  unawaited(_networkRestoreSubscription?.cancel());
  super.dispose();
}
```

---

## 5. Unit & Widget Tests Required

Write comprehensive tests covering:

1. **`ReachabilityProbe` Tests**:
   - `204` status -> `ProbeResult.ok(latency)`
   - `302` redirect -> `ProbeResult.portal()`
   - `200` with unexpected body -> `ProbeResult.portal()`
   - `200` with `'Success'` on Apple captive endpoint -> `ProbeResult.ok(latency)`
   - `500` or socket timeout -> `ProbeResult.failed()`
   - `runAll()` consensus: succeeds when at least 2 of 3 targets succeed, returns median latency, updates `primaryIndex` to the fastest responder, and classifies `captivePortal` vs `noInternet` on failure.
2. **`InternetConnectionService` Tests** (`fakeAsync` + controllable fake `Connectivity` & `ReachabilityProbe`):
   - Hardware interface `none` -> immediate `disconnected` with `lastIssue == NetworkIssue.noInterface`.
   - Interface up + all probes fail -> `disconnected` with `lastIssue == NetworkIssue.noInternet`.
   - Interface up + probe returns portal -> `disconnected` with `lastIssue == NetworkIssue.captivePortal`.
   - Hysteresis while online: 1st failed check keeps state `connected` and schedules a 1s retry; 2nd consecutive failure transitions to `disconnected`.
   - Active offline recovery via exponential backoff (`[2, 4, 6, 10, 15]` seconds): transitions to `connected` and fires `connectivityRestoredStream` once when probes succeed on a later timer tick without any OS connectivity event.
   - Separate `_slowPingHits` and `_slowHttpHits` counters, 30s HTTP decay, and `unstable` state transitions.
   - `hasConnection()` awaits in-flight initial check (`checking`) without false negatives.
   - Epoch guard discards stale in-flight check results when a connectivity change occurs mid-probe.
   - `reportRequestFailure()` triggers a consensus check and debounces within 3s.
   - AppLifecycle: `paused`/`hidden` stop timers; `resumed` forces consensus check; `inactive` does not pause checks.
3. **`StabilityInterceptor` Tests**:
   - Measures latency on `onResponse` and `badResponse`.
   - Calls `reportLatency` + `reportRequestFailure` on timeouts.
   - Calls `reportRequestFailure` only on `connectionError`.
   - Ignores `cancel` and requests with `extra: {StabilityInterceptor.skipKey: true}`.
4. **`InternetConnectionWrapper` Widget Tests**:
   - Displays distinct messages/icons for `noInterface`, `noInternet`, `captivePortal`, and `unstable`.
   - Updates banner text dynamically if `lastIssue` changes while already in `disconnected` state.
   - Shows green restored banner on `disconnected -> connected` and auto-hides after `1800ms`.
   - Tapping the banner triggers `checkNow()`.

```

---
