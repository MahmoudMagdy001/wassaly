// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_token_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FcmTokenRequestModel _$FcmTokenRequestModelFromJson(
  Map<String, dynamic> json,
) => _FcmTokenRequestModel(
  token: json['token'] as String,
  deviceId: json['device_id'] as String,
  userId: (json['user_id'] as num).toInt(),
);

Map<String, dynamic> _$FcmTokenRequestModelToJson(
  _FcmTokenRequestModel instance,
) => <String, dynamic>{
  'token': instance.token,
  'device_id': instance.deviceId,
  'user_id': instance.userId,
};
