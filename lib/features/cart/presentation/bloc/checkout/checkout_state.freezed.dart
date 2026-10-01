// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutState {

 CheckoutStatus get status; String get customerName; String get customerPhone; String get customerAddress; String get region; String? get selectedGovernorateId; String? get selectedCenterId; String get couponCode; List<AddressEntity> get addresses; AddressEntity? get selectedAddress; bool get isLoadingAddresses; List<GovernorateEntity> get governorates; List<CenterEntity> get centers; bool get isLoadingGovernorates; bool get isLoadingCenters; List<CartItemEntity> get items; double get subtotal; double get productDiscounts; double get shippingFee; CouponEntity? get appliedCoupon; double get discountAmount; double get total; bool get isApplyingCoupon; String? get couponError; OrderEntity? get placedOrder; String? get errorMessage; String? get nameError; String? get phoneError; String? get addressError; String? get governorateError; String? get centerError;
/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutStateCopyWith<CheckoutState> get copyWith => _$CheckoutStateCopyWithImpl<CheckoutState>(this as CheckoutState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CheckoutState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.customerName, _this.customerName) || other.customerName == _this.customerName)&&(identical(other.customerPhone, _this.customerPhone) || other.customerPhone == _this.customerPhone)&&(identical(other.customerAddress, _this.customerAddress) || other.customerAddress == _this.customerAddress)&&(identical(other.region, _this.region) || other.region == _this.region)&&(identical(other.selectedGovernorateId, _this.selectedGovernorateId) || other.selectedGovernorateId == _this.selectedGovernorateId)&&(identical(other.selectedCenterId, _this.selectedCenterId) || other.selectedCenterId == _this.selectedCenterId)&&(identical(other.couponCode, _this.couponCode) || other.couponCode == _this.couponCode)&&const DeepCollectionEquality().equals(other.addresses, _this.addresses)&&(identical(other.selectedAddress, _this.selectedAddress) || other.selectedAddress == _this.selectedAddress)&&(identical(other.isLoadingAddresses, _this.isLoadingAddresses) || other.isLoadingAddresses == _this.isLoadingAddresses)&&const DeepCollectionEquality().equals(other.governorates, _this.governorates)&&const DeepCollectionEquality().equals(other.centers, _this.centers)&&(identical(other.isLoadingGovernorates, _this.isLoadingGovernorates) || other.isLoadingGovernorates == _this.isLoadingGovernorates)&&(identical(other.isLoadingCenters, _this.isLoadingCenters) || other.isLoadingCenters == _this.isLoadingCenters)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.subtotal, _this.subtotal) || other.subtotal == _this.subtotal)&&(identical(other.productDiscounts, _this.productDiscounts) || other.productDiscounts == _this.productDiscounts)&&(identical(other.shippingFee, _this.shippingFee) || other.shippingFee == _this.shippingFee)&&(identical(other.appliedCoupon, _this.appliedCoupon) || other.appliedCoupon == _this.appliedCoupon)&&(identical(other.discountAmount, _this.discountAmount) || other.discountAmount == _this.discountAmount)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.isApplyingCoupon, _this.isApplyingCoupon) || other.isApplyingCoupon == _this.isApplyingCoupon)&&(identical(other.couponError, _this.couponError) || other.couponError == _this.couponError)&&(identical(other.placedOrder, _this.placedOrder) || other.placedOrder == _this.placedOrder)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.nameError, _this.nameError) || other.nameError == _this.nameError)&&(identical(other.phoneError, _this.phoneError) || other.phoneError == _this.phoneError)&&(identical(other.addressError, _this.addressError) || other.addressError == _this.addressError)&&(identical(other.governorateError, _this.governorateError) || other.governorateError == _this.governorateError)&&(identical(other.centerError, _this.centerError) || other.centerError == _this.centerError));
}


