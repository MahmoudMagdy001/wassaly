import 'package:wassaly/core/utils/typedefs.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  FutureEither<UserEntity> login({
    required String email,
    required String password,
  });

  FutureEither<UserEntity> loginWithGoogle();

  FutureEither<UserEntity> loginWithFacebook();
}
