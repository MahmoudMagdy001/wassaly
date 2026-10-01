import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/sub_category_entity.dart';

part 'category_event.freezed.dart';

@freezed
sealed class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.fetchCategoryDetail(int categoryId) =
      FetchCategoryDetailEvent;
  const factory CategoryEvent.loadMoreSubCategories(int categoryId) =
      LoadMoreSubCategoriesEvent;
  const factory CategoryEvent.selectSubCategory(
    SubCategoryEntity subCategory,
  ) = SelectSubCategoryEvent;
}
