import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/category/domain/entities/category_detail_entity.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/home/domain/entities/sub_category_entity.dart';

part 'category_detail_model.freezed.dart';

@freezed
abstract class CategoryDetailModel with _$CategoryDetailModel {
  const CategoryDetailModel._();

  const factory CategoryDetailModel({
    required CategoryEntity category,
    required PaginatedResponse<SubCategoryEntity> subCategories,
  }) = _CategoryDetailModel;

  factory CategoryDetailModel.fromJson({
    required Map<String, dynamic> category,
    required List<dynamic> subCategories,
    Map<String, dynamic>? pagination,
  }) {
    final subCategoriesList = subCategories
        .map(
          (e) => SubCategoryEntity(
            id: (e as Map<String, dynamic>)['id'] as int? ?? 0,
            name: e['name'] as String? ?? '',
            image: e['image'] as String? ?? '',
          ),
        )
        .toList();

    return CategoryDetailModel(
      category: CategoryEntity(
        id: category['id'] as int? ?? 0,
        name: category['name'] as String? ?? '',
        image: category['image'] as String? ?? '',
      ),
      subCategories: PaginatedResponse<SubCategoryEntity>(
        data: subCategoriesList,
        currentPage: pagination?['current_page'] as int? ?? 1,
        lastPage: pagination?['last_page'] as int? ?? 1,
        total: pagination?['total'] as int? ?? subCategoriesList.length,
      ),
    );
  }

  CategoryDetailEntity toEntity() => CategoryDetailEntity(
        category: category,
        subCategories: subCategories,
      );
}
