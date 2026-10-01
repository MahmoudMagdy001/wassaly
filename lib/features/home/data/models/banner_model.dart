import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/banner_entity.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
abstract class BannerModel with _$BannerModel {
  const BannerModel._();

  const factory BannerModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String image,
    @Default('') String type,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        id: json['id'] as int? ?? 0,
        title: json['title'] as String? ?? '',
        description: json['description'] as String? ?? '',
        image: json['image'] as String? ?? '',
        type: json['type'] as String? ?? '',
      );

  BannerEntity toEntity() => BannerEntity(
        id: id,
        title: title,
        description: description,
        image: image,
        type: type,
      );
}
