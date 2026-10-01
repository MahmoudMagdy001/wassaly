import 'package:freezed_annotation/freezed_annotation.dart';

part 'center_entity.freezed.dart';

@freezed
abstract class CenterEntity with _$CenterEntity {
  const factory CenterEntity({
    required String id,
    required String name,
    required String governorateId,
  }) = _CenterEntity;
}
