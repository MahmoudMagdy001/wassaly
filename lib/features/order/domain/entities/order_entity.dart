import 'package:wassaly/core/imports/imports.dart';

enum OrderStatus {
  pending,
  accepted,
  processing,
  shipped,
  delivered,
  cancelled;

  static OrderStatus fromString(String status) {
    status = status.toLowerCase();
    if (status.contains('pending') || status.contains('انتظار')) return OrderStatus.pending;
    if (status.contains('accepted') || status.contains('قبول')) return OrderStatus.accepted;
    if (status.contains('processing') || status.contains('تجهيز') || status.contains('تنفيذ')) return OrderStatus.processing;
    if (status.contains('shipped') || status.contains('شحن')) return OrderStatus.shipped;
    if (status.contains('delivered') || status.contains('توصيل')) return OrderStatus.delivered;
    if (status.contains('cancelled') || status.contains('ملغي')) return OrderStatus.cancelled;
    return OrderStatus.pending;
  }

  String get label {
    switch (this) {
      case OrderStatus.pending:
        return 'order.status_pending';
      case OrderStatus.accepted:
        return 'order.status_accepted';
      case OrderStatus.processing:
        return 'order.status_processing';
      case OrderStatus.shipped:
        return 'order.status_shipped';
      case OrderStatus.delivered:
        return 'order.status_delivered';
      case OrderStatus.cancelled:
        return 'order.status_cancelled';
    }
  }
}

class OrderEntity extends Equatable {
  final int id;
  final String orderNumber;
  final OrderStatus status;
  final double totalPrice;
  final double subTotal;
  final double discountAmount;
  final double deliveryFees;
  final String paymentMethod;
  final String? customerName;
  final String? customerPhone;
  final String? deliveryAddress;
  final String? governorateName;
  final String? centerName;
  final DateTime createdAt;
  final List<OrderItemEntity> items;

  const OrderEntity({
    required this.id,
    required this.orderNumber,
    required this.status,
    required this.totalPrice,
    required this.subTotal,
    required this.discountAmount,
    required this.deliveryFees,
    required this.paymentMethod,
    this.customerName,
    this.customerPhone,
    this.deliveryAddress,
    this.governorateName,
    this.centerName,
    required this.createdAt,
    required this.items,
  });

  @override
  List<Object?> get props => [
        id,
        orderNumber,
        status,
        totalPrice,
        subTotal,
        discountAmount,
        deliveryFees,
        paymentMethod,
        customerName,
        customerPhone,
        deliveryAddress,
        governorateName,
        centerName,
        createdAt,
        items,
      ];
}

class OrderItemEntity extends Equatable {
  final int id;
  final int? productId;
  final String? productName;
  final String? productImage;
  final double price;
  final int quantity;
  final double totalPrice;

  const OrderItemEntity({
    required this.id,
    this.productId,
    this.productName,
    this.productImage,
    required this.price,
    required this.quantity,
    required this.totalPrice,
  });

  @override
  List<Object?> get props => [id, productId, productName, productImage, price, quantity, totalPrice];
}
