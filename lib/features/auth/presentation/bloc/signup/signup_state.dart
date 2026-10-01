import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
abstract class SignupState with _$SignupState {
  const factory SignupState({
    @Default('') String name,
    @Default('') String phone,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(false) bool isTermsAccepted,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(false) bool isRegistered,
    File? avatarFile,
  }) = _SignupState;
}
