import 'package:wassaly/features/profile/domain/entities/governorate_entity.dart';

class GovernorateModel extends GovernorateEntity {
  const GovernorateModel({
    required super.id,
    required super.name,
    required super.shippingCost,
  });

  factory GovernorateModel.fromJson(Map<String, dynamic> json) {
    return GovernorateModel(
      id: json['id'].toString(),
      name: json['name'] as String? ?? '',
      shippingCost: (json['shipping_cost'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'shipping_cost': shippingCost,
    };
  }
}
