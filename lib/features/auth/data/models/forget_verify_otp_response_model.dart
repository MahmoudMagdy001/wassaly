import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/auth/domain/entities/forget_verify_otp_response_entity.dart';

part 'forget_verify_otp_response_model.freezed.dart';

@freezed
abstract class ForgetVerifyOtpResponseModel with _$ForgetVerifyOtpResponseModel {
  const ForgetVerifyOtpResponseModel._();

  const factory ForgetVerifyOtpResponseModel({
    @Default(false) bool status,
    @Default('') String message,
    String? token,
  }) = _ForgetVerifyOtpResponseModel;

  factory ForgetVerifyOtpResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>?;
    return ForgetVerifyOtpResponseModel(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      token: data?['token'] as String?,
    );
  }

  ForgetVerifyOtpResponseEntity toEntity() => ForgetVerifyOtpResponseEntity(
        status: status,
        message: message,
        token: token,
      );
}
