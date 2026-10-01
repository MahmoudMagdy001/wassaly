import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_send_otp_response_entity.freezed.dart';

@freezed
abstract class ForgetSendOtpResponseEntity with _$ForgetSendOtpResponseEntity {
  const factory ForgetSendOtpResponseEntity({
    required bool status,
    required String message,
  }) = _ForgetSendOtpResponseEntity;
}
