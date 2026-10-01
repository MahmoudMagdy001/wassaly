import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';

part 'products_filter_event.freezed.dart';

@freezed
sealed class ProductsFilterEvent with _$ProductsFilterEvent {
  const factory ProductsFilterEvent.filterProducts({
    required ProductFilterParams params,
    @Default(false) bool isLoadMore,
  }) = FilterProductsEvent;

  const factory ProductsFilterEvent.resetFilters() = ResetFiltersEvent;

  const factory ProductsFilterEvent.fetchFilterCategories() =
      FetchFilterCategoriesEvent;
}
