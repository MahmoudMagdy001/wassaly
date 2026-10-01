import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_entity.freezed.dart';

@freezed
abstract class ServiceEntity with _$ServiceEntity {
  const factory ServiceEntity({
    required int id,
    required String title,
    required String description,
    required num price,
    required bool isFavorite,
    String? image,
  }) = _ServiceEntity;
}
