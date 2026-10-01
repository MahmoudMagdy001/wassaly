import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/orders/domain/entities/order_item_entity.dart';

part 'order_entity.freezed.dart';

@freezed
abstract class OrderEntity with _$OrderEntity {
  const OrderEntity._();

  const factory OrderEntity({
    required int id,
    required String orderNumber,
    required String status,
    required double totalPrice,
    required String paymentMethod,
    required double deliveryFees,
    required List<OrderItemEntity> items,
    required String createdAt,
    double? subTotal,
    double? discountAmount,
    String? customerName,
    String? customerPhone,
    String? deliveryAddress,
    String? governorateId,
    String? governorateName,
    String? centerId,
    String? centerName,
  }) = _OrderEntity;

  bool get isCancelled {
    final normStatus = status.trim().toLowerCase();
    return normStatus.contains('cancelled') ||
        normStatus.contains('ملغي') ||
        normStatus.contains('rejected') ||
        normStatus.contains('failed');
  }

  bool get isPending {
    final normStatus = status.trim().toLowerCase();
    return normStatus.contains('pending') ||
        normStatus.contains('قيد الانتظار') ||
        normStatus.contains('new') ||
        normStatus.contains('جديد');
  }

  bool get isDelivered {
    final normStatus = status.trim().toLowerCase();
    return normStatus.contains('delivered') ||
        normStatus.contains('completed') ||
        normStatus.contains('تم التوصيل') ||
        normStatus.contains('مكتمل') ||
        normStatus.contains('success');
  }

  bool get canDelete => isDelivered || isCancelled;
  bool get canCancelOrUpdate => isPending;
}
