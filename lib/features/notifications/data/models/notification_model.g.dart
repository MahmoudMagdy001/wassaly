// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      createdAt: DateTime.parse(json['created_at'] as String),
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
      type: json['type'] as String? ?? 'unknown',
      data: json['data'] as Map<String, dynamic>? ?? const {},
      isRead: json['is_read'] as bool? ?? false,
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'type': instance.type,
      'data': instance.data,
      'is_read': instance.isRead,
    };
