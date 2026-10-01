import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/cart/domain/entities/cart_item_entity.dart';

part 'place_order_params.freezed.dart';

@freezed
abstract class PlaceOrderParams with _$PlaceOrderParams {
  const factory PlaceOrderParams({
    required String customerName,
    required String customerPhone,
    required String customerAddress,
    required String governorateId,
    required String region,
    required String centerId,
    required List<CartItemEntity> items,
    String? couponCode,
  }) = _PlaceOrderParams;
}
