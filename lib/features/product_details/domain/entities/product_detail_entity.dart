import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/service_details/domain/entities/service_detail_entity.dart';

part 'product_detail_entity.freezed.dart';

@freezed
sealed class ProductSpecificationEntity with _$ProductSpecificationEntity {
  const factory ProductSpecificationEntity({
    required int id,
    required String key,
    required String value,
    required String icon,
  }) = _ProductSpecificationEntity;
}

@freezed
sealed class ProductDetailImageEntity with _$ProductDetailImageEntity {
  const factory ProductDetailImageEntity({
    required int id,
    required String image,
  }) = _ProductDetailImageEntity;
}

@freezed
sealed class ProductReviewUserEntity with _$ProductReviewUserEntity {
  const factory ProductReviewUserEntity({
    required int id,
    required String name,
    required String? avatar,
  }) = _ProductReviewUserEntity;
}

@freezed
sealed class ProductDetailReviewEntity with _$ProductDetailReviewEntity {
  const factory ProductDetailReviewEntity({
    required int id,
    required int rating,
    required String comment,
    required String createdAt,
    required ProductReviewUserEntity user,
  }) = _ProductDetailReviewEntity;
}

@freezed
sealed class ProductMetaEntity with _$ProductMetaEntity {
  const factory ProductMetaEntity({
    required int id,
    required String name,
    required String image,
  }) = _ProductMetaEntity;
}

@freezed
sealed class ProductDetailEntity with _$ProductDetailEntity {
  const ProductDetailEntity._();

  const factory ProductDetailEntity({
    required int id,
    required String name,
    required String image,
    required String price,
    required String description,
    required List<ProductSpecificationEntity> specifications,
    required List<ProductDetailImageEntity> images,
    required ProductMetaEntity? subCategory,
    required ProductMetaEntity? brand,
    required List<ProductDetailReviewEntity> reviews,
    required List<int> offerPercentages,
    required bool isFavorite,
    required ServiceProviderEntity? provider,
  }) = _ProductDetailEntity;

  int get discountPercentage =>
      offerPercentages.isNotEmpty ? offerPercentages.first : 0;

  bool get hasOffer => discountPercentage > 0;

  double get discountedPrice {
    final originalPrice = double.tryParse(price) ?? 0;
    if (!hasOffer) return originalPrice;
    return originalPrice - (originalPrice * discountPercentage / 100);
  }
}
