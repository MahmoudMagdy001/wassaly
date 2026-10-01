import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_event.freezed.dart';

@freezed
sealed class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.newPasswordChanged(String password) =
      NewPasswordChanged;
  const factory ResetPasswordEvent.confirmPasswordChanged(String password) =
      ConfirmPasswordChanged;
  const factory ResetPasswordEvent.passwordVisibilityToggled({
    required bool isNewPassword,
  }) = PasswordVisibilityToggled;
  const factory ResetPasswordEvent.resetPasswordSubmitted() =
      ResetPasswordSubmitted;
}
