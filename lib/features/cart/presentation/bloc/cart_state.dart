import 'package:equatable/equatable.dart';

import '../../domain/entities/cart_item_entity.dart';
import '../../domain/entities/coupon_entity.dart';

enum CartStatus { initial, loading, success, error }

enum CouponStatus { initial, loading, success, error }

enum CheckoutStatus { initial, loading, success, error }

class CartState extends Equatable {
  final CartStatus status;
  final List<CartItemEntity> items;
  final int cartCount;
  final Set<int> inCartProductIds;
  final Set<int> addingProductIds;
  final String? errorMessage;
  final CouponStatus couponStatus;
  final CouponEntity? appliedCoupon;
  final String? couponErrorMessage;
  final String couponCode;
  final String? selectedAddressId;
  final String customerName;
  final String phoneNumber;
  final CheckoutStatus checkoutStatus;
  final Map<String, dynamic>? orderData;

  const CartState({
    this.status = CartStatus.initial,
    this.items = const [],
    this.cartCount = 0,
    this.inCartProductIds = const {},
    this.addingProductIds = const {},
    this.errorMessage,
    this.couponStatus = CouponStatus.initial,
    this.appliedCoupon,
    this.couponErrorMessage,
    this.couponCode = '',
    this.selectedAddressId,
    this.customerName = '',
    this.phoneNumber = '',
    this.checkoutStatus = CheckoutStatus.initial,
    this.orderData,
  });

  bool get isLoading => status == CartStatus.loading;
  bool get isSuccess => status == CartStatus.success;
  bool get isError => status == CartStatus.error;
  bool get isApplyingCoupon => couponStatus == CouponStatus.loading;
  bool get hasCoupon => appliedCoupon != null;
  bool get isPhoneValid {
    final normalized = phoneNumber.replaceAll(RegExp(r'[\s-]'), '');
    return RegExp(r'^\+?[0-9]{10,15}$').hasMatch(normalized);
  }

  bool get isOrderInfoComplete =>
      (selectedAddressId?.isNotEmpty ?? false) &&
      customerName.trim().isNotEmpty &&
      phoneNumber.trim().isNotEmpty &&
      isPhoneValid;

  bool get isCheckingOut => checkoutStatus == CheckoutStatus.loading;
  bool get isCheckoutSuccess => checkoutStatus == CheckoutStatus.success;

  bool isInCart(int productId) => inCartProductIds.contains(productId);
  bool isAdding(int productId) => addingProductIds.contains(productId);

  CartState copyWith({
    CartStatus? status,
    List<CartItemEntity>? items,
    int? cartCount,
    Set<int>? inCartProductIds,
    Set<int>? addingProductIds,
    String? errorMessage,
    CouponStatus? couponStatus,
    CouponEntity? appliedCoupon,
    String? couponErrorMessage,
    String? couponCode,
    String? selectedAddressId,
    String? customerName,
    String? phoneNumber,
    CheckoutStatus? checkoutStatus,
    Map<String, dynamic>? orderData,
    bool clearCoupon = false,
    bool clearCouponError = false,
    bool clearOrderData = false,
  }) {
    return CartState(
      status: status ?? this.status,
      items: items ?? this.items,
      cartCount: cartCount ?? this.cartCount,
      inCartProductIds: inCartProductIds ?? this.inCartProductIds,
      addingProductIds: addingProductIds ?? this.addingProductIds,
      errorMessage: errorMessage,
      couponStatus: couponStatus ?? this.couponStatus,
      appliedCoupon: clearCoupon ? null : (appliedCoupon ?? this.appliedCoupon),
      couponErrorMessage: clearCouponError
          ? null
          : (couponErrorMessage ?? this.couponErrorMessage),
      couponCode: couponCode ?? this.couponCode,
      selectedAddressId: selectedAddressId ?? this.selectedAddressId,
      customerName: customerName ?? this.customerName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      checkoutStatus: checkoutStatus ?? this.checkoutStatus,
      orderData: clearOrderData ? null : (orderData ?? this.orderData),
    );
  }

  @override
  List<Object?> get props => [
        status,
        items,
        cartCount,
        inCartProductIds,
        addingProductIds,
        errorMessage,
        couponStatus,
        appliedCoupon,
        couponErrorMessage,
        couponCode,
        selectedAddressId,
        customerName,
        phoneNumber,
        checkoutStatus,
        orderData,
      ];
}
