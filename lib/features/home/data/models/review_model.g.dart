// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => _ReviewModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  rating: (json['rating'] as num?)?.toInt() ?? 0,
  comment: json['comment'] as String? ?? '',
  createdAt: json['created_at'] as String? ?? '',
);

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_at': instance.createdAt,
    };
