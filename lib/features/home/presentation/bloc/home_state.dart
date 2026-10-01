import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/home/domain/entities/banner_entity.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/home/domain/entities/sub_category_entity.dart';

part 'home_state.freezed.dart';

enum HomeStatus { initial, loading, success, failure }

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus bannersStatus,
    @Default([]) List<BannerEntity> banners,
    @Default(HomeStatus.initial) HomeStatus categoriesStatus,
    @Default([]) List<CategoryEntity> categories,
    @Default(HomeStatus.initial) HomeStatus popularServicesStatus,
    @Default(PaginatedResponse(data: []))
    PaginatedResponse<SubCategoryEntity> popularServices,
    @Default(false) bool isPopularServicesLoadingMore,
    @Default(HomeStatus.initial) HomeStatus productsStatus,
    @Default(PaginatedResponse(data: []))
    PaginatedResponse<ProductEntity> products,
    @Default(false) bool isProductsLoadingMore,
    Failure? failure,
  }) = _HomeState;

  /// Check if all sections failed (likely due to network error)
  bool get allSectionsFailed =>
      bannersStatus == HomeStatus.failure &&
      categoriesStatus == HomeStatus.failure &&
      popularServicesStatus == HomeStatus.failure &&
      productsStatus == HomeStatus.failure;

  /// Check if any section is still loading
  bool get anySectionLoading =>
      bannersStatus == HomeStatus.loading ||
      categoriesStatus == HomeStatus.loading ||
      popularServicesStatus == HomeStatus.loading ||
      productsStatus == HomeStatus.loading;

  /// Get error message for backward compatibility
  String get errorMessage => failure?.message ?? '';
}
