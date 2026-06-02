import 'package:wassaly/core/imports/imports.dart';

/// A Dio interceptor that automatically attaches a [CancelToken] to outgoing requests.
///
/// It determines the appropriate cancel token by checking:
/// 1. An explicit key passed in the request's extra map (`options.extra['cancelTokenKey']`).
/// 2. An active Bloc key in the current [Zone] (`Zone.current[#blocCancelKey]`).
/// 3. The current active route key from the [RequestRouteObserver.currentRouteKey].
class CancelTokenInterceptor extends Interceptor {
  final CancelRequestService _cancelRequestService;

  CancelTokenInterceptor(this._cancelRequestService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Check if the user already provided a cancel token manually
    if (options.cancelToken != null) {
      return handler.next(options);
    }

    final explicitKey = options.extra['cancelTokenKey'];
    final blocKey = Zone.current[#blocCancelKey];
    final routeKey = RequestRouteObserver.currentRouteKey;

    final key = explicitKey ?? blocKey ?? routeKey;

    if (key != null) {
      final token = _cancelRequestService.getCancelToken(key);
      options.cancelToken = token;
    }

    super.onRequest(options, handler);
  }
}
