import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_entity.freezed.dart';

@freezed
abstract class BrandEntity with _$BrandEntity {
  const factory BrandEntity({
    required int id,
    required String name,
    required String image,
  }) = _BrandEntity;
}
