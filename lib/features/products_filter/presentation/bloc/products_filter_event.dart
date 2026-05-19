import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';

abstract class ProductsFilterEvent extends Equatable {
  const ProductsFilterEvent();

  @override
  List<Object?> get props => [];
}

class FilterProductsEvent extends ProductsFilterEvent {
  final ProductFilterParams params;
  final bool isLoadMore;

  const FilterProductsEvent({
    required this.params,
    this.isLoadMore = false,
  });

  @override
  List<Object?> get props => [params, isLoadMore];
}

class ResetFiltersEvent extends ProductsFilterEvent {
  const ResetFiltersEvent();
}

class FetchFilterCategoriesEvent extends ProductsFilterEvent {
  const FetchFilterCategoriesEvent();
}
