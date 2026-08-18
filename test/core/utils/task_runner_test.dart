import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/core/utils/task_runner.dart';

void main() {
  group('runTask', () {
    test('returns Right(data) on successful execution', () async {
      final result = await runTask(() async => 'success_data');
      expect(result, const Right<Failure, String>('success_data'));
    });

    test('returns Left(NotFoundFailure) on DioException with 404', () async {
      final dioException = DioException(
        requestOptions: RequestOptions(path: '/test'),
        response: Response(
          requestOptions: RequestOptions(path: '/test'),
          statusCode: 404,
        ),
        type: DioExceptionType.badResponse,
      );

      final result = await runTask<String>(() async => throw dioException);
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<NotFoundFailure>()),
        (_) => fail('Should be Left'),
      );
    });

    test('returns Left(ServerFailure) on generic exception', () async {
      final result = await runTask<String>(() async => throw Exception('Unexpected error'));
      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<ServerFailure>()),
        (_) => fail('Should be Left'),
      );
    });
  });
}
