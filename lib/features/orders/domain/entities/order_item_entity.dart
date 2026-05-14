import 'package:wassaly/core/imports/imports.dart';

class OrderItemEntity extends Equatable {
  final int id;
  final double price;
  final int quantity;
  final double totalPrice;

  const OrderItemEntity({
    required this.id,
    required this.price,
    required this.quantity,
    required this.totalPrice,
  });

  @override
  List<Object?> get props => [id, price, quantity, totalPrice];
}