@override
int get hashCode {
  final _this = this as CheckoutState;
  return Object.hashAll([runtimeType,_this.status,_this.customerName,_this.customerPhone,_this.customerAddress,_this.region,_this.selectedGovernorateId,_this.selectedCenterId,_this.couponCode,const DeepCollectionEquality().hash(_this.addresses),_this.selectedAddress,_this.isLoadingAddresses,const DeepCollectionEquality().hash(_this.governorates),const DeepCollectionEquality().hash(_this.centers),_this.isLoadingGovernorates,_this.isLoadingCenters,const DeepCollectionEquality().hash(_this.items),_this.subtotal,_this.productDiscounts,_this.shippingFee,_this.appliedCoupon,_this.discountAmount,_this.total,_this.isApplyingCoupon,_this.couponError,_this.placedOrder,_this.errorMessage,_this.nameError,_this.phoneError,_this.addressError,_this.governorateError,_this.centerError]);
}

@override
String toString() {
  final _this = this as CheckoutState;
  return 'CheckoutState(status: ${_this.status}, customerName: ${_this.customerName}, customerPhone: ${_this.customerPhone}, customerAddress: ${_this.customerAddress}, region: ${_this.region}, selectedGovernorateId: ${_this.selectedGovernorateId}, selectedCenterId: ${_this.selectedCenterId}, couponCode: ${_this.couponCode}, addresses: ${_this.addresses}, selectedAddress: ${_this.selectedAddress}, isLoadingAddresses: ${_this.isLoadingAddresses}, governorates: ${_this.governorates}, centers: ${_this.centers}, isLoadingGovernorates: ${_this.isLoadingGovernorates}, isLoadingCenters: ${_this.isLoadingCenters}, items: ${_this.items}, subtotal: ${_this.subtotal}, productDiscounts: ${_this.productDiscounts}, shippingFee: ${_this.shippingFee}, appliedCoupon: ${_this.appliedCoupon}, discountAmount: ${_this.discountAmount}, total: ${_this.total}, isApplyingCoupon: ${_this.isApplyingCoupon}, couponError: ${_this.couponError}, placedOrder: ${_this.placedOrder}, errorMessage: ${_this.errorMessage}, nameError: ${_this.nameError}, phoneError: ${_this.phoneError}, addressError: ${_this.addressError}, governorateError: ${_this.governorateError}, centerError: ${_this.centerError})';
}


}

