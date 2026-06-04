import 'package:wassaly/features/cart/domain/entities/offer_entity.dart';

class OfferModel {
  final int id;
  final double discountPercentage;

  const OfferModel({
    required this.id,
    required this.discountPercentage,
  });

  factory OfferModel.fromEntity(OfferEntity entity) => OfferModel(
      id: entity.id,
      discountPercentage: entity.discountPercentage,
    );

  factory OfferModel.fromJson(Map<String, dynamic> json) => OfferModel(
      id: json['id'] as int? ?? 0,
      discountPercentage:
          (json['discount_percentage'] as num?)?.toDouble() ?? 0.0,
    );

  Map<String, dynamic> toJson() => {
      'id': id,
      'discount_percentage': discountPercentage,
    };

  OfferEntity toEntity() => OfferEntity(
      id: id,
      discountPercentage: discountPercentage,
    );
}
