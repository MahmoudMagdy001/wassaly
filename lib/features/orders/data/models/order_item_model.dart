import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/data/models/product_model.dart';
import 'package:wassaly/features/orders/domain/entities/order_item_entity.dart';

part 'order_item_model.freezed.dart';
part 'order_item_model.g.dart';

@freezed
abstract class OrderItemModel with _$OrderItemModel {
  const OrderItemModel._();

  const factory OrderItemModel({
    @Default(0) int id,
    @Default(0.0) double price,
    @Default(0) int quantity,
    @JsonKey(name: 'total_price') @Default(0.0) double totalPrice,
    ProductModel? product,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) => OrderItemModel(
        id: json['id'] as int? ?? 0,
        price: (json['price'] as num? ?? 0).toDouble(),
        quantity: json['quantity'] as int? ?? 0,
        totalPrice: (json['total_price'] as num? ?? 0).toDouble(),
        product: json['product'] != null
            ? ProductModel.fromJson(json['product'] as Map<String, dynamic>)
            : null,
      );

  OrderItemEntity toEntity() => OrderItemEntity(
        id: id,
        price: price,
        quantity: quantity,
        totalPrice: totalPrice,
        product: product?.toEntity(),
      );
}
