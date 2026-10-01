import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  const factory CategoryModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String image,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        image: json['image'] as String? ?? '',
      );

  CategoryEntity toEntity() => CategoryEntity(
        id: id,
        name: name,
        image: image,
      );
}
