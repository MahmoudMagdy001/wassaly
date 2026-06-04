import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/usecases/get_categories_usecase.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';
import 'package:wassaly/features/products_filter/domain/usecases/get_filtered_products_usecase.dart';
import 'package:wassaly/features/products_filter/presentation/bloc/products_filter_event.dart';
import 'package:wassaly/features/products_filter/presentation/bloc/products_filter_state.dart';

class ProductsFilterBloc
    extends Bloc<ProductsFilterEvent, ProductsFilterState> {
  final GetFilteredProductsUseCase _getFilteredProductsUseCase;
  final GetCategoriesUseCase _getCategoriesUseCase;

  ProductsFilterBloc({
    required GetFilteredProductsUseCase getFilteredProductsUseCase,
    required GetCategoriesUseCase getCategoriesUseCase,
  })  : _getFilteredProductsUseCase = getFilteredProductsUseCase,
        _getCategoriesUseCase = getCategoriesUseCase,
        super(const ProductsFilterState()) {
    on<FetchFilterCategoriesEvent>(_onFetchFilterCategories);
    on<FilterProductsEvent>(_onFilterProducts);
    on<ResetFiltersEvent>(_onResetFilters);
  }

  Future<void> _onFetchFilterCategories(
    FetchFilterCategoriesEvent event,
    Emitter<ProductsFilterState> emit,
  ) async {
    emit(state.copyWith(categoriesStatus: AppStatus.loading));
    final result = await _getCategoriesUseCase();
    result.fold(
      (failure) => emit(state.copyWith(
        categoriesStatus: AppStatus.failure,
        errorMessage: failure.message,
      ),),
      (categories) => emit(state.copyWith(
        categoriesStatus: AppStatus.success,
        categories: categories,
      ),),
    );
  }

  Future<void> _onFilterProducts(
    FilterProductsEvent event,
    Emitter<ProductsFilterState> emit,
  ) async {
    if (event.isLoadMore) {
      if (state.isLoadMoreLoading || !state.hasMore) return;
      emit(state.copyWith(isLoadMoreLoading: true));
      final nextPage = state.currentPage + 1;
      final result = await _getFilteredProductsUseCase(
        params: event.params,
        page: nextPage,
      );
      result.fold(
        (failure) => emit(state.copyWith(isLoadMoreLoading: false)),
        (response) => emit(state.copyWith(
          isLoadMoreLoading: false,
          currentPage: response.currentPage,
          lastPage: response.lastPage,
          total: response.total,
          products: [...state.products, ...response.data],
        ),),
      );
    } else {
      emit(state.copyWith(
        status: AppStatus.loading,
        params: event.params,
      ),);
      final result = await _getFilteredProductsUseCase(
        params: event.params,
      );
      result.fold(
        (failure) => emit(state.copyWith(
          status: AppStatus.failure,
          errorMessage: failure.message,
        ),),
        (response) => emit(state.copyWith(
          status: AppStatus.success,
          currentPage: response.currentPage,
          lastPage: response.lastPage,
          total: response.total,
          products: response.data,
        ),),
      );
    }
  }

  void _onResetFilters(
    ResetFiltersEvent event,
    Emitter<ProductsFilterState> emit,
  ) {
    emit(state.copyWith(
      status: AppStatus.initial,
      params: const ProductFilterParams(),
      products: const [],
      clearError: true,
    ),);
  }
}
