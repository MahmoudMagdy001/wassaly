import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

part 'sub_category_detail_entity.freezed.dart';

@freezed
abstract class SubCategoryDetailEntity with _$SubCategoryDetailEntity {
  const factory SubCategoryDetailEntity({
    required int id,
    required String name,
    required String image,
    required List<ServiceEntity> services,
    required PaginatedResponse<ProductEntity> products,
  }) = _SubCategoryDetailEntity;
}
