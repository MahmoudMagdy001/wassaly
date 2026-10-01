import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/offer_entity.dart';
import 'package:wassaly/features/home/domain/entities/review_entity.dart';

part 'product_entity.freezed.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const ProductEntity._();

  const factory ProductEntity({
    required int id,
    required String name,
    required String image,
    required String price,
    required String description,
    required List<OfferEntity> offers,
    required List<ReviewEntity> reviews,
    required bool isFavorite,
  }) = _ProductEntity;

  /// Returns the first offer's discount percentage, or 0 if no offers.
  int get discountPercentage =>
      offers.isNotEmpty ? offers.first.discountPercentage : 0;

  /// Whether this product has an active offer.
  bool get hasOffer => offers.isNotEmpty;

  /// Calculates the discounted price based on the first offer.
  double get discountedPrice {
    final originalPrice = double.tryParse(price) ?? 0;
    if (!hasOffer) return originalPrice;
    return originalPrice - (originalPrice * discountPercentage / 100);
  }

  /// Average rating from all reviews.
  double get averageRating {
    if (reviews.isEmpty) return 0;
    final total = reviews.fold<int>(0, (sum, r) => sum + r.rating);
    return total / reviews.length;
  }

  /// Total number of reviews.
  int get reviewCount => reviews.length;
}
