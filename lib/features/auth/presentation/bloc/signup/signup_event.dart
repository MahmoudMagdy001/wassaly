import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.freezed.dart';

@freezed
sealed class SignupEvent with _$SignupEvent {
  const factory SignupEvent.nameChanged(String name) = NameChanged;
  const factory SignupEvent.phoneChanged(String phone) = PhoneChanged;
  const factory SignupEvent.emailChanged(String email) = EmailChanged;
  const factory SignupEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignupEvent.passwordVisibilityChanged({required bool isVisible}) =
      PasswordVisibilityChanged;
  const factory SignupEvent.confirmPasswordChanged(String confirmPassword) =
      ConfirmPasswordChanged;
  const factory SignupEvent.confirmPasswordVisibilityChanged({
    required bool isVisible,
  }) = ConfirmPasswordVisibilityChanged;
  const factory SignupEvent.termsAcceptedChanged({required bool isAccepted}) =
      TermsAcceptedChanged;
  const factory SignupEvent.signupSubmitted() = SignupSubmitted;
  const factory SignupEvent.signupWithFacebook() = SignupWithFacebook;
  const factory SignupEvent.avatarChanged(File? avatarFile) = AvatarChanged;
}
