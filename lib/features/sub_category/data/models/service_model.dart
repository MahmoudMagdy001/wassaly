import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

class ServiceModel extends ServiceEntity {
  const ServiceModel({
    required super.id,
    required super.title,
    required super.description,
    required super.price, required super.isFavorite, super.image,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? json['service'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String?,
      price: num.tryParse(json['price']?.toString() ?? '0') ?? 0,
      isFavorite: json['is_favorite'] as bool? ?? false,
    );
}
