// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubCategoryModel _$SubCategoryModelFromJson(Map<String, dynamic> json) =>
    _SubCategoryModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubCategoryModelToJson(_SubCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'services': instance.services,
    };
