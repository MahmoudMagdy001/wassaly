import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/features/cart/domain/entities/cart_checkout_entity.dart';
import 'package:wassaly/features/cart/domain/entities/cart_item_entity.dart';
import 'package:wassaly/features/cart/domain/entities/coupon_entity.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';

part 'cart_state.freezed.dart';

enum CartStatus { initial, loading, success, error }

@freezed
abstract class CartState with _$CartState {
  const CartState._();

  const factory CartState({
    @Default(CartStatus.initial) CartStatus status,
    @Default([]) List<CartItemEntity> items,
    @Default(0) int cartCount,
    @Default({}) Set<int> inCartProductIds,
    @Default({}) Set<int> addingProductIds,
    Failure? failure,

    // Address fields
    @Default([]) List<AddressEntity> addresses,
    AddressEntity? selectedAddress,
    @Default(false) bool isLoadingAddresses,
    Failure? addressesFailure,

    // Checkout data (for calculating shipping in cart page)
    CartCheckoutEntity? checkoutData,

    // Coupon data
    CouponEntity? appliedCoupon,
    @Default(false) bool isApplyingCoupon,
    Failure? couponFailure,
  }) = _CartState;

  bool get isLoading => status == CartStatus.loading;
  bool get isSuccess => status == CartStatus.success;
  bool get isError => status == CartStatus.error;

  bool isInCart(int productId) => inCartProductIds.contains(productId);
  bool isAdding(int productId) => addingProductIds.contains(productId);

  // Calculated getters
  double get totalOriginalPrice => items.fold<double>(
        0,
        (sum, item) =>
            sum + (double.tryParse(item.price) ?? 0.0) * item.quantity,
      );

  double get totalAfterProductOffers => items.fold<double>(
        0,
        (sum, item) {
          final originalPrice = double.tryParse(item.price) ?? 0.0;
          final hasOffer = item.offers != null && item.offers!.isNotEmpty;
          final discountedPrice = hasOffer
              ? originalPrice *
                  (1 - (item.offers!.first.discountPercentage / 100))
              : originalPrice;
          return sum + (discountedPrice * item.quantity);
        },
      );

  double get productOffersDiscount =>
      totalOriginalPrice - totalAfterProductOffers;

  double get total => totalAfterProductOffers.clamp(0.0, double.infinity);

  // Backward compatibility getters
  String get errorMessage => failure?.message ?? '';
  String get addressesError => addressesFailure?.message ?? '';
  String get couponError => couponFailure?.message ?? '';
}
