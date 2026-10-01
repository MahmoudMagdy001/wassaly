import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/product_details/domain/entities/product_detail_entity.dart';

part 'product_details_state.freezed.dart';

enum ProductDetailsStatus { initial, loading, success, failure }

enum RelatedProductsStatus { initial, loading, success, failure }

enum ReviewActionStatus { initial, loading, success, failure }

@freezed
sealed class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState({
    @Default(ProductDetailsStatus.initial) ProductDetailsStatus status,
    @Default(RelatedProductsStatus.initial)
    RelatedProductsStatus relatedProductsStatus,
    @Default(ReviewActionStatus.initial) ReviewActionStatus reviewActionStatus,
    ProductDetailEntity? product,
    @Default([]) List<ProductEntity> relatedProducts,
    @Default('') String errorMessage,
    @Default('') String reviewActionMessage,
  }) = _ProductDetailsState;
}
