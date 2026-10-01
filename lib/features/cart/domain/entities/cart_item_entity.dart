import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/cart/domain/entities/offer_entity.dart';

part 'cart_item_entity.freezed.dart';

@freezed
abstract class CartItemEntity with _$CartItemEntity {
  const factory CartItemEntity({
    required int id,
    required int productId,
    required String productName,
    required String productImage,
    required String price,
    required int quantity,
    String? productDescription,
    List<OfferEntity>? offers,
    @Default(0.0) double unitPrice,
    @Default(0.0) double totalPrice,
  }) = _CartItemEntity;
}
