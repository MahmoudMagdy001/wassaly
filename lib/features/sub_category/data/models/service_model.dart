import '../../domain/entities/service_entity.dart';

class ServiceModel extends ServiceEntity {
  const ServiceModel({
    required super.id,
    required super.title,
    required super.description,
    super.image,
    required super.price,
    required super.isFavorite,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? json['service'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String?,
      price: num.tryParse(json['price']?.toString() ?? '0') ?? 0,
      isFavorite: json['is_favorite'] as bool? ?? false,
    );
  }
}
