// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterResponseModel _$RegisterResponseModelFromJson(
  Map<String, dynamic> json,
) => _RegisterResponseModel(
  status: json['status'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  data: json['data'] == null
      ? null
      : RegisterDataModel.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RegisterResponseModelToJson(
  _RegisterResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_RegisterDataModel _$RegisterDataModelFromJson(Map<String, dynamic> json) =>
    _RegisterDataModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      email: json['email'] as String? ?? '',
      fullName: json['full_name'] as String? ?? '',
      phone: json['phone'] as String?,
      type: json['type'] as String?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$RegisterDataModelToJson(_RegisterDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'full_name': instance.fullName,
      'phone': instance.phone,
      'type': instance.type,
      'email_verified_at': instance.emailVerifiedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
