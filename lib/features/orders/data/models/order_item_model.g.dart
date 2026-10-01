// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    _OrderItemModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      totalPrice: (json['total_price'] as num?)?.toDouble() ?? 0.0,
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
      'product': instance.product,
    };
