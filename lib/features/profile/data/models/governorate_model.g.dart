// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'governorate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GovernorateModel _$GovernorateModelFromJson(Map<String, dynamic> json) =>
    _GovernorateModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      shippingCost: (json['shipping_cost'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$GovernorateModelToJson(_GovernorateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shipping_cost': instance.shippingCost,
    };
