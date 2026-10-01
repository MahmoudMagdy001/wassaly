import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/cart/domain/entities/cart_item_entity.dart';
import 'package:wassaly/features/cart/domain/entities/coupon_entity.dart';
import 'package:wassaly/features/cart/domain/entities/order_entity.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';
import 'package:wassaly/features/profile/domain/entities/center_entity.dart';
import 'package:wassaly/features/profile/domain/entities/governorate_entity.dart';

part 'checkout_state.freezed.dart';

enum CheckoutStatus { initial, loading, submitting, success, error }

@freezed
abstract class CheckoutState with _$CheckoutState {
  const CheckoutState._();

  const factory CheckoutState({
    @Default(CheckoutStatus.initial) CheckoutStatus status,

    // Form fields
    @Default('') String customerName,
    @Default('') String customerPhone,
    @Default('') String customerAddress,
    @Default('') String region,
    String? selectedGovernorateId,
    String? selectedCenterId,
    @Default('') String couponCode,

    // User Data & Addresses
    @Default([]) List<AddressEntity> addresses,
    AddressEntity? selectedAddress,
    @Default(false) bool isLoadingAddresses,

    // Lookup data
    @Default([]) List<GovernorateEntity> governorates,
    @Default([]) List<CenterEntity> centers,
    @Default(false) bool isLoadingGovernorates,
    @Default(false) bool isLoadingCenters,

    // Order summary
    @Default([]) List<CartItemEntity> items,
    @Default(0.0) double subtotal,
    @Default(0.0) double productDiscounts,
    @Default(0.0) double shippingFee,
    CouponEntity? appliedCoupon,
    @Default(0.0) double discountAmount,
    @Default(0.0) double total,

    // Coupon
    @Default(false) bool isApplyingCoupon,
    String? couponError,

    // Submission
    OrderEntity? placedOrder,
    String? errorMessage,

    // Validation errors
    String? nameError,
    String? phoneError,
    String? addressError,
    String? governorateError,
    String? centerError,
  }) = _CheckoutState;

  bool get isFormValid =>
      nameError == null &&
      phoneError == null &&
      addressError == null &&
      governorateError == null &&
      centerError == null &&
      customerName.isNotEmpty &&
      customerPhone.isNotEmpty &&
      customerAddress.isNotEmpty &&
      selectedGovernorateId != null &&
      selectedCenterId != null;
}