/// @nodoc
abstract mixin class $CheckoutStateCopyWith<$Res>  {
  factory $CheckoutStateCopyWith(CheckoutState value, $Res Function(CheckoutState) _then) = _$CheckoutStateCopyWithImpl;
@useResult
$Res call({
 CheckoutStatus status, String customerName, String customerPhone, String customerAddress, String region, String? selectedGovernorateId, String? selectedCenterId, String couponCode, List<AddressEntity> addresses, AddressEntity? selectedAddress, bool isLoadingAddresses, List<GovernorateEntity> governorates, List<CenterEntity> centers, bool isLoadingGovernorates, bool isLoadingCenters, List<CartItemEntity> items, double subtotal, double productDiscounts, double shippingFee, CouponEntity? appliedCoupon, double discountAmount, double total, bool isApplyingCoupon, String? couponError, OrderEntity? placedOrder, String? errorMessage, String? nameError, String? phoneError, String? addressError, String? governorateError, String? centerError
});


$AddressEntityCopyWith<$Res>? get selectedAddress;$CouponEntityCopyWith<$Res>? get appliedCoupon;$OrderEntityCopyWith<$Res>? get placedOrder;

}
/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._self, this._then);

  final CheckoutState _self;
  final $Res Function(CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? customerName = null,Object? customerPhone = null,Object? customerAddress = null,Object? region = null,Object? selectedGovernorateId = freezed,Object? selectedCenterId = freezed,Object? couponCode = null,Object? addresses = null,Object? selectedAddress = freezed,Object? isLoadingAddresses = null,Object? governorates = null,Object? centers = null,Object? isLoadingGovernorates = null,Object? isLoadingCenters = null,Object? items = null,Object? subtotal = null,Object? productDiscounts = null,Object? shippingFee = null,Object? appliedCoupon = freezed,Object? discountAmount = null,Object? total = null,Object? isApplyingCoupon = null,Object? couponError = freezed,Object? placedOrder = freezed,Object? errorMessage = freezed,Object? nameError = freezed,Object? phoneError = freezed,Object? addressError = freezed,Object? governorateError = freezed,Object? centerError = freezed,}) {
  return _then(CheckoutState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CheckoutStatus,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,selectedGovernorateId: freezed == selectedGovernorateId ? _self.selectedGovernorateId : selectedGovernorateId // ignore: cast_nullable_to_non_nullable
as String?,selectedCenterId: freezed == selectedCenterId ? _self.selectedCenterId : selectedCenterId // ignore: cast_nullable_to_non_nullable
as String?,couponCode: null == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressEntity>,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressEntity?,isLoadingAddresses: null == isLoadingAddresses ? _self.isLoadingAddresses : isLoadingAddresses // ignore: cast_nullable_to_non_nullable
as bool,governorates: null == governorates ? _self.governorates : governorates // ignore: cast_nullable_to_non_nullable
as List<GovernorateEntity>,centers: null == centers ? _self.centers : centers // ignore: cast_nullable_to_non_nullable
as List<CenterEntity>,isLoadingGovernorates: null == isLoadingGovernorates ? _self.isLoadingGovernorates : isLoadingGovernorates // ignore: cast_nullable_to_non_nullable
as bool,isLoadingCenters: null == isLoadingCenters ? _self.isLoadingCenters : isLoadingCenters // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemEntity>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,productDiscounts: null == productDiscounts ? _self.productDiscounts : productDiscounts // ignore: cast_nullable_to_non_nullable
as double,shippingFee: null == shippingFee ? _self.shippingFee : shippingFee // ignore: cast_nullable_to_non_nullable
as double,appliedCoupon: freezed == appliedCoupon ? _self.appliedCoupon : appliedCoupon // ignore: cast_nullable_to_non_nullable
as CouponEntity?,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,isApplyingCoupon: null == isApplyingCoupon ? _self.isApplyingCoupon : isApplyingCoupon // ignore: cast_nullable_to_non_nullable
as bool,couponError: freezed == couponError ? _self.couponError : couponError // ignore: cast_nullable_to_non_nullable
as String?,placedOrder: freezed == placedOrder ? _self.placedOrder : placedOrder // ignore: cast_nullable_to_non_nullable
as OrderEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,nameError: freezed == nameError ? _self.nameError : nameError // ignore: cast_nullable_to_non_nullable
as String?,phoneError: freezed == phoneError ? _self.phoneError : phoneError // ignore: cast_nullable_to_non_nullable
as String?,addressError: freezed == addressError ? _self.addressError : addressError // ignore: cast_nullable_to_non_nullable
as String?,governorateError: freezed == governorateError ? _self.governorateError : governorateError // ignore: cast_nullable_to_non_nullable
as String?,centerError: freezed == centerError ? _self.centerError : centerError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressEntityCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
    return null;
  }

  return $AddressEntityCopyWith<$Res>(_self.selectedAddress!, (value) {
    return _then(_self.copyWith(selectedAddress: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponEntityCopyWith<$Res>? get appliedCoupon {
    if (_self.appliedCoupon == null) {
    return null;
  }

  return $CouponEntityCopyWith<$Res>(_self.appliedCoupon!, (value) {
    return _then(_self.copyWith(appliedCoupon: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<$Res>? get placedOrder {
    if (_self.placedOrder == null) {
    return null;
  }

  return $OrderEntityCopyWith<$Res>(_self.placedOrder!, (value) {
    return _then(_self.copyWith(placedOrder: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutState].
extension CheckoutStatePatterns on CheckoutState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutState value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutState value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CheckoutStatus status,  String customerName,  String customerPhone,  String customerAddress,  String region,  String? selectedGovernorateId,  String? selectedCenterId,  String couponCode,  List<AddressEntity> addresses,  AddressEntity? selectedAddress,  bool isLoadingAddresses,  List<GovernorateEntity> governorates,  List<CenterEntity> centers,  bool isLoadingGovernorates,  bool isLoadingCenters,  List<CartItemEntity> items,  double subtotal,  double productDiscounts,  double shippingFee,  CouponEntity? appliedCoupon,  double discountAmount,  double total,  bool isApplyingCoupon,  String? couponError,  OrderEntity? placedOrder,  String? errorMessage,  String? nameError,  String? phoneError,  String? addressError,  String? governorateError,  String? centerError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.status,_that.customerName,_that.customerPhone,_that.customerAddress,_that.region,_that.selectedGovernorateId,_that.selectedCenterId,_that.couponCode,_that.addresses,_that.selectedAddress,_that.isLoadingAddresses,_that.governorates,_that.centers,_that.isLoadingGovernorates,_that.isLoadingCenters,_that.items,_that.subtotal,_that.productDiscounts,_that.shippingFee,_that.appliedCoupon,_that.discountAmount,_that.total,_that.isApplyingCoupon,_that.couponError,_that.placedOrder,_that.errorMessage,_that.nameError,_that.phoneError,_that.addressError,_that.governorateError,_that.centerError);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CheckoutStatus status,  String customerName,  String customerPhone,  String customerAddress,  String region,  String? selectedGovernorateId,  String? selectedCenterId,  String couponCode,  List<AddressEntity> addresses,  AddressEntity? selectedAddress,  bool isLoadingAddresses,  List<GovernorateEntity> governorates,  List<CenterEntity> centers,  bool isLoadingGovernorates,  bool isLoadingCenters,  List<CartItemEntity> items,  double subtotal,  double productDiscounts,  double shippingFee,  CouponEntity? appliedCoupon,  double discountAmount,  double total,  bool isApplyingCoupon,  String? couponError,  OrderEntity? placedOrder,  String? errorMessage,  String? nameError,  String? phoneError,  String? addressError,  String? governorateError,  String? centerError)  $default,) {final _that = this;
switch (_that) {
case _CheckoutState():
return $default(_that.status,_that.customerName,_that.customerPhone,_that.customerAddress,_that.region,_that.selectedGovernorateId,_that.selectedCenterId,_that.couponCode,_that.addresses,_that.selectedAddress,_that.isLoadingAddresses,_that.governorates,_that.centers,_that.isLoadingGovernorates,_that.isLoadingCenters,_that.items,_that.subtotal,_that.productDiscounts,_that.shippingFee,_that.appliedCoupon,_that.discountAmount,_that.total,_that.isApplyingCoupon,_that.couponError,_that.placedOrder,_that.errorMessage,_that.nameError,_that.phoneError,_that.addressError,_that.governorateError,_that.centerError);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CheckoutStatus status,  String customerName,  String customerPhone,  String customerAddress,  String region,  String? selectedGovernorateId,  String? selectedCenterId,  String couponCode,  List<AddressEntity> addresses,  AddressEntity? selectedAddress,  bool isLoadingAddresses,  List<GovernorateEntity> governorates,  List<CenterEntity> centers,  bool isLoadingGovernorates,  bool isLoadingCenters,  List<CartItemEntity> items,  double subtotal,  double productDiscounts,  double shippingFee,  CouponEntity? appliedCoupon,  double discountAmount,  double total,  bool isApplyingCoupon,  String? couponError,  OrderEntity? placedOrder,  String? errorMessage,  String? nameError,  String? phoneError,  String? addressError,  String? governorateError,  String? centerError)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.status,_that.customerName,_that.customerPhone,_that.customerAddress,_that.region,_that.selectedGovernorateId,_that.selectedCenterId,_that.couponCode,_that.addresses,_that.selectedAddress,_that.isLoadingAddresses,_that.governorates,_that.centers,_that.isLoadingGovernorates,_that.isLoadingCenters,_that.items,_that.subtotal,_that.productDiscounts,_that.shippingFee,_that.appliedCoupon,_that.discountAmount,_that.total,_that.isApplyingCoupon,_that.couponError,_that.placedOrder,_that.errorMessage,_that.nameError,_that.phoneError,_that.addressError,_that.governorateError,_that.centerError);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutState extends CheckoutState {
  const _CheckoutState({this.status = CheckoutStatus.initial, this.customerName = '', this.customerPhone = '', this.customerAddress = '', this.region = '', this.selectedGovernorateId, this.selectedCenterId, this.couponCode = '',  List<AddressEntity> addresses = const [], this.selectedAddress, this.isLoadingAddresses = false,  List<GovernorateEntity> governorates = const [],  List<CenterEntity> centers = const [], this.isLoadingGovernorates = false, this.isLoadingCenters = false,  List<CartItemEntity> items = const [], this.subtotal = 0.0, this.productDiscounts = 0.0, this.shippingFee = 0.0, this.appliedCoupon, this.discountAmount = 0.0, this.total = 0.0, this.isApplyingCoupon = false, this.couponError, this.placedOrder, this.errorMessage, this.nameError, this.phoneError, this.addressError, this.governorateError, this.centerError}): _addresses = addresses,_governorates = governorates,_centers = centers,_items = items,super._();
  

@override@JsonKey() final  CheckoutStatus status;
@override@JsonKey() final  String customerName;
@override@JsonKey() final  String customerPhone;
@override@JsonKey() final  String customerAddress;
@override@JsonKey() final  String region;
@override final  String? selectedGovernorateId;
@override final  String? selectedCenterId;
@override@JsonKey() final  String couponCode;
 final  List<AddressEntity> _addresses;
@override@JsonKey() List<AddressEntity> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override final  AddressEntity? selectedAddress;
@override@JsonKey() final  bool isLoadingAddresses;
 final  List<GovernorateEntity> _governorates;
@override@JsonKey() List<GovernorateEntity> get governorates {
  if (_governorates is EqualUnmodifiableListView) return _governorates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_governorates);
}

 final  List<CenterEntity> _centers;
@override@JsonKey() List<CenterEntity> get centers {
  if (_centers is EqualUnmodifiableListView) return _centers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_centers);
}

@override@JsonKey() final  bool isLoadingGovernorates;
@override@JsonKey() final  bool isLoadingCenters;
 final  List<CartItemEntity> _items;
@override@JsonKey() List<CartItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  double subtotal;
@override@JsonKey() final  double productDiscounts;
@override@JsonKey() final  double shippingFee;
@override final  CouponEntity? appliedCoupon;
@override@JsonKey() final  double discountAmount;
@override@JsonKey() final  double total;
@override@JsonKey() final  bool isApplyingCoupon;
@override final  String? couponError;
@override final  OrderEntity? placedOrder;
@override final  String? errorMessage;
@override final  String? nameError;
@override final  String? phoneError;
@override final  String? addressError;
@override final  String? governorateError;
@override final  String? centerError;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutStateCopyWith<_CheckoutState> get copyWith => __$CheckoutStateCopyWithImpl<_CheckoutState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutState&&(identical(other.status, status) || other.status == status)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.region, region) || other.region == region)&&(identical(other.selectedGovernorateId, selectedGovernorateId) || other.selectedGovernorateId == selectedGovernorateId)&&(identical(other.selectedCenterId, selectedCenterId) || other.selectedCenterId == selectedCenterId)&&(identical(other.couponCode, couponCode) || other.couponCode == couponCode)&&const DeepCollectionEquality().equals(other.addresses, _addresses)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&(identical(other.isLoadingAddresses, isLoadingAddresses) || other.isLoadingAddresses == isLoadingAddresses)&&const DeepCollectionEquality().equals(other.governorates, _governorates)&&const DeepCollectionEquality().equals(other.centers, _centers)&&(identical(other.isLoadingGovernorates, isLoadingGovernorates) || other.isLoadingGovernorates == isLoadingGovernorates)&&(identical(other.isLoadingCenters, isLoadingCenters) || other.isLoadingCenters == isLoadingCenters)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.productDiscounts, productDiscounts) || other.productDiscounts == productDiscounts)&&(identical(other.shippingFee, shippingFee) || other.shippingFee == shippingFee)&&(identical(other.appliedCoupon, appliedCoupon) || other.appliedCoupon == appliedCoupon)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.total, total) || other.total == total)&&(identical(other.isApplyingCoupon, isApplyingCoupon) || other.isApplyingCoupon == isApplyingCoupon)&&(identical(other.couponError, couponError) || other.couponError == couponError)&&(identical(other.placedOrder, placedOrder) || other.placedOrder == placedOrder)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.nameError, nameError) || other.nameError == nameError)&&(identical(other.phoneError, phoneError) || other.phoneError == phoneError)&&(identical(other.addressError, addressError) || other.addressError == addressError)&&(identical(other.governorateError, governorateError) || other.governorateError == governorateError)&&(identical(other.centerError, centerError) || other.centerError == centerError));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,status,customerName,customerPhone,customerAddress,region,selectedGovernorateId,selectedCenterId,couponCode,const DeepCollectionEquality().hash(_addresses),selectedAddress,isLoadingAddresses,const DeepCollectionEquality().hash(_governorates),const DeepCollectionEquality().hash(_centers),isLoadingGovernorates,isLoadingCenters,const DeepCollectionEquality().hash(_items),subtotal,productDiscounts,shippingFee,appliedCoupon,discountAmount,total,isApplyingCoupon,couponError,placedOrder,errorMessage,nameError,phoneError,addressError,governorateError,centerError]);
}

