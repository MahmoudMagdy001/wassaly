import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_verify_otp_response_entity.freezed.dart';

@freezed
abstract class ForgetVerifyOtpResponseEntity with _$ForgetVerifyOtpResponseEntity {
  const factory ForgetVerifyOtpResponseEntity({
    required bool status,
    required String message,
    String? token,
  }) = _ForgetVerifyOtpResponseEntity;
}
