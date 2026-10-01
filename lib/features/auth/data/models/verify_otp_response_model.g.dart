// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
  Map<String, dynamic> json,
) => _VerifyOtpResponseModel(
  status: json['status'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? null
      : VerifyOtpDataModel.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
  _VerifyOtpResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_VerifyOtpDataModel _$VerifyOtpDataModelFromJson(Map<String, dynamic> json) =>
    _VerifyOtpDataModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String?,
      avatar: json['avatar'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$VerifyOtpDataModelToJson(_VerifyOtpDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'type': instance.type,
    };
