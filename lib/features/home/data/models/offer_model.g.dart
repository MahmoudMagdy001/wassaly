// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfferModel _$OfferModelFromJson(Map<String, dynamic> json) => _OfferModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  discountPercentage: (json['discount_percentage'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$OfferModelToJson(_OfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount_percentage': instance.discountPercentage,
    };
