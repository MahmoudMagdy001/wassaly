// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpRequestModel _$VerifyOtpRequestModelFromJson(
  Map<String, dynamic> json,
) => _VerifyOtpRequestModel(
  email: json['email'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$VerifyOtpRequestModelToJson(
  _VerifyOtpRequestModel instance,
) => <String, dynamic>{'email': instance.email, 'code': instance.code};
