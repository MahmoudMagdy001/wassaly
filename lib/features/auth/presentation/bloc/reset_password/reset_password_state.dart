import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

enum ResetPasswordStatus { initial, loading, success, error }

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const ResetPasswordState._();

  const factory ResetPasswordState({
    required String email,
    required String token,
    @Default('') String password,
    @Default('') String passwordConfirmation,
    @Default(false) bool isNewPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(ResetPasswordStatus.initial) ResetPasswordStatus status,
    String? errorMessage,
  }) = _ResetPasswordState;

  bool get isNewPasswordValid => password.length >= 8;

  bool get isConfirmPasswordValid =>
      passwordConfirmation.isNotEmpty && passwordConfirmation == password;

  bool get canSubmit =>
      isNewPasswordValid &&
      isConfirmPasswordValid &&
      status != ResetPasswordStatus.loading;

  int get passwordStrength {
    if (password.isEmpty) return 0;
    if (password.length < 5) return 1;
    if (password.length < 8) return 2;
    if (password.length < 12) return 3;
    return 4;
  }

  String? get newPasswordError {
    if (password.isEmpty) return null;
    if (password.length < 8) return 'auth.password_too_short';
    return null;
  }

  String? get confirmPasswordError {
    if (passwordConfirmation.isEmpty) return null;
    if (passwordConfirmation != password) return 'auth.passwords_do_not_match';
    return null;
  }
}
