import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/brands/domain/entities/brand_entity.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

part 'brands_state.freezed.dart';

enum BrandsStatus { initial, loading, success, failure }

enum BrandProductsStatus { initial, loading, loadingMore, success, failure }

@freezed
abstract class BrandsState with _$BrandsState {
  const factory BrandsState({
    @Default(BrandsStatus.initial) BrandsStatus status,
    @Default([]) List<BrandEntity> brands,
    @Default('') String errorMessage,
    @Default(BrandProductsStatus.initial) BrandProductsStatus productsStatus,
    @Default([]) List<ProductEntity> products,
    @Default('') String productsErrorMessage,
    @Default(1) int currentPage,
    @Default(false) bool hasReachedMax,
  }) = _BrandsState;
}
