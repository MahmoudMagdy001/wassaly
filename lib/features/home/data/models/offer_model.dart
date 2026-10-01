import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/offer_entity.dart';

part 'offer_model.freezed.dart';
part 'offer_model.g.dart';

@freezed
abstract class OfferModel with _$OfferModel {
  const OfferModel._();

  const factory OfferModel({
    @Default(0) int id,
    @JsonKey(name: 'discount_percentage') @Default(0) int discountPercentage,
  }) = _OfferModel;

  factory OfferModel.fromJson(Map<String, dynamic> json) => OfferModel(
        id: json['id'] as int? ?? 0,
        discountPercentage:
            int.tryParse(json['discount_percentage']?.toString() ?? '') ?? 0,
      );

  OfferEntity toEntity() => OfferEntity(
        id: id,
        discountPercentage: discountPercentage,
      );
}
