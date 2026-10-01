import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_entity.freezed.dart';

@freezed
abstract class BannerEntity with _$BannerEntity {
  const factory BannerEntity({
    required int id,
    required String title,
    required String description,
    required String image,
    required String type,
  }) = _BannerEntity;
}
