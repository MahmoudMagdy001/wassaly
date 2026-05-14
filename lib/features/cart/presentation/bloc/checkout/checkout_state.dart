part of 'checkout_bloc.dart';

enum CheckoutStatus { initial, loading, submitting, success, error }

class CheckoutState extends Equatable {
  final CheckoutStatus status;

  // Form fields
  final String customerName;
  final String customerPhone;
  final String customerAddress;
  final String region;
  final String? selectedGovernorateId;
  final String? selectedCenterId;
  final String couponCode;

  // User Data & Addresses
  final List<AddressEntity> addresses;
  final AddressEntity? selectedAddress;
  final bool isLoadingAddresses;

  // Lookup data
  final List<GovernorateEntity> governorates;
  final List<CenterEntity> centers;
  final bool isLoadingGovernorates;
  final bool isLoadingCenters;

  // Order summary
  final List<CartItemEntity> items;
  final double subtotal;
  final double productDiscounts;
  final double shippingFee;
  final CouponEntity? appliedCoupon;
  final double discountAmount;
  final double total;

  // Coupon
  final bool isApplyingCoupon;
  final String? couponError;

  // Submission
  final OrderEntity? placedOrder;
  final String? errorMessage;

  // Validation errors
  final String? nameError;
  final String? phoneError;
  final String? addressError;
  final String? governorateError;
  final String? centerError;

  const CheckoutState({
    this.status = CheckoutStatus.initial,
    this.customerName = '',
    this.customerPhone = '',
    this.customerAddress = '',
    this.region = '',
    this.selectedGovernorateId,
    this.selectedCenterId,
    this.couponCode = '',
    this.addresses = const [],
    this.selectedAddress,
    this.isLoadingAddresses = false,
    this.governorates = const [],
    this.centers = const [],
    this.isLoadingGovernorates = false,
    this.isLoadingCenters = false,
    this.items = const [],
    this.subtotal = 0.0,
    this.productDiscounts = 0.0,
    this.shippingFee = 0.0,
    this.appliedCoupon,
    this.discountAmount = 0.0,
    this.total = 0.0,
    this.isApplyingCoupon = false,
    this.couponError,
    this.placedOrder,
    this.errorMessage,
    this.nameError,
    this.phoneError,
    this.addressError,
    this.governorateError,
    this.centerError,
  });

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

  CheckoutState copyWith({
    CheckoutStatus? status,
    String? customerName,
    String? customerPhone,
    String? customerAddress,
    String? region,
    String? selectedGovernorateId,
    bool clearSelectedGovernorateId = false,
    String? selectedCenterId,
    bool clearSelectedCenterId = false,
    String? couponCode,
    List<GovernorateEntity>? governorates,
    List<CenterEntity>? centers,
    bool? isLoadingGovernorates,
    bool? isLoadingCenters,
    List<CartItemEntity>? items,
    double? subtotal,
    double? productDiscounts,
    double? shippingFee,
    CouponEntity? appliedCoupon,
    bool clearAppliedCoupon = false,
    double? discountAmount,
    double? total,
    List<AddressEntity>? addresses,
    AddressEntity? selectedAddress,
    bool clearSelectedAddress = false,
    bool? isLoadingAddresses,
    bool? isApplyingCoupon,
    String? couponError,
    bool clearCouponError = false,
    OrderEntity? placedOrder,
    String? errorMessage,
    bool clearErrorMessage = false,
    String? nameError,
    bool clearNameError = false,
    String? phoneError,
    bool clearPhoneError = false,
    String? addressError,
    bool clearAddressError = false,
    String? governorateError,
    bool clearGovernorateError = false,
    String? centerError,
    bool clearCenterError = false,
  }) {
    return CheckoutState(
      status: status ?? this.status,
      customerName: customerName ?? this.customerName,
      customerPhone: customerPhone ?? this.customerPhone,
      customerAddress: customerAddress ?? this.customerAddress,
      region: region ?? this.region,
      selectedGovernorateId: clearSelectedGovernorateId
          ? null
          : selectedGovernorateId ?? this.selectedGovernorateId,
      selectedCenterId: clearSelectedCenterId
          ? null
          : selectedCenterId ?? this.selectedCenterId,
      couponCode: couponCode ?? this.couponCode,
      governorates: governorates ?? this.governorates,
      centers: centers ?? this.centers,
      isLoadingGovernorates:
          isLoadingGovernorates ?? this.isLoadingGovernorates,
      isLoadingCenters: isLoadingCenters ?? this.isLoadingCenters,
      items: items ?? this.items,
      subtotal: subtotal ?? this.subtotal,
      productDiscounts: productDiscounts ?? this.productDiscounts,
      shippingFee: shippingFee ?? this.shippingFee,
      appliedCoupon:
          clearAppliedCoupon ? null : appliedCoupon ?? this.appliedCoupon,
      discountAmount: discountAmount ?? this.discountAmount,
      total: total ?? this.total,
      addresses: addresses ?? this.addresses,
      selectedAddress:
          clearSelectedAddress ? null : selectedAddress ?? this.selectedAddress,
      isLoadingAddresses: isLoadingAddresses ?? this.isLoadingAddresses,
      isApplyingCoupon: isApplyingCoupon ?? this.isApplyingCoupon,
      couponError: clearCouponError ? null : couponError ?? this.couponError,
      placedOrder: placedOrder ?? this.placedOrder,
      errorMessage:
          clearErrorMessage ? null : errorMessage ?? this.errorMessage,
      nameError: clearNameError ? null : nameError ?? this.nameError,
      phoneError: clearPhoneError ? null : phoneError ?? this.phoneError,
      addressError:
          clearAddressError ? null : addressError ?? this.addressError,
      governorateError: clearGovernorateError
          ? null
          : governorateError ?? this.governorateError,
      centerError: clearCenterError ? null : centerError ?? this.centerError,
    );
  }

  @override
  List<Object?> get props => [
        status,
        customerName,
        customerPhone,
        customerAddress,
        region,
        selectedGovernorateId,
        selectedCenterId,
        couponCode,
        governorates,
        centers,
        isLoadingGovernorates,
        isLoadingCenters,
        items,
        subtotal,
        productDiscounts,
        shippingFee,
        appliedCoupon,
        discountAmount,
        total,
        addresses,
        selectedAddress,
        isLoadingAddresses,
        isApplyingCoupon,
        couponError,
        placedOrder,
        errorMessage,
        nameError,
        phoneError,
        addressError,
        governorateError,
        centerError,
      ];
}
