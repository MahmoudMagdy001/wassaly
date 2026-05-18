import '../../../sub_category/data/models/service_model.dart';
import '../../domain/entities/sub_category_entity.dart';

class SubCategoryModel extends SubCategoryEntity {
  const SubCategoryModel({
    required super.id,
    required super.name,
    required super.image,
    super.services,
  });

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) {
    return SubCategoryModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
}
