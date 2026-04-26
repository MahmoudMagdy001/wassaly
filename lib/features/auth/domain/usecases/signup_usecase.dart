import 'dart:io';

import 'package:wassaly/core/utils/typedefs.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/auth/domain/repositories/auth_repository.dart';

class SignupUseCase {
  final AuthRepository _repository;

  const SignupUseCase(this._repository);

  FutureEither<UserEntity> call(SignupParams params) {
    return _repository.signup(
      name: params.name,
      phone: params.phone,
      email: params.email,
      password: params.password,
      confirmPassword: params.confirmPassword,
      avatarFile: params.avatarFile,
    );
  }
}

class SignupParams {
  final String name;
  final String phone;
  final String email;
  final String password;
  final String confirmPassword;
  final File? avatarFile;

  const SignupParams({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.confirmPassword,
    this.avatarFile,
  });
}
