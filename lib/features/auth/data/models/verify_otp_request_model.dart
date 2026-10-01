import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_request_model.freezed.dart';
part 'verify_otp_request_model.g.dart';

@freezed
abstract class VerifyOtpRequestModel with _$VerifyOtpRequestModel {
  const VerifyOtpRequestModel._();

  const factory VerifyOtpRequestModel({
    required String email,
    required String code,
  }) = _VerifyOtpRequestModel;

  factory VerifyOtpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestModelFromJson(json);
}
