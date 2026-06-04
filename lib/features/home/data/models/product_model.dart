import 'package:wassaly/features/home/data/models/offer_model.dart';
import 'package:wassaly/features/home/data/models/review_model.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required super.id,
    required super.name,
    required super.image,
    required super.price,
    required super.description,
    required super.offers,
    required super.reviews,
    required super.isFavorite,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      price: json['price']?.toString() ?? '0',
      description: json['description'] as String? ?? '',
      offers: (json['offers'] as List<dynamic>?)
              ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isFavorite: json['is_favorite'] as bool? ?? false,
    );
}
