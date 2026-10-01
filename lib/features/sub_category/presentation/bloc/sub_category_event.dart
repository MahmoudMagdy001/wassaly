import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_event.freezed.dart';

@freezed
sealed class SubCategoryEvent with _$SubCategoryEvent {
  const factory SubCategoryEvent.fetchSubCategoryDetail(int subCategoryId) =
      FetchSubCategoryDetailEvent;
  const factory SubCategoryEvent.loadMoreProducts(int subCategoryId) =
      LoadMoreProductsEvent;
}
