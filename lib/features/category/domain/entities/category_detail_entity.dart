import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/home/domain/entities/sub_category_entity.dart';

part 'category_detail_entity.freezed.dart';

@freezed
abstract class CategoryDetailEntity with _$CategoryDetailEntity {
  const factory CategoryDetailEntity({
    required CategoryEntity category,
    required PaginatedResponse<SubCategoryEntity> subCategories,
  }) = _CategoryDetailEntity;
}
