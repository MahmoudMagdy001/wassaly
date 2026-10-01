import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/sub_category/domain/entities/sub_category_detail_entity.dart';

part 'sub_category_state.freezed.dart';

enum SubCategoryStatus { initial, loading, success, failure }

@freezed
abstract class SubCategoryState with _$SubCategoryState {
  const SubCategoryState._();

  const factory SubCategoryState({
    @Default(SubCategoryStatus.initial) SubCategoryStatus status,
    SubCategoryDetailEntity? subCategory,
    @Default(PaginatedResponse(data: []))
    PaginatedResponse<ProductEntity> products,
    @Default('') String errorMessage,
    @Default(false) bool isLoadingMore,
  }) = _SubCategoryState;

  bool get hasMoreProducts => products.hasMore;
  int get currentPage => products.currentPage;
}
