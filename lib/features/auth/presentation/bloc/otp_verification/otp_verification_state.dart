import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/shared/enums/verification_type.dart';
import 'package:wassaly/features/auth/domain/entities/verify_otp_response_entity.dart';

part 'otp_verification_state.freezed.dart';

enum OtpVerificationStatus {
  initial,
  loading,
  verifiedForRegister,
  verifiedForForgotPassword,
  verifiedForLogin,
  error,
}

enum ResendOtpStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
abstract class OtpVerificationState with _$OtpVerificationState {
  const OtpVerificationState._();

  const factory OtpVerificationState({
    required String email,
    @Default('') String otp,
    @Default(VerificationType.register) VerificationType verificationType,
    @Default(OtpVerificationStatus.initial)
    OtpVerificationStatus verificationStatus,
    @Default(ResendOtpStatus.initial) ResendOtpStatus resendStatus,
    String? errorMessage,
    @Default(0) int timerSeconds,
    @Default(false) bool isTimerRunning,
    VerifyOtpResponseEntity? verifyOtpResponse,
    String? resetToken,
  }) = _OtpVerificationState;

  bool get isOtpComplete => otp.length == 6;
  bool get canVerify =>
      isOtpComplete && verificationStatus != OtpVerificationStatus.loading;
  bool get canResend =>
      !isTimerRunning && resendStatus != ResendOtpStatus.loading;

  String get formattedTimer {
    final minutes = (timerSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (timerSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}
