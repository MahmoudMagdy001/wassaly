import '../../domain/entities/order_item_entity.dart';
import 'package:wassaly/features/home/data/models/product_model.dart';

class OrderItemModel extends OrderItemEntity {
  const OrderItemModel({
    required super.id,
    required super.price,
    required super.quantity,
    required super.totalPrice,
    super.product,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) {
    return OrderItemModel(
      id: json['id'] as int? ?? 0,
      price: (json['price'] as num? ?? 0).toDouble(),
      quantity: json['quantity'] as int? ?? 0,
      totalPrice: (json['total_price'] as num? ?? 0).toDouble(),
      product: json['product'] != null
          ? ProductModel.fromJson(json['product'] as Map<String, dynamic>)
          : null,
    );
  }
}

