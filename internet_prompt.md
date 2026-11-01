# Task: Add a "real internet" detection system to this Flutter app (service + HTTP interceptor + banner widget)

You are working in an existing Flutter/Dart project. Implement a network-monitoring system made of THREE parts that detect whether the device has **real, working internet** (not just an active WiFi/mobile interface), including cases such as "mobile data is on but the SIM has no balance", WiFi with no uplink, and captive portals. Do not ask questions unless truly blocked; make sensible decisions and list them at the end.

## 0. Phase 1: discover the project (do this before writing code)

Inspect the repo and record how it handles each item below. Adapt every name/path in this spec to the project's own conventions; never force a foreign convention onto it.

1. **Package name, folder structure, architecture** (feature-first, layered, etc.). Decide where core/shared services live (e.g. `lib/core/services/`) and put the new files there.
2. **Dependency injection** (get_it, injectable, Provider, Riverpod, manual singletons...). Register the service as a single lazy singleton following the existing pattern.
3. **State management** (Bloc/Cubit, Riverpod, Provider, GetX...). The banner widget should work with the service directly via its streams; only add a Cubit/Notifier wrapper if the project's rules clearly require all state to go through it.
4. **HTTP client.** Dio → implement the interceptor. `http`/`chopper`/`retrofit`/other → adapt the idea (a wrapper/interceptor that times requests and reports results to the service). If there is no HTTP client at all, skip the interceptor and say so.
5. **Theming** (design tokens, extensions on `BuildContext`, or plain `ThemeData.colorScheme`). The banner must use the project's own success/warning/error colors and text styles; fall back to `Theme.of(context).colorScheme` and `textTheme` if no custom tokens exist.
6. **Localization** (ARB/`gen-l10n`, easy_localization, intl, hardcoded). Add new strings in the project's existing mechanism and regenerate if needed. Support every language the app already supports (add translations for at least the languages present; use English as the fallback for any you can't translate confidently and flag them).
7. **Lint rules** (`analysis_options.yaml`), formatting, test libraries (`mocktail`, `mockito`, `flutter_test`), and existing test layout.
8. **Existing connectivity code.** Grep for `connectivity_plus`, `internet_connection_checker`, `InternetConnection`, `NetworkInfo`, offline banners, etc. Replace/migrate existing usage instead of leaving two competing systems.
9. **Platforms targeted.** The probe uses `dart:io` and is NOT Flutter-web compatible. If the project targets web, use conditional imports and a web-safe fallback (e.g. `package:http` based probe or just trust `connectivity_plus`) and document it.
10. **Root widget location** (`MaterialApp`/`MaterialApp.router`/`CupertinoApp`) where the banner wrapper will be mounted.

Add dependencies only if missing: `connectivity_plus`. Do NOT add `internet_connection_checker_plus`. Pick versions compatible with the project's SDK constraints (`flutter pub add`).

## 1. Why a simple connectivity check is not enough

- `connectivity_plus` only reports whether an interface (WiFi/mobile) is up. It says "connected" even with zero data balance or a router without uplink.
- Carriers and captive portals often answer with a redirect or a `200` HTML page, so checking only `status == 200` yields false positives.
- If the periodic check stops while offline, the app never notices that internet came back (e.g. user topped up balance) because the OS emits no event.
- A single shared "slow hits" counter fed by both periodic pings and real HTTP traffic makes the two signals cancel each other.
- Re-entrancy guards that return immediately make `hasConnection()` return false negatives at startup.
- Cancelled requests, fast errors, and upload/download durations pollute latency statistics.
- Results of a check started on one network can arrive after switching networks and overwrite the state (stale results).
- `AppLifecycleState.inactive` fires for permission dialogs/notification shade; treating it as "background" pauses checks needlessly.

## 2. Part A: network service (`internet_connection_service.dart`)

### 2.1 Public types

```dart
enum NetworkState { checking, connected, unstable, disconnected }

enum NetworkIssue {
  none,
  noInterface,   // OS reports no WiFi/mobile interface
  noInternet,    // interface up but real internet unreachable (no balance, blocked, dead uplink)
  captivePortal, // something answered but not the real endpoint (redirect / 2xx with unexpected body)
}

abstract interface class IInternetConnectionService {
  Stream<NetworkState> get stateStream;
  Stream<void> get connectivityRestoredStream; // fires ONLY on disconnected -> connected
  Future<bool> hasConnection();                // true for connected or unstable
  Future<void> checkNow();                     // forces an active check; concurrent callers share one in-flight check
  NetworkState get currentState;
  NetworkIssue get lastIssue;
  bool get isStable;                           // currentState == connected
  void reportLatency(int ms);                  // from the HTTP interceptor
  void reportRequestFailure();                 // from the HTTP interceptor on real network failures
  void dispose();
}
```

