import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
abstract class ServiceModel with _$ServiceModel {
  const ServiceModel._();

  const factory ServiceModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default(0) num price,
    @JsonKey(name: 'is_favorite') @Default(false) bool isFavorite,
    String? image,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        id: json['id'] as int? ?? 0,
        title: json['title'] as String? ?? json['service'] as String? ?? '',
        description: json['description'] as String? ?? '',
        image: json['image'] as String?,
        price: num.tryParse(json['price']?.toString() ?? '0') ?? 0,
        isFavorite: json['is_favorite'] as bool? ?? false,
      );

  ServiceEntity toEntity() => ServiceEntity(
        id: id,
        title: title,
        description: description,
        price: price,
        isFavorite: isFavorite,
        image: image,
      );
}
