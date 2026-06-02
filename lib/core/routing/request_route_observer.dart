import 'package:wassaly/core/imports/imports.dart';

/// A [NavigatorObserver] that tracks the current active route and triggers
/// request cancellations for routes that are popped, removed, or replaced.
class RequestRouteObserver extends NavigatorObserver {
  static final List<Route<dynamic>> _routeStack = [];

  /// Retrieves the identifier/key for the current top-most active route.
  ///
  /// Falls back to the route's hashCode if the route setting name is null.
  static Object? get currentRouteKey {
    if (_routeStack.isEmpty) return null;
    final route = _routeStack.last;
    return route.settings.name ?? route.hashCode;
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _routeStack.add(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    _routeStack.remove(route);
    _cancelRequestsForRoute(route);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    _routeStack.remove(route);
    _cancelRequestsForRoute(route);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (oldRoute != null) {
      _routeStack.remove(oldRoute);
      _cancelRequestsForRoute(oldRoute);
    }
    if (newRoute != null) {
      _routeStack.add(newRoute);
    }
  }

  void _cancelRequestsForRoute(Route<dynamic> route) {
    final key = route.settings.name ?? route.hashCode;
    if (sl.isRegistered<CancelRequestService>()) {
      sl<CancelRequestService>().cancel(
        key,
        reason: 'Route "$key" popped or removed from Navigator',
      );
    }
  }
}
