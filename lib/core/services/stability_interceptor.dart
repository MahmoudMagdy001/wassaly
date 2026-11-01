import 'package:dio/dio.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';

/// Interceptor that measures real HTTP round-trip latency and reports
/// network timeouts/connection errors back to [IInternetConnectionService].
class StabilityInterceptor extends Interceptor {
  StabilityInterceptor(this._service);

  final IInternetConnectionService _service;

  static const String skipKey = 'skipStability';
  static const String _startTimeKey = 'stability_startTime';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.extra[skipKey] != true) {
      options.extra[_startTimeKey] = DateTime.now().millisecondsSinceEpoch;
    }
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (response.requestOptions.extra[skipKey] != true) {
      final startTime = response.requestOptions.extra[_startTimeKey] as int?;
      if (startTime != null) {
        final latency = DateTime.now().millisecondsSinceEpoch - startTime;
        _service.reportLatency(latency);
      }
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.requestOptions.extra[skipKey] != true) {
      final startTime = err.requestOptions.extra[_startTimeKey] as int?;
      final latency = startTime != null
          ? DateTime.now().millisecondsSinceEpoch - startTime
          : null;

      switch (err.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.transformTimeout:
          if (latency != null) {
            _service.reportLatency(latency);
          }
          _service.reportRequestFailure();
        case DioExceptionType.connectionError:
          _service.reportRequestFailure();
        case DioExceptionType.badResponse:
          if (latency != null) {
            _service.reportLatency(latency);
          }
        case DioExceptionType.cancel:
        case DioExceptionType.badCertificate:
        case DioExceptionType.unknown:
          break;
      }
    }
    handler.next(err);
  }
}
