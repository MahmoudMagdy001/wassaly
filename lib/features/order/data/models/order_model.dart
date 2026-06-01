import 'package:wassaly/features/order/domain/entities/order_entity.dart';

class OrderModel extends OrderEntity {
  const OrderModel({
    required super.id,
    required super.orderNumber,
    required super.status,
    required super.totalPrice,
    required super.subTotal,
    required super.discountAmount,
    required super.deliveryFees,
    required super.paymentMethod,
    super.customerName,
    super.customerPhone,
    super.deliveryAddress,
    super.governorateName,
    super.centerName,
    required super.createdAt,
    required super.items,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'] as int,
      orderNumber: json['order_number'] as String? ?? '',
      status: OrderStatus.fromString(json['status'] as String? ?? ''),
      totalPrice: (json['total_price'] as num?)?.toDouble() ?? 0.0,
      subTotal: (json['sub_total'] as num?)?.toDouble() ?? (json['total_price'] as num?)?.toDouble() ?? 0.0,
      discountAmount: (json['discount_amount'] as num?)?.toDouble() ?? 0.0,
      deliveryFees: (json['delivery_fees'] as num?)?.toDouble() ?? 0.0,
      paymentMethod: json['payment_method'] as String? ?? '',
      customerName: json['customer_name'] as String?,
      customerPhone: json['customer_phone'] as String?,
      deliveryAddress: json['delivery_address'] as String?,
      governorateName: (json['governorate'] as Map<String, dynamic>?)?['name'] as String?,
      centerName: (json['center'] as Map<String, dynamic>?)?['name'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
}

class OrderItemModel extends OrderItemEntity {
  const OrderItemModel({
    required super.id,
    super.productId,
    super.productName,
    super.productImage,
    required super.price,
    required super.quantity,
    required super.totalPrice,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) {
    final productJson = json['product'] as Map<String, dynamic>?;
    return OrderItemModel(
      id: json['id'] as int,
      productId: productJson?['id'] as int?,
      productName: productJson?['name'] as String?,
      productImage: productJson?['image'] as String?,
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      quantity: json['quantity'] as int? ?? 0,
      totalPrice: (json['total_price'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
