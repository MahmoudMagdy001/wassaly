import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

class OrderItemEntity extends Equatable {
  final int id;
  final double price;
  final int quantity;
  final double totalPrice;
  final ProductEntity? product;

  const OrderItemEntity({
    required this.id,
    required this.price,
    required this.quantity,
    required this.totalPrice,
    this.product,
  });

  @override
  List<Object?> get props => [id, price, quantity, totalPrice, product];
}

