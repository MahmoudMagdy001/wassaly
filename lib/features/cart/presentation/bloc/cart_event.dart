import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.freezed.dart';

@freezed
sealed class CartEvent with _$CartEvent {
  const factory CartEvent.loadCartItems({
    @Default(false) bool silent,
  }) = LoadCartItemsEvent;
  const factory CartEvent.addToCart(
    int productId, {
    @Default(1) int quantity,
  }) = AddToCartEvent;
  const factory CartEvent.removeFromCart(int cartItemId) =
      RemoveFromCartEvent;
  const factory CartEvent.updateQuantity({
    required int cartItemId,
    required int quantity,
  }) = UpdateQuantityEvent;
  const factory CartEvent.checkIfInCart(int productId) =
      CheckIfInCartEvent;
  const factory CartEvent.getCartCount() = GetCartCountEvent;
  const factory CartEvent.loadAddresses() = LoadAddressesEvent;
  const factory CartEvent.selectAddress(String addressId) =
      SelectAddressEvent;
  const factory CartEvent.clearCart() = ClearCartEvent;
}
