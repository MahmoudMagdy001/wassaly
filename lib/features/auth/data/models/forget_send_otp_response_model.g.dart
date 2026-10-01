// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_send_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgetSendOtpResponseModel _$ForgetSendOtpResponseModelFromJson(
  Map<String, dynamic> json,
) => _ForgetSendOtpResponseModel(
  status: json['status'] as bool? ?? false,
  message: json['message'] as String? ?? '',
);

Map<String, dynamic> _$ForgetSendOtpResponseModelToJson(
  _ForgetSendOtpResponseModel instance,
) => <String, dynamic>{'status': instance.status, 'message': instance.message};
