import '../../domain/entities/order_item_entity.dart';

class OrderItemModel extends OrderItemEntity {
  const OrderItemModel({
    required super.id,
    required super.price,
    required super.quantity,
    required super.totalPrice,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) {
    return OrderItemModel(
      id: json['id'] as int? ?? 0,
      price: (json['price'] as num? ?? 0).toDouble(),
      quantity: json['quantity'] as int? ?? 0,
      totalPrice: (json['total_price'] as num? ?? 0).toDouble(),
    );
  }
}
