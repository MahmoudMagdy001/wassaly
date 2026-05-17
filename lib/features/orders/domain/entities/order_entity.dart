import 'package:wassaly/core/imports/imports.dart';
import 'order_item_entity.dart';

class OrderEntity extends Equatable {
  final int id;
  final String orderNumber;
  final String status;
  final double totalPrice;
  final String paymentMethod;
  final double deliveryFees;
  final List<OrderItemEntity> items;
  final String createdAt;
  final double? subTotal;
  final double? discountAmount;
  final String? customerName;
  final String? customerPhone;
  final String? deliveryAddress;
  final String? governorateName;
  final String? centerName;

  const OrderEntity({
    required this.id,
    required this.orderNumber,
    required this.status,
    required this.totalPrice,
    required this.paymentMethod,
    required this.deliveryFees,
    required this.items,
    required this.createdAt,
    this.subTotal,
    this.discountAmount,
    this.customerName,
    this.customerPhone,
    this.deliveryAddress,
    this.governorateName,
    this.centerName,
  });

  @override
  List<Object?> get props => [
        id,
        orderNumber,
        status,
        totalPrice,
        paymentMethod,
        deliveryFees,
        items,
        createdAt,
        subTotal,
        discountAmount,
        customerName,
        customerPhone,
        deliveryAddress,
        governorateName,
        centerName,
      ];
}

