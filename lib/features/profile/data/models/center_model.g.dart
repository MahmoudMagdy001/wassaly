// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CenterModel _$CenterModelFromJson(Map<String, dynamic> json) => _CenterModel(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  governorateId: json['governorate_id'] as String? ?? '',
);

Map<String, dynamic> _$CenterModelToJson(_CenterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'governorate_id': instance.governorateId,
    };
