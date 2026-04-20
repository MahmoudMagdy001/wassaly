import 'package:fpdart/fpdart.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/core/utils/typedefs.dart';
import 'package:wassaly/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  const AuthRepositoryImpl(this._remoteDataSource);

  @override
  FutureEither<UserEntity> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _remoteDataSource.login(
        email: email,
        password: password,
      );
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure('Unexpected error: $e'));
    }
  }

  @override
  FutureEither<UserEntity> loginWithGoogle() async {
    try {
      final result = await _remoteDataSource.loginWithGoogle();
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure('Unexpected error: $e'));
    }
  }

  @override
  FutureEither<UserEntity> loginWithFacebook() async {
    try {
      final result = await _remoteDataSource.loginWithFacebook();
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure('Unexpected error: $e'));
    }
  }
}
