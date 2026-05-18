part of 'checkout_bloc.dart';

abstract class CheckoutEvent extends Equatable {
  const CheckoutEvent();

  @override
  List<Object?> get props => [];
}

class CheckoutInitialized extends CheckoutEvent {
  final CartState cartState;

  const CheckoutInitialized({required this.cartState});

  @override
  List<Object?> get props => [cartState];
}

class CheckoutGovernorateSelected extends CheckoutEvent {
  final String governorateId;
  final String? centerId;

  const CheckoutGovernorateSelected(this.governorateId, {this.centerId});

  @override
  List<Object?> get props => [governorateId, centerId];
}

class CheckoutCenterSelected extends CheckoutEvent {
  final String centerId;

  const CheckoutCenterSelected(this.centerId);

  @override
  List<Object?> get props => [centerId];
}

class CheckoutFormChanged extends CheckoutEvent {
  final String? customerName;
  final String? customerPhone;
  final String? customerAddress;
  final String? region;
  final String? couponCode;

  const CheckoutFormChanged({
    this.customerName,
    this.customerPhone,
    this.customerAddress,
    this.region,
    this.couponCode,
  });

  @override
  List<Object?> get props =>
      [customerName, customerPhone, customerAddress, region, couponCode];
}

class CheckoutCouponApplied extends CheckoutEvent {
  final String code;

  const CheckoutCouponApplied(this.code);

  @override
  List<Object?> get props => [code];
}

class CheckoutCouponRemoved extends CheckoutEvent {
  const CheckoutCouponRemoved();
}

class CheckoutSubmitted extends CheckoutEvent {
  const CheckoutSubmitted();
}

class CheckoutAddressSelected extends CheckoutEvent {
  final AddressEntity address;

  const CheckoutAddressSelected(this.address);

  @override
  List<Object?> get props => [address];
}

class CheckoutAddressesRefreshed extends CheckoutEvent {
  const CheckoutAddressesRefreshed();
}
