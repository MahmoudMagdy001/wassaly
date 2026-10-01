import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/data/models/offer_model.dart';
import 'package:wassaly/features/home/data/models/review_model.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String image,
    @Default('0') String price,
    @Default('') String description,
    @Default([]) List<OfferModel> offers,
    @Default([]) List<ReviewModel> reviews,
    @JsonKey(name: 'is_favorite') @Default(false) bool isFavorite,
  }) = _ProductModel;

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

  ProductEntity toEntity() => ProductEntity(
        id: id,
        name: name,
        image: image,
        price: price,
        description: description,
        offers: offers.map((o) => o.toEntity()).toList(),
        reviews: reviews.map((r) => r.toEntity()).toList(),
        isFavorite: isFavorite,
      );
}
