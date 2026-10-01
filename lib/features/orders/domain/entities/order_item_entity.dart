import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

part 'order_item_entity.freezed.dart';

@freezed
abstract class OrderItemEntity with _$OrderItemEntity {
  const factory OrderItemEntity({
    required int id,
    required double price,
    required int quantity,
    required double totalPrice,
    ProductEntity? product,
  }) = _OrderItemEntity;
}
