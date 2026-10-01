import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';

part 'checkout_event.freezed.dart';

@freezed
sealed class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.initialized({
    required CartState cartState,
  }) = CheckoutInitialized;

  const factory CheckoutEvent.governorateSelected(
    String governorateId, {
    String? centerId,
  }) = CheckoutGovernorateSelected;

  const factory CheckoutEvent.centerSelected(
    String centerId,
  ) = CheckoutCenterSelected;

  const factory CheckoutEvent.formChanged({
    String? customerName,
    String? customerPhone,
    String? customerAddress,
    String? region,
    String? couponCode,
  }) = CheckoutFormChanged;

  const factory CheckoutEvent.couponApplied(
    String code,
  ) = CheckoutCouponApplied;

  const factory CheckoutEvent.couponRemoved() = CheckoutCouponRemoved;

  const factory CheckoutEvent.submitted() = CheckoutSubmitted;

  const factory CheckoutEvent.addressSelected(
    AddressEntity address,
  ) = CheckoutAddressSelected;

  const factory CheckoutEvent.addressesRefreshed() = CheckoutAddressesRefreshed;
}
