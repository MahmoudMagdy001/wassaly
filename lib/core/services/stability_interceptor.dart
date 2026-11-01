import 'package:dio/dio.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';

/// Interceptor that measures Dio request duration and reports latency and failures
/// to [IInternetConnectionService] for network stability monitoring.
class StabilityInterceptor extends Interceptor {
  StabilityInterceptor(this._service);

  final IInternetConnectionService _service;

  static const String skipKey = 'skipStability';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.extra[skipKey] != true) {
      options.extra['startTime'] = DateTime.now().millisecondsSinceEpoch;
    }
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (response.requestOptions.extra[skipKey] != true) {
      final startTime = response.requestOptions.extra['startTime'] as int?;
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
      final startTime = err.requestOptions.extra['startTime'] as int?;
      final latency = startTime != null
          ? DateTime.now().millisecondsSinceEpoch - startTime
          : null;

      switch (err.type) {
        case DioExceptionType.cancel:
          break;
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
        case DioExceptionType.badCertificate:
        case DioExceptionType.unknown:
          break;
      }
    }
    handler.next(err);
  }
}
