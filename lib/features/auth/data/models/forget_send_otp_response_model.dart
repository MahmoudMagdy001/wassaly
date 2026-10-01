import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/auth/domain/entities/forget_send_otp_response_entity.dart';

part 'forget_send_otp_response_model.freezed.dart';
part 'forget_send_otp_response_model.g.dart';

@freezed
abstract class ForgetSendOtpResponseModel with _$ForgetSendOtpResponseModel {
  const ForgetSendOtpResponseModel._();

  const factory ForgetSendOtpResponseModel({
    @Default(false) bool status,
    @Default('') String message,
  }) = _ForgetSendOtpResponseModel;

  factory ForgetSendOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ForgetSendOtpResponseModelFromJson(json);

  ForgetSendOtpResponseEntity toEntity() => ForgetSendOtpResponseEntity(
        status: status,
        message: message,
      );
}
