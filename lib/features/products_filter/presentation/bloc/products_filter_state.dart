import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';

class ProductsFilterState extends Equatable {
  final AppStatus status;
  final AppStatus categoriesStatus;
  final List<ProductEntity> products;
  final List<CategoryEntity> categories;
  final ProductFilterParams params;
  final int currentPage;
  final int lastPage;
  final int total;
  final String? errorMessage;
  final bool isLoadMoreLoading;

  const ProductsFilterState({
    this.status = AppStatus.initial,
    this.categoriesStatus = AppStatus.initial,
    this.products = const [],
    this.categories = const [],
    this.params = const ProductFilterParams(),
    this.currentPage = 1,
    this.lastPage = 1,
    this.total = 0,
    this.errorMessage,
    this.isLoadMoreLoading = false,
  });

  ProductsFilterState copyWith({
    AppStatus? status,
    AppStatus? categoriesStatus,
    List<ProductEntity>? products,
    List<CategoryEntity>? categories,
    ProductFilterParams? params,
    int? currentPage,
    int? lastPage,
    int? total,
    String? errorMessage,
    bool? isLoadMoreLoading,
    bool clearError = false,
  }) => ProductsFilterState(
      status: status ?? this.status,
      categoriesStatus: categoriesStatus ?? this.categoriesStatus,
      products: products ?? this.products,
      categories: categories ?? this.categories,
      params: params ?? this.params,
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      total: total ?? this.total,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      isLoadMoreLoading: isLoadMoreLoading ?? this.isLoadMoreLoading,
    );

  bool get hasMore => currentPage < lastPage;

  @override
  List<Object?> get props => [
        status,
        categoriesStatus,
        products,
        categories,
        params,
        currentPage,
        lastPage,
        total,
        errorMessage,
        isLoadMoreLoading,
      ];
}
