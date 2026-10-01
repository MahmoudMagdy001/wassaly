import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isLoading,
    String? errorMessage,
    UserEntity? user,
    @Default(false) bool requiresVerification,
    String? verificationEmail,
  }) = _LoginState;
}
