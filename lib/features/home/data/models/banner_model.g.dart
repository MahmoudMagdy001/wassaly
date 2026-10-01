// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => _BannerModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  image: json['image'] as String? ?? '',
  type: json['type'] as String? ?? '',
);

Map<String, dynamic> _$BannerModelToJson(_BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'type': instance.type,
    };