### 2.2 `NetworkConfig` constants

| name | value | meaning |
| --- | --- | --- |
| `pingIntervalSeconds` | 5 | check interval while connected/unstable |
| `recoveryBackoffSeconds` | `[2, 4, 6, 10, 15]` | interval while disconnected; last value repeats |
| `slowPingThresholdMs` | 700 | probe latency counted as slow |
| `slowDioThresholdMs` (name it for the project's HTTP client) | 2800 | real request latency counted as slow |
| `maxSlowHits` | 3 | |
| `slowHttpDecay` | 30 s | slow HTTP hits forgotten after this long without a new slow request |
| `failuresBeforeDisconnect` | 2 | consecutive failed checks before leaving connected/unstable |
| `requiredProbeSuccesses` | 2 | endpoints that must agree in a full check |
| `probeTimeout` | 4 s | |
| `failureCheckDebounce` | 3 s | min gap between failure-triggered checks |

### 2.3 `ReachabilityProbe` (verifies REAL internet)

- `dart:io` `HttpClient`: `connectionTimeout = probeTimeout`, `idleTimeout = 30s` (keep-alive avoids repeated TLS handshakes), custom user agent.
- `ProbeTarget(Uri uri, bool Function(int statusCode, String body) isValid)`, injectable via the constructor so the app can add its **own backend health endpoint**. Document that in a comment.
- Default targets, **HTTPS only** (cleartext is blocked by Android 9+/iOS ATS, and HTTPS makes DNS-hijacking portals fail the TLS handshake):
  1. `https://cp.cloudflare.com/generate_204` → valid iff status == 204
  2. `https://www.gstatic.com/generate_204` → valid iff status == 204
  3. `https://captive.apple.com/hotspot-detect.html` → valid iff status == 200 and body contains `Success`
- `run(target)`: `followRedirects = false`, `Cache-Control: no-cache`, each stage wrapped in `.timeout(probeTimeout)`, `request.abort()` on failure. Latency = time until response headers. Read at most ~4 KB of body, decode with `utf8.decode(..., allowMalformed: true)`.
  - 3xx → `portal`
  - `isValid` → `ok(latency)`
  - other 2xx (reachable but unexpected content) → `portal`
  - anything else or any exception (TLS, DNS, timeout, socket) → `failed`
- `runPrimary()`: probe only the endpoint that was fastest in the last successful full check (initially index 0).
- `runAll()`: probe all targets in parallel. Success iff `okCount >= min(requiredProbeSuccesses, targets.length)`; latency = **median** of ok latencies; the fastest ok endpoint becomes the new primary. On failure: `captivePortal` if any probe returned `portal`, else `noInternet`.
- `close()` → `HttpClient.close(force: true)`.

### 2.4 `InternetConnectionService` behavior

Implements `IInternetConnectionService` and `WidgetsBindingObserver`. Constructor (all optional, for testability): `ReachabilityProbe? probe`, `Connectivity? connectivity`, `Future<int?> Function()? pingChecker` (replaces the probe; returns latency ms or null), `bool registerObserver = true`. Registering the observer must be wrapped in try/catch (may run without a binding in tests). The constructor starts the initial check.

**Check pipeline**

1. `connectivity.checkConnectivity()`; empty or contains `none` → `lastIssue = noInterface`, state `disconnected` immediately (no hysteresis).
2. Reachability: run `runAll()` when state is `checking`/`disconnected` or a "force consensus" flag is set (after network switch, app resume, request failure, entering disconnected). Otherwise run the cheap `runPrimary()`; if it fails, fall back to `runAll()` (never declare offline from one endpoint).
3. Failure: set `lastIssue`, reset ping slow hits, `consecutiveFailures++`; go `disconnected` when `consecutiveFailures >= (wasOnline ? failuresBeforeDisconnect : 1)`, otherwise keep the current state and re-check in ~1 s.
4. Success: `consecutiveFailures = 0`, clear force-consensus, `lastIssue = none`, reset recovery backoff; latency >= `slowPingThresholdMs` → `slowPingHits++` else reset to 0; then `_applyStability()`.

**Stability**

- Two separate counters: `_slowPingHits` and `_slowHttpHits` (+ timestamp of last slow HTTP hit). `_applyStability()` clears `_slowHttpHits` if older than `slowHttpDecay`; either counter >= `maxSlowHits` → `unstable`, else `connected`. Leaving `unstable` therefore needs both clear.
- `reportLatency(ms)`: ignore when backgrounded/disposed or state is `disconnected`/`checking`; slow → `_slowHttpHits++` + timestamp, fast → reset; then `_applyStability()`.
- `reportRequestFailure()`: ignore if backgrounded/disposed/`disconnected`; debounce by `failureCheckDebounce`; set force-consensus; `unawaited(checkNow())`.

**Scheduling**: ONE self-rescheduling `Timer` (not `Timer.periodic`). After every check run (in a `finally`) call `_scheduleNext()`: cancel the old timer; no-op if backgrounded/disposed; delay = backoff table while `disconnected` (attempt++), 1 s when `consecutiveFailures > 0`, else `pingIntervalSeconds`. The timer MUST keep running while disconnected so recovery is detected without any OS event. `_updateState` must not touch the timer.

**Concurrency**: `Future<void>? _inFlight; Future<void> checkNow() => _inFlight ??= _runChecks().whenComplete(() => _inFlight = null);` where `_runChecks` loops `do { _recheck = false; await _performCheck(); } while (_recheck && !_isDisposed);`. Keep an `_epoch` counter incremented on every connectivity event (also sets `_recheck` and force-consensus); `_performCheck` captures it at start and discards results if it changed (or if disposed) after any `await`.

**Connectivity listener**: bump epoch, set `_recheck`/force-consensus; if results are empty/contain `none` → `lastIssue = noInterface`, `_updateState(disconnected)`, `_scheduleNext()`; else if not backgrounded → `unawaited(checkNow())`.

**`_updateState(next)`**: no-op if disposed/closed/same; `debugPrint` the transition; when entering `disconnected` reset both slow counters + recovery attempt and set force-consensus; emit on `stateStream`; emit on `connectivityRestoredStream` strictly for `disconnected -> connected`.

**Lifecycle**: `paused`/`hidden` → background, cancel timer. `resumed` → un-background, force-consensus, `unawaited(checkNow())`. `inactive`/`detached` → ignore.

**`hasConnection()`**: if state is `checking`, `await checkNow()` (joins the in-flight check), then return `connected || unstable`.

**`dispose()`**: idempotent; remove observer (try/catch), cancel timer + subscriptions, close the probe, close both controllers.

Keep debug logs short and guarded with `debugPrint` (or the project's logger).

## 3. Part B: HTTP interceptor (Dio; adapt for other clients)

`StabilityInterceptor(IInternetConnectionService)`:

- `static const String skipKey = 'skipStability';` if `options.extra[skipKey] == true` report nothing (uploads/downloads/long-polling).
- `onRequest`: store start timestamp in `options.extra`.
- `onResponse`: report latency.
- `onError`, by `DioExceptionType`:
  - `cancel` → nothing
  - `connectionTimeout`/`sendTimeout`/`receiveTimeout` → `reportLatency(latency)` + `reportRequestFailure()`
  - `connectionError` → `reportRequestFailure()` only
  - `badResponse` → `reportLatency(latency)` (a 4xx/5xx is still a valid round trip)
  - `badCertificate`/`unknown` → nothing
- Always call `handler.next(...)` exactly once.
- Register it on every Dio instance that talks to the app's backend (find them via DI/factories), using the same service singleton.

## 4. Part C: banner wrapper widget (`InternetConnectionWrapper`)

A `StatefulWidget` with `child` and an optional injectable `IInternetConnectionService` (default: resolve from the project's DI). It shows a slim banner above the app content (`Column`: animated banner + `Expanded(child)`):

- **Disconnected** (error color, wifi-off icon): message depends on `lastIssue`:
  - `captivePortal` → EN `Network needs sign-in or has no data balance — tap to check` / AR `الشبكة محتاجة تسجيل دخول أو الباقة منتهية — اضغط للفحص`
  - `noInternet` → EN `Connected to the network but no internet — check your data balance` / AR `متصل بالشبكة لكن بدون إنترنت — تأكد من رصيد الباقة`
  - `noInterface`/`none` → generic "No internet connection — Tap to retry"
- **Unstable** (warning color): EN `Internet connection unstable — Tap to check` / AR `الاتصال بالإنترنت غير مستقر - اضغط للفحص`
- **Restored** (success color, check icon, shown for 1800 ms after `disconnected -> connected`, then hidden): EN `Internet connection restored` / AR `تمت استعادة الاتصال بالإنترنت`
- Hidden on cold start `checking -> connected`.
- Tapping the banner calls `service.checkNow()`.
- Show/hide with `AnimatedSize` (use the project's animation duration token if any) and `Curves.easeInOut`.
- Subscribe in `initState`, cancel subscription and timer in `dispose`, guard `mounted`, cancel the hide timer when entering disconnected/unstable.
- Rebuild when `lastIssue` changes even if the state didn't (e.g. `noInterface -> captivePortal`).
- Do NOT add a redundant `Directionality` wrapper (RTL/LTR is inherited).
- Use `SafeArea(bottom: false)` inside the banner, and avoid a double top inset: while the banner is visible, strip the top padding from the child via `MediaQuery.removePadding(removeTop: true)`. Always keep the same widget wrapper around the child and only toggle the flag, so the child's state is never lost.
- Banner text: `maxLines: 2`, ellipsis, centered; uses the project's text style (fallback `textTheme.labelLarge`, semi-bold) and an on-color that has enough contrast on each background (prefer theme `onError`/etc.; fall back to white).
- All strings go through the project's localization system (ARB/gen-l10n or equivalent), for every supported locale. No hardcoded `isArabic ? ... : ...` ternaries unless the project truly has no l10n.
- Add `Semantics(liveRegion: true)` on the banner so screen readers announce changes.

**Mounting**: wrap the app content in `MaterialApp(builder: (context, child) => InternetConnectionWrapper(child: child!))` (or the `router` equivalent), which sits below `Localizations`/`Theme` but above the Navigator. Keep any existing `builder` logic (e.g. MediaQuery text scale overrides) and compose with it.

## 5. Integration steps

1. Create the three files in the locations that fit the project structure.
2. Register the service as a lazy singleton in DI; dispose it where the project disposes singletons (or leave it app-lifetime and document that).
3. Register the interceptor on all relevant HTTP client instances.
4. Mount the wrapper at the root.
5. Migrate/remove old connectivity code and unused dependencies (Grep first; remove a package only if nothing else uses it) and run `flutter pub get`.
6. Android: confirm `INTERNET` and `ACCESS_NETWORK_STATE` permissions in `AndroidManifest.xml`. iOS: no extra config needed since only HTTPS is used.
7. Add the l10n keys and regenerate code.

## 6. Tests (use the project's test libraries; fake `Connectivity` with a controllable stream; fake probe or `pingChecker`; `fakeAsync` for timers)

- Interface up + all probes fail → `disconnected`, `lastIssue == noInternet`.
- Probes return portal → `lastIssue == captivePortal`.
- One failed check while connected → stays `connected`; two consecutive → `disconnected`.
- Disconnected → probe succeeds on a later timer tick with NO connectivity event → `connected`, and `connectivityRestoredStream` fires exactly once.
- Backoff while disconnected: ticks at 2, 4, 6, 10, 15, 15 s.
- Ping and HTTP slow hits counted separately; a fast ping doesn't clear HTTP hits; HTTP hits decay after 30 s; `unstable -> connected` only when both clear.
- `hasConnection()` during the initial check awaits and returns the right value; concurrent `checkNow()` calls share one check (probe invoked once).
- Network switch mid-check: stale result discarded, new check runs.
- `reportRequestFailure()` triggers a check, debounced within 3 s, ignored while disconnected.
- Lifecycle: `paused`/`hidden` cancel the timer, `resumed` triggers a check, `inactive` does nothing.
- `dispose()` idempotent and closes streams.
- `ReachabilityProbe` strict validation against a local `HttpServer`: 204 → ok; 302 → portal; 200 with wrong body → portal; 500 → failed; slow response → failed; consensus needs 2 of 3; median latency returned.
- Interceptor: cancel → no report; timeout → latency + failure; connectionError → failure only; badResponse → latency; `skipStability` → nothing; `handler.next` exactly once.
- Widget test: banner text per `NetworkIssue`, unstable style, restored banner auto-hides after 1.8 s, tap calls `checkNow`, no double top padding.

## 7. Acceptance criteria

- `flutter analyze` is clean and `flutter test` passes.
- "Connected to WiFi/mobile data but no internet/no balance" → `disconnected` within ~6 s of startup or network switch, with a banner explaining the likely cause; when real internet returns, the banner clears on its own (with the green "restored" flash) within a few seconds, without user action or OS events.
- No flicker on a single timeout or single slow request.
- Healthy steady state costs one small HTTPS request every 5 s over a kept-alive connection; nothing runs while the app is backgrounded.
- No leftover duplicate/competing connectivity code; every existing call site compiles.

## 8. Final report (what I expect from you)

1. Summary of files created/changed and the project conventions you detected and followed.
2. Decisions you made where this spec was ambiguous or the project differed from the assumptions.
3. Anything you could not verify, plus a manual device checklist: airplane mode; WiFi without uplink; mobile data with zero balance; captive-portal WiFi; switching WiFi ↔ mobile mid-request; app background/resume; slow network (throttled).
