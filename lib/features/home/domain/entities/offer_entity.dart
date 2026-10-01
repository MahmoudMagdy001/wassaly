import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_entity.freezed.dart';

@freezed
abstract class OfferEntity with _$OfferEntity {
  const factory OfferEntity({
    required int id,
    required int discountPercentage,
  }) = _OfferEntity;
}
