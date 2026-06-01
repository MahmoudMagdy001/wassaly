import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object?> get props => [];
}

class LoadCartItemsEvent extends CartEvent {
  const LoadCartItemsEvent();
}

class AddToCartEvent extends CartEvent {
  final int productId;
  final int quantity;

  const AddToCartEvent(this.productId, {this.quantity = 1});

  @override
  List<Object?> get props => [productId, quantity];
}

class RemoveFromCartEvent extends CartEvent {
  final int cartItemId;

  const RemoveFromCartEvent(this.cartItemId);

  @override
  List<Object?> get props => [cartItemId];
}

class UpdateQuantityEvent extends CartEvent {
  final int cartItemId;
  final int quantity;

  const UpdateQuantityEvent({required this.cartItemId, required this.quantity});

  @override
  List<Object?> get props => [cartItemId, quantity];
}

class CheckIfInCartEvent extends CartEvent {
  final int productId;

  const CheckIfInCartEvent(this.productId);

  @override
  List<Object?> get props => [productId];
}

class GetCartCountEvent extends CartEvent {
  const GetCartCountEvent();
}

class ApplyCouponEvent extends CartEvent {
  final String code;

  const ApplyCouponEvent(this.code);

  @override
  List<Object?> get props => [code];
}

class ClearCouponEvent extends CartEvent {
  const ClearCouponEvent();
}

class CouponCodeChangedEvent extends CartEvent {
  final String code;

  const CouponCodeChangedEvent(this.code);

  @override
  List<Object?> get props => [code];
}

class SelectedAddressChangedEvent extends CartEvent {
  final String? addressId;

  const SelectedAddressChangedEvent(this.addressId);

  @override
  List<Object?> get props => [addressId];
}

class PhoneNumberChangedEvent extends CartEvent {
  final String phoneNumber;

  const PhoneNumberChangedEvent(this.phoneNumber);

  @override
  List<Object?> get props => [phoneNumber];
}

class CustomerNameChangedEvent extends CartEvent {
  final String customerName;

  const CustomerNameChangedEvent(this.customerName);

  @override
  List<Object?> get props => [customerName];
}

class CheckoutEvent extends CartEvent {
  final String customerName;
  final String customerPhone;
  final int governorateId;
  final int centerId;
  final String region;
  final String address;
  final String? couponCode;

  const CheckoutEvent({
    required this.customerName,
    required this.customerPhone,
    required this.governorateId,
    required this.centerId,
    required this.region,
    required this.address,
    this.couponCode,
  });

  @override
  List<Object?> get props => [
        customerName,
        customerPhone,
        governorateId,
        centerId,
        region,
        address,
        couponCode,
      ];
}

class PrefillCustomerInfoEvent extends CartEvent {
  final String? name;
  final String? phone;

  const PrefillCustomerInfoEvent({this.name, this.phone});

  @override
  List<Object?> get props => [name, phone];
}
