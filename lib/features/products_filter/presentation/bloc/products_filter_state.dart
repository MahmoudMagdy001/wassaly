import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';

part 'products_filter_state.freezed.dart';

@freezed
sealed class ProductsFilterState with _$ProductsFilterState {
  const ProductsFilterState._();

  const factory ProductsFilterState({
    @Default(AppStatus.initial) AppStatus status,
    @Default(AppStatus.initial) AppStatus categoriesStatus,
    @Default([]) List<ProductEntity> products,
    @Default([]) List<CategoryEntity> categories,
    @Default(ProductFilterParams()) ProductFilterParams params,
    @Default(1) int currentPage,
    @Default(1) int lastPage,
    @Default(0) int total,
    String? errorMessage,
    @Default(false) bool isLoadMoreLoading,
  }) = _ProductsFilterState;

  bool get hasMore => currentPage < lastPage;
}
