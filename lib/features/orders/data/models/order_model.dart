import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/orders/data/models/order_item_model.dart';
import 'package:wassaly/features/orders/domain/entities/order_entity.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
abstract class OrderModel with _$OrderModel {
  const OrderModel._();

  const factory OrderModel({
    @Default(0) int id,
    @JsonKey(name: 'order_number') @Default('') String orderNumber,
    @Default('') String status,
    @JsonKey(name: 'total_price') @Default(0.0) double totalPrice,
    @JsonKey(name: 'payment_method') @Default('') String paymentMethod,
    @JsonKey(name: 'delivery_fees') @Default(0.0) double deliveryFees,
    @Default([]) List<OrderItemModel> items,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'sub_total') double? subTotal,
    @JsonKey(name: 'discount_amount') double? discountAmount,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'customer_phone') String? customerPhone,
    @JsonKey(name: 'delivery_address') String? deliveryAddress,
    @JsonKey(name: 'governorate_id') String? governorateId,
    @JsonKey(name: 'governorate_name') String? governorateName,
    @JsonKey(name: 'center_id') String? centerId,
    @JsonKey(name: 'center_name') String? centerName,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json['id'] as int? ?? 0,
        orderNumber: json['order_number'] as String? ?? '',
        status: json['status'] as String? ?? '',
        totalPrice: (json['total_price'] as num? ?? 0).toDouble(),
        paymentMethod: json['payment_method'] as String? ?? '',
        deliveryFees: (json['delivery_fees'] as num? ?? 0).toDouble(),
        items: (json['items'] as List<dynamic>?)
                ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        createdAt: json['created_at'] as String? ?? '',
        subTotal: (json['sub_total'] as num?)?.toDouble(),
        discountAmount: (json['discount_amount'] as num?)?.toDouble(),
        customerName: json['customer_name'] as String?,
        customerPhone: json['customer_phone'] as String?,
        deliveryAddress: json['delivery_address'] as String?,
        governorateId:
            (json['governorate'] as Map<String, dynamic>?)?['id']?.toString(),
        governorateName:
            (json['governorate'] as Map<String, dynamic>?)?['name'] as String?,
        centerId: (json['center'] as Map<String, dynamic>?)?['id']?.toString(),
        centerName: (json['center'] as Map<String, dynamic>?)?['name'] as String?,
      );

  OrderEntity toEntity() => OrderEntity(
        id: id,
        orderNumber: orderNumber,
        status: status,
        totalPrice: totalPrice,
        paymentMethod: paymentMethod,
        deliveryFees: deliveryFees,
        items: items.map((i) => i.toEntity()).toList(),
        createdAt: createdAt,
        subTotal: subTotal,
        discountAmount: discountAmount,
        customerName: customerName,
        customerPhone: customerPhone,
        deliveryAddress: deliveryAddress,
        governorateId: governorateId,
        governorateName: governorateName,
        centerId: centerId,
        centerName: centerName,
      );
}
