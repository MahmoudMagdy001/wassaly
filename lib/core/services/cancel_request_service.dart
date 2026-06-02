import 'package:wassaly/core/imports/imports.dart';

/// A service that manages [CancelToken]s for active HTTP requests.
///
/// It allows associating requests with specific keys (like a route name or a Bloc's hashCode)
/// so they can be cancelled together when that key is no longer needed (e.g., when a route is popped
/// or a Bloc is closed).
class CancelRequestService {
  final Map<Object, CancelToken> _tokens = {};

  /// Retrieves or creates a [CancelToken] associated with the given [key].
  CancelToken getCancelToken(Object key) {
    return _tokens.putIfAbsent(key, () => CancelToken());
  }

  /// Cancels any active requests associated with the given [key].
  ///
  /// Removes the [CancelToken] from the registry.
  void cancel(Object key, {String? reason}) {
    final token = _tokens.remove(key);
    if (token != null && !token.isCancelled) {
      token.cancel(reason ?? 'Request cancelled by CancelRequestService');
    }
  }

  /// Cancels all active requests across all keys.
  void cancelAll({String? reason}) {
    final keys = List<Object>.from(_tokens.keys);
    for (final key in keys) {
      cancel(key, reason: reason);
    }
  }

  /// Removes the [CancelToken] for a given [key] without cancelling it.
  ///
  /// Useful if we want to manually untrack a key without triggering cancellations.
  void removeToken(Object key) {
    _tokens.remove(key);
  }

  /// Exposes the count of active tokens (for debugging and testing purposes).
  @visibleForTesting
  int get activeTokenCount => _tokens.length;
}
