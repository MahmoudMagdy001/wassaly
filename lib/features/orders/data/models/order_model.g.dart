// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  orderNumber: json['order_number'] as String? ?? '',
  status: json['status'] as String? ?? '',
  totalPrice: (json['total_price'] as num?)?.toDouble() ?? 0.0,
  paymentMethod: json['payment_method'] as String? ?? '',
  deliveryFees: (json['delivery_fees'] as num?)?.toDouble() ?? 0.0,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: json['created_at'] as String? ?? '',
  subTotal: (json['sub_total'] as num?)?.toDouble(),
  discountAmount: (json['discount_amount'] as num?)?.toDouble(),
  customerName: json['customer_name'] as String?,
  customerPhone: json['customer_phone'] as String?,
  deliveryAddress: json['delivery_address'] as String?,
  governorateId: json['governorate_id'] as String?,
  governorateName: json['governorate_name'] as String?,
  centerId: json['center_id'] as String?,
  centerName: json['center_name'] as String?,
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'status': instance.status,
      'total_price': instance.totalPrice,
      'payment_method': instance.paymentMethod,
      'delivery_fees': instance.deliveryFees,
      'items': instance.items,
      'created_at': instance.createdAt,
      'sub_total': instance.subTotal,
      'discount_amount': instance.discountAmount,
      'customer_name': instance.customerName,
      'customer_phone': instance.customerPhone,
      'delivery_address': instance.deliveryAddress,
      'governorate_id': instance.governorateId,
      'governorate_name': instance.governorateName,
      'center_id': instance.centerId,
      'center_name': instance.centerName,
    };
