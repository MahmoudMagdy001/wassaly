import 'package:equatable/equatable.dart';

class GovernorateEntity extends Equatable {
  final String id;
  final String name;
  final double shippingCost;

  const GovernorateEntity({
    required this.id,
    required this.name,
    this.shippingCost = 0,
  });

  @override
  List<Object?> get props => [id, name, shippingCost];
}
