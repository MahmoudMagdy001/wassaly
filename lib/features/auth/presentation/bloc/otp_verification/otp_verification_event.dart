import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verification_event.freezed.dart';

@freezed
sealed class OtpVerificationEvent with _$OtpVerificationEvent {
  const factory OtpVerificationEvent.otpDigitChanged(String otp) =
      OtpDigitChanged;
  const factory OtpVerificationEvent.verifyOtpSubmitted() = VerifyOtpSubmitted;
  const factory OtpVerificationEvent.resendOtpRequested() = ResendOtpRequested;
  const factory OtpVerificationEvent.timerTicked(int remainingSeconds) =
      TimerTicked;
  const factory OtpVerificationEvent.timerCompleted() = TimerCompleted;
  const factory OtpVerificationEvent.timerStarted() = TimerStarted;
}
