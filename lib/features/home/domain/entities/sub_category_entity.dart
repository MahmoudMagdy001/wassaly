import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

part 'sub_category_entity.freezed.dart';

@freezed
abstract class SubCategoryEntity with _$SubCategoryEntity {
  const factory SubCategoryEntity({
    required int id,
    required String name,
    required String image,
    List<ServiceEntity>? services,
  }) = _SubCategoryEntity;
}
