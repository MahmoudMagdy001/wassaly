import 'package:freezed_annotation/freezed_annotation.dart';

part 'governorate_entity.freezed.dart';

@freezed
abstract class GovernorateEntity with _$GovernorateEntity {
  const factory GovernorateEntity({
    required String id,
    required String name,
    required double shippingCost,
  }) = _GovernorateEntity;
}
