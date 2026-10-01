// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      price: json['price'] as String? ?? '0',
      description: json['description'] as String? ?? '',
      offers:
          (json['offers'] as List<dynamic>?)
              ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      reviews:
          (json['reviews'] as List<dynamic>?)
              ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isFavorite: json['is_favorite'] as bool? ?? false,
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'description': instance.description,
      'offers': instance.offers,
      'reviews': instance.reviews,
      'is_favorite': instance.isFavorite,
    };
