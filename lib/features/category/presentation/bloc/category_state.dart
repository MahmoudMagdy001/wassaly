import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/category/domain/entities/category_detail_entity.dart';
import 'package:wassaly/features/home/domain/entities/sub_category_entity.dart';

part 'category_state.freezed.dart';

enum CategoryStatus { initial, loading, success, failure }

@freezed
abstract class CategoryState with _$CategoryState {
  const CategoryState._();

  const factory CategoryState({
    @Default(CategoryStatus.initial) CategoryStatus status,
    CategoryDetailEntity? categoryDetail,
    @Default(PaginatedResponse(data: []))
    PaginatedResponse<SubCategoryEntity> subCategories,
    SubCategoryEntity? selectedSubCategory,
    @Default('') String errorMessage,
    @Default(false) bool isLoadingMore,
  }) = _CategoryState;

  bool get hasMoreSubCategories => subCategories.hasMore;
  int get currentPage => subCategories.currentPage;
}
