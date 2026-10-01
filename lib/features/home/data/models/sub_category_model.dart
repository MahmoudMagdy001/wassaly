import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/sub_category_entity.dart';
import 'package:wassaly/features/sub_category/data/models/service_model.dart';

part 'sub_category_model.freezed.dart';
part 'sub_category_model.g.dart';

@freezed
abstract class SubCategoryModel with _$SubCategoryModel {
  const SubCategoryModel._();

  const factory SubCategoryModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String image,
    List<ServiceModel>? services,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      SubCategoryModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        image: json['image'] as String? ?? '',
        services: (json['services'] as List<dynamic>?)
            ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  SubCategoryEntity toEntity() => SubCategoryEntity(
        id: id,
        name: name,
        image: image,
        services: services?.map((s) => s.toEntity()).toList(),
      );
}
