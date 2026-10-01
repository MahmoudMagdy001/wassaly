// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppReviewUserModel _$AppReviewUserModelFromJson(Map<String, dynamic> json) =>
    _AppReviewUserModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      type: json['type'] as String? ?? '',
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$AppReviewUserModelToJson(_AppReviewUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'avatar': instance.avatar,
    };

_AppReviewModel _$AppReviewModelFromJson(Map<String, dynamic> json) =>
    _AppReviewModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toInt() ?? 0,
      comment: json['comment'] as String? ?? '',
      user: json['user'] == null
          ? const AppReviewUserModel()
          : AppReviewUserModel.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$AppReviewModelToJson(_AppReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'comment': instance.comment,
      'user': instance.user,
      'created_at': instance.createdAt,
    };