@override
String toString() {
    return 'CheckoutState(status: $status, customerName: $customerName, customerPhone: $customerPhone, customerAddress: $customerAddress, region: $region, selectedGovernorateId: $selectedGovernorateId, selectedCenterId: $selectedCenterId, couponCode: $couponCode, addresses: $addresses, selectedAddress: $selectedAddress, isLoadingAddresses: $isLoadingAddresses, governorates: $governorates, centers: $centers, isLoadingGovernorates: $isLoadingGovernorates, isLoadingCenters: $isLoadingCenters, items: $items, subtotal: $subtotal, productDiscounts: $productDiscounts, shippingFee: $shippingFee, appliedCoupon: $appliedCoupon, discountAmount: $discountAmount, total: $total, isApplyingCoupon: $isApplyingCoupon, couponError: $couponError, placedOrder: $placedOrder, errorMessage: $errorMessage, nameError: $nameError, phoneError: $phoneError, addressError: $addressError, governorateError: $governorateError, centerError: $centerError)';
}


}

/// @nodoc
abstract mixin class _$CheckoutStateCopyWith<$Res> implements $CheckoutStateCopyWith<$Res> {
  factory _$CheckoutStateCopyWith(_CheckoutState value, $Res Function(_CheckoutState) _then) = __$CheckoutStateCopyWithImpl;
@override @useResult
$Res call({
 CheckoutStatus status, String customerName, String customerPhone, String customerAddress, String region, String? selectedGovernorateId, String? selectedCenterId, String couponCode, List<AddressEntity> addresses, AddressEntity? selectedAddress, bool isLoadingAddresses, List<GovernorateEntity> governorates, List<CenterEntity> centers, bool isLoadingGovernorates, bool isLoadingCenters, List<CartItemEntity> items, double subtotal, double productDiscounts, double shippingFee, CouponEntity? appliedCoupon, double discountAmount, double total, bool isApplyingCoupon, String? couponError, OrderEntity? placedOrder, String? errorMessage, String? nameError, String? phoneError, String? addressError, String? governorateError, String? centerError
});


@override $AddressEntityCopyWith<$Res>? get selectedAddress;@override $CouponEntityCopyWith<$Res>? get appliedCoupon;@override $OrderEntityCopyWith<$Res>? get placedOrder;

}
/// @nodoc
class __$CheckoutStateCopyWithImpl<$Res>
    implements _$CheckoutStateCopyWith<$Res> {
  __$CheckoutStateCopyWithImpl(this._self, this._then);

  final _CheckoutState _self;
  final $Res Function(_CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? customerName = null,Object? customerPhone = null,Object? customerAddress = null,Object? region = null,Object? selectedGovernorateId = freezed,Object? selectedCenterId = freezed,Object? couponCode = null,Object? addresses = null,Object? selectedAddress = freezed,Object? isLoadingAddresses = null,Object? governorates = null,Object? centers = null,Object? isLoadingGovernorates = null,Object? isLoadingCenters = null,Object? items = null,Object? subtotal = null,Object? productDiscounts = null,Object? shippingFee = null,Object? appliedCoupon = freezed,Object? discountAmount = null,Object? total = null,Object? isApplyingCoupon = null,Object? couponError = freezed,Object? placedOrder = freezed,Object? errorMessage = freezed,Object? nameError = freezed,Object? phoneError = freezed,Object? addressError = freezed,Object? governorateError = freezed,Object? centerError = freezed,}) {
  return _then(_CheckoutState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CheckoutStatus,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,selectedGovernorateId: freezed == selectedGovernorateId ? _self.selectedGovernorateId : selectedGovernorateId // ignore: cast_nullable_to_non_nullable
as String?,selectedCenterId: freezed == selectedCenterId ? _self.selectedCenterId : selectedCenterId // ignore: cast_nullable_to_non_nullable
as String?,couponCode: null == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressEntity>,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressEntity?,isLoadingAddresses: null == isLoadingAddresses ? _self.isLoadingAddresses : isLoadingAddresses // ignore: cast_nullable_to_non_nullable
as bool,governorates: null == governorates ? _self._governorates : governorates // ignore: cast_nullable_to_non_nullable
as List<GovernorateEntity>,centers: null == centers ? _self._centers : centers // ignore: cast_nullable_to_non_nullable
as List<CenterEntity>,isLoadingGovernorates: null == isLoadingGovernorates ? _self.isLoadingGovernorates : isLoadingGovernorates // ignore: cast_nullable_to_non_nullable
as bool,isLoadingCenters: null == isLoadingCenters ? _self.isLoadingCenters : isLoadingCenters // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemEntity>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,productDiscounts: null == productDiscounts ? _self.productDiscounts : productDiscounts // ignore: cast_nullable_to_non_nullable
as double,shippingFee: null == shippingFee ? _self.shippingFee : shippingFee // ignore: cast_nullable_to_non_nullable
as double,appliedCoupon: freezed == appliedCoupon ? _self.appliedCoupon : appliedCoupon // ignore: cast_nullable_to_non_nullable
as CouponEntity?,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,isApplyingCoupon: null == isApplyingCoupon ? _self.isApplyingCoupon : isApplyingCoupon // ignore: cast_nullable_to_non_nullable
as bool,couponError: freezed == couponError ? _self.couponError : couponError // ignore: cast_nullable_to_non_nullable
as String?,placedOrder: freezed == placedOrder ? _self.placedOrder : placedOrder // ignore: cast_nullable_to_non_nullable
as OrderEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,nameError: freezed == nameError ? _self.nameError : nameError // ignore: cast_nullable_to_non_nullable
as String?,phoneError: freezed == phoneError ? _self.phoneError : phoneError // ignore: cast_nullable_to_non_nullable
as String?,addressError: freezed == addressError ? _self.addressError : addressError // ignore: cast_nullable_to_non_nullable
as String?,governorateError: freezed == governorateError ? _self.governorateError : governorateError // ignore: cast_nullable_to_non_nullable
as String?,centerError: freezed == centerError ? _self.centerError : centerError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressEntityCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
    return null;
  }

  return $AddressEntityCopyWith<$Res>(_self.selectedAddress!, (value) {
    return _then(_self.copyWith(selectedAddress: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponEntityCopyWith<$Res>? get appliedCoupon {
    if (_self.appliedCoupon == null) {
    return null;
  }

  return $CouponEntityCopyWith<$Res>(_self.appliedCoupon!, (value) {
    return _then(_self.copyWith(appliedCoupon: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<$Res>? get placedOrder {
    if (_self.placedOrder == null) {
    return null;
  }

  return $OrderEntityCopyWith<$Res>(_self.placedOrder!, (value) {
    return _then(_self.copyWith(placedOrder: value));
  });
}
}

// dart format on
