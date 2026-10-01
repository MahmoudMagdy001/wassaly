import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';
import 'package:wassaly/features/profile/domain/entities/governorate_entity.dart';

part 'cart_checkout_entity.freezed.dart';

@freezed
abstract class CartCheckoutEntity with _$CartCheckoutEntity {
  const factory CartCheckoutEntity({
    UserEntity? user,
    AddressEntity? selectedAddress,
    GovernorateEntity? governorate,
    @Default(0.0) double shippingCost,
    @Default(0.0) double subtotal,
    @Default(0.0) double total,
  }) = _CartCheckoutEntity;
}
