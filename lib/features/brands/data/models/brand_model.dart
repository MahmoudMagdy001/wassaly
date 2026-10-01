import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/brands/domain/entities/brand_entity.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
abstract class BrandModel with _$BrandModel {
  const BrandModel._();

  const factory BrandModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String image,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) => BrandModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        image: json['image'] as String? ?? '',
      );

  BrandEntity toEntity() => BrandEntity(
        id: id,
        name: name,
        image: image,
      );
}
