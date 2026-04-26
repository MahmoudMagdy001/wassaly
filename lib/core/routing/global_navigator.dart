import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Global [NavigatorState] key used by the app's root [Navigator].
///
/// This is wired into `MaterialApp.navigatorKey` in `app.dart` so that
/// navigation and overlays (e.g. toasts) can be triggered without a
/// local [BuildContext] reference.
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

/// Convenient accessor for the current root [BuildContext].
///
/// Returns `null` before the app is mounted. Check for `null` before
/// using this in background services or repositories.
BuildContext? get rootContext => rootNavigatorKey.currentContext;

/// Global navigation methods that work without a local BuildContext.
class GlobalNavigator {
  static BuildContext? get _context => rootNavigatorKey.currentContext;

  /// Navigate to a route (push).
  static void push(String route, {Object? extra}) {
    final context = _context;
    if (context != null) {
      context.push(route, extra: extra);
    }
  }

  /// Navigate and replace current route.
  static void go(String route) {
    final context = _context;
    if (context != null) {
      context.go(route);
    }
  }

  /// Go back.
  static void pop() {
    final context = _context;
    if (context != null && context.canPop()) {
      context.pop();
    }
  }
}
