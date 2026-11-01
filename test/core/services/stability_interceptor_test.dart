import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';
import 'package:wassaly/core/services/stability_interceptor.dart';

class MockInternetConnectionService extends Mock
    implements IInternetConnectionService {}

class MockRequestInterceptorHandler extends Mock
    implements RequestInterceptorHandler {}

class MockResponseInterceptorHandler extends Mock
    implements ResponseInterceptorHandler {}

class MockErrorInterceptorHandler extends Mock
    implements ErrorInterceptorHandler {}

void main() {
  late MockInternetConnectionService mockService;
  late StabilityInterceptor interceptor;

  setUp(() {
    mockService = MockInternetConnectionService();
    interceptor = StabilityInterceptor(mockService);
  });

  group('StabilityInterceptor', () {
    test(
      'onRequest adds stability_startTime to options.extra and calls handler.next',
      () {
        final options = RequestOptions(path: '/test');
        final handler = MockRequestInterceptorHandler();

        interceptor.onRequest(options, handler);

        expect(options.extra['stability_startTime'], isNotNull);
        expect(options.extra['stability_startTime'], isA<int>());
        verify(() => handler.next(options)).called(1);
      },
    );

    test('onRequest ignores startTime when skipStability is true', () {
      final options = RequestOptions(
        path: '/test',
        extra: {StabilityInterceptor.skipKey: true},
      );
      final handler = MockRequestInterceptorHandler();

      interceptor.onRequest(options, handler);

      expect(options.extra['stability_startTime'], isNull);
      verify(() => handler.next(options)).called(1);
    });

    test('onResponse reports latency and calls handler.next', () {
      final startTime = DateTime.now().millisecondsSinceEpoch - 150;
      final options = RequestOptions(
        path: '/test',
        extra: {'stability_startTime': startTime},
      );
      final response = Response<dynamic>(requestOptions: options);
      final handler = MockResponseInterceptorHandler();

      when(() => mockService.reportLatency(any())).thenReturn(null);

      interceptor.onResponse(response, handler);

      verify(
        () => mockService.reportLatency(any(that: greaterThanOrEqualTo(140))),
      ).called(1);
      verify(() => handler.next(response)).called(1);
    });

    test('onResponse does not report latency when skipStability is true', () {
      final startTime = DateTime.now().millisecondsSinceEpoch - 150;
      final options = RequestOptions(
        path: '/test',
        extra: {
          'stability_startTime': startTime,
          StabilityInterceptor.skipKey: true,
        },
      );
      final response = Response<dynamic>(requestOptions: options);
      final handler = MockResponseInterceptorHandler();

      interceptor.onResponse(response, handler);

      verifyNever(() => mockService.reportLatency(any()));
      verify(() => handler.next(response)).called(1);
    });

    test('onError cancel reports nothing and calls handler.next', () {
      final startTime = DateTime.now().millisecondsSinceEpoch - 200;
      final options = RequestOptions(
        path: '/test',
        extra: {'stability_startTime': startTime},
      );
      final err = DioException(
        requestOptions: options,
        type: DioExceptionType.cancel,
      );
      final handler = MockErrorInterceptorHandler();

      interceptor.onError(err, handler);

      verifyNever(() => mockService.reportLatency(any()));
      verifyNever(() => mockService.reportRequestFailure());
      verify(() => handler.next(err)).called(1);
    });

    test(
      'onError timeout reports latency and request failure, calls handler.next',
      () {
        final startTime = DateTime.now().millisecondsSinceEpoch - 250;
        final options = RequestOptions(
          path: '/test',
          extra: {'stability_startTime': startTime},
        );
        final err = DioException(
          requestOptions: options,
          type: DioExceptionType.connectionTimeout,
        );
        final handler = MockErrorInterceptorHandler();

        when(() => mockService.reportLatency(any())).thenReturn(null);
        when(() => mockService.reportRequestFailure()).thenReturn(null);

        interceptor.onError(err, handler);

        verify(
          () => mockService.reportLatency(any(that: greaterThanOrEqualTo(240))),
        ).called(1);
        verify(() => mockService.reportRequestFailure()).called(1);
        verify(() => handler.next(err)).called(1);
      },
    );

    test('onError connectionError reports request failure only', () {
      final startTime = DateTime.now().millisecondsSinceEpoch - 300;
      final options = RequestOptions(
        path: '/test',
        extra: {'stability_startTime': startTime},
      );
      final err = DioException(
        requestOptions: options,
        type: DioExceptionType.connectionError,
      );
      final handler = MockErrorInterceptorHandler();

      when(() => mockService.reportRequestFailure()).thenReturn(null);

      interceptor.onError(err, handler);

      verifyNever(() => mockService.reportLatency(any()));
      verify(() => mockService.reportRequestFailure()).called(1);
      verify(() => handler.next(err)).called(1);
    });

    test('onError badResponse reports latency only', () {
      final startTime = DateTime.now().millisecondsSinceEpoch - 180;
      final options = RequestOptions(
        path: '/test',
        extra: {'stability_startTime': startTime},
      );
      final err = DioException(
        requestOptions: options,
        type: DioExceptionType.badResponse,
        response: Response(requestOptions: options, statusCode: 500),
      );
      final handler = MockErrorInterceptorHandler();

      when(() => mockService.reportLatency(any())).thenReturn(null);

      interceptor.onError(err, handler);

      verify(
        () => mockService.reportLatency(any(that: greaterThanOrEqualTo(170))),
      ).called(1);
      verifyNever(() => mockService.reportRequestFailure());
      verify(() => handler.next(err)).called(1);
    });

    test('onError skipStability ignores report and calls handler.next', () {
      final startTime = DateTime.now().millisecondsSinceEpoch - 200;
      final options = RequestOptions(
        path: '/test',
        extra: {
          'stability_startTime': startTime,
          StabilityInterceptor.skipKey: true,
        },
      );
      final err = DioException(
        requestOptions: options,
        type: DioExceptionType.connectionTimeout,
      );
      final handler = MockErrorInterceptorHandler();

      interceptor.onError(err, handler);

      verifyNever(() => mockService.reportLatency(any()));
      verifyNever(() => mockService.reportRequestFailure());
      verify(() => handler.next(err)).called(1);
    });
  });
}
