import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_event.freezed.dart';

@freezed
sealed class ProductDetailsEvent with _$ProductDetailsEvent {
  const factory ProductDetailsEvent.fetchProductDetails(int productId) =
      FetchProductDetailsEvent;

  const factory ProductDetailsEvent.createProductReview({
    required int productId,
    required int rating,
    required String comment,
  }) = CreateProductReviewEvent;

  const factory ProductDetailsEvent.updateProductReview({
    required int productId,
    required int reviewId,
    required int rating,
    required String comment,
  }) = UpdateProductReviewEvent;
}
