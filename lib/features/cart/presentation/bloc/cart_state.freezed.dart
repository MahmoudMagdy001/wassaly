// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartState {

 CartStatus get status; List<CartItemEntity> get items; int get cartCount; Set<int> get inCartProductIds; Set<int> get addingProductIds; Failure? get failure; List<AddressEntity> get addresses; AddressEntity? get selectedAddress; bool get isLoadingAddresses; Failure? get addressesFailure; CartCheckoutEntity? get checkoutData; CouponEntity? get appliedCoupon; bool get isApplyingCoupon; Failure? get couponFailure;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CartState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.cartCount, _this.cartCount) || other.cartCount == _this.cartCount)&&const DeepCollectionEquality().equals(other.inCartProductIds, _this.inCartProductIds)&&const DeepCollectionEquality().equals(other.addingProductIds, _this.addingProductIds)&&(identical(other.failure, _this.failure) || other.failure == _this.failure)&&const DeepCollectionEquality().equals(other.addresses, _this.addresses)&&(identical(other.selectedAddress, _this.selectedAddress) || other.selectedAddress == _this.selectedAddress)&&(identical(other.isLoadingAddresses, _this.isLoadingAddresses) || other.isLoadingAddresses == _this.isLoadingAddresses)&&(identical(other.addressesFailure, _this.addressesFailure) || other.addressesFailure == _this.addressesFailure)&&(identical(other.checkoutData, _this.checkoutData) || other.checkoutData == _this.checkoutData)&&(identical(other.appliedCoupon, _this.appliedCoupon) || other.appliedCoupon == _this.appliedCoupon)&&(identical(other.isApplyingCoupon, _this.isApplyingCoupon) || other.isApplyingCoupon == _this.isApplyingCoupon)&&(identical(other.couponFailure, _this.couponFailure) || other.couponFailure == _this.couponFailure));
}


@override
int get hashCode {
  final _this = this as CartState;
  return Object.hash(runtimeType,_this.status,const DeepCollectionEquality().hash(_this.items),_this.cartCount,const DeepCollectionEquality().hash(_this.inCartProductIds),const DeepCollectionEquality().hash(_this.addingProductIds),_this.failure,const DeepCollectionEquality().hash(_this.addresses),_this.selectedAddress,_this.isLoadingAddresses,_this.addressesFailure,_this.checkoutData,_this.appliedCoupon,_this.isApplyingCoupon,_this.couponFailure);
}

@override
String toString() {
  final _this = this as CartState;
  return 'CartState(status: ${_this.status}, items: ${_this.items}, cartCount: ${_this.cartCount}, inCartProductIds: ${_this.inCartProductIds}, addingProductIds: ${_this.addingProductIds}, failure: ${_this.failure}, addresses: ${_this.addresses}, selectedAddress: ${_this.selectedAddress}, isLoadingAddresses: ${_this.isLoadingAddresses}, addressesFailure: ${_this.addressesFailure}, checkoutData: ${_this.checkoutData}, appliedCoupon: ${_this.appliedCoupon}, isApplyingCoupon: ${_this.isApplyingCoupon}, couponFailure: ${_this.couponFailure})';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 CartStatus status, List<CartItemEntity> items, int cartCount, Set<int> inCartProductIds, Set<int> addingProductIds, Failure? failure, List<AddressEntity> addresses, AddressEntity? selectedAddress, bool isLoadingAddresses, Failure? addressesFailure, CartCheckoutEntity? checkoutData, CouponEntity? appliedCoupon, bool isApplyingCoupon, Failure? couponFailure
});


$FailureCopyWith<$Res>? get failure;$AddressEntityCopyWith<$Res>? get selectedAddress;$FailureCopyWith<$Res>? get addressesFailure;$CartCheckoutEntityCopyWith<$Res>? get checkoutData;$CouponEntityCopyWith<$Res>? get appliedCoupon;$FailureCopyWith<$Res>? get couponFailure;

}
/// @nodoc
class _$CartStateCopyWithImpl<$Res>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? cartCount = null,Object? inCartProductIds = null,Object? addingProductIds = null,Object? failure = freezed,Object? addresses = null,Object? selectedAddress = freezed,Object? isLoadingAddresses = null,Object? addressesFailure = freezed,Object? checkoutData = freezed,Object? appliedCoupon = freezed,Object? isApplyingCoupon = null,Object? couponFailure = freezed,}) {
  return _then(CartState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemEntity>,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,inCartProductIds: null == inCartProductIds ? _self.inCartProductIds : inCartProductIds // ignore: cast_nullable_to_non_nullable
as Set<int>,addingProductIds: null == addingProductIds ? _self.addingProductIds : addingProductIds // ignore: cast_nullable_to_non_nullable
as Set<int>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressEntity>,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressEntity?,isLoadingAddresses: null == isLoadingAddresses ? _self.isLoadingAddresses : isLoadingAddresses // ignore: cast_nullable_to_non_nullable
as bool,addressesFailure: freezed == addressesFailure ? _self.addressesFailure : addressesFailure // ignore: cast_nullable_to_non_nullable
as Failure?,checkoutData: freezed == checkoutData ? _self.checkoutData : checkoutData // ignore: cast_nullable_to_non_nullable
as CartCheckoutEntity?,appliedCoupon: freezed == appliedCoupon ? _self.appliedCoupon : appliedCoupon // ignore: cast_nullable_to_non_nullable
as CouponEntity?,isApplyingCoupon: null == isApplyingCoupon ? _self.isApplyingCoupon : isApplyingCoupon // ignore: cast_nullable_to_non_nullable
as bool,couponFailure: freezed == couponFailure ? _self.couponFailure : couponFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}/// Create a copy of CartState
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
}/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get addressesFailure {
    if (_self.addressesFailure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.addressesFailure!, (value) {
    return _then(_self.copyWith(addressesFailure: value));
  });
}/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCheckoutEntityCopyWith<$Res>? get checkoutData {
    if (_self.checkoutData == null) {
    return null;
  }

  return $CartCheckoutEntityCopyWith<$Res>(_self.checkoutData!, (value) {
    return _then(_self.copyWith(checkoutData: value));
  });
}/// Create a copy of CartState
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
}/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get couponFailure {
    if (_self.couponFailure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.couponFailure!, (value) {
    return _then(_self.copyWith(couponFailure: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartState value)  $default,){
final _that = this;
switch (_that) {
case _CartState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartState value)?  $default,){
final _that = this;
switch (_that) {
case _CartState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartStatus status,  List<CartItemEntity> items,  int cartCount,  Set<int> inCartProductIds,  Set<int> addingProductIds,  Failure? failure,  List<AddressEntity> addresses,  AddressEntity? selectedAddress,  bool isLoadingAddresses,  Failure? addressesFailure,  CartCheckoutEntity? checkoutData,  CouponEntity? appliedCoupon,  bool isApplyingCoupon,  Failure? couponFailure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.status,_that.items,_that.cartCount,_that.inCartProductIds,_that.addingProductIds,_that.failure,_that.addresses,_that.selectedAddress,_that.isLoadingAddresses,_that.addressesFailure,_that.checkoutData,_that.appliedCoupon,_that.isApplyingCoupon,_that.couponFailure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartStatus status,  List<CartItemEntity> items,  int cartCount,  Set<int> inCartProductIds,  Set<int> addingProductIds,  Failure? failure,  List<AddressEntity> addresses,  AddressEntity? selectedAddress,  bool isLoadingAddresses,  Failure? addressesFailure,  CartCheckoutEntity? checkoutData,  CouponEntity? appliedCoupon,  bool isApplyingCoupon,  Failure? couponFailure)  $default,) {final _that = this;
switch (_that) {
case _CartState():
return $default(_that.status,_that.items,_that.cartCount,_that.inCartProductIds,_that.addingProductIds,_that.failure,_that.addresses,_that.selectedAddress,_that.isLoadingAddresses,_that.addressesFailure,_that.checkoutData,_that.appliedCoupon,_that.isApplyingCoupon,_that.couponFailure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartStatus status,  List<CartItemEntity> items,  int cartCount,  Set<int> inCartProductIds,  Set<int> addingProductIds,  Failure? failure,  List<AddressEntity> addresses,  AddressEntity? selectedAddress,  bool isLoadingAddresses,  Failure? addressesFailure,  CartCheckoutEntity? checkoutData,  CouponEntity? appliedCoupon,  bool isApplyingCoupon,  Failure? couponFailure)?  $default,) {final _that = this;
switch (_that) {
case _CartState() when $default != null:
return $default(_that.status,_that.items,_that.cartCount,_that.inCartProductIds,_that.addingProductIds,_that.failure,_that.addresses,_that.selectedAddress,_that.isLoadingAddresses,_that.addressesFailure,_that.checkoutData,_that.appliedCoupon,_that.isApplyingCoupon,_that.couponFailure);case _:
  return null;

}
}

}

/// @nodoc


class _CartState extends CartState {
  const _CartState({this.status = CartStatus.initial,  List<CartItemEntity> items = const [], this.cartCount = 0,  Set<int> inCartProductIds = const {},  Set<int> addingProductIds = const {}, this.failure,  List<AddressEntity> addresses = const [], this.selectedAddress, this.isLoadingAddresses = false, this.addressesFailure, this.checkoutData, this.appliedCoupon, this.isApplyingCoupon = false, this.couponFailure}): _items = items,_inCartProductIds = inCartProductIds,_addingProductIds = addingProductIds,_addresses = addresses,super._();
  

@override@JsonKey() final  CartStatus status;
 final  List<CartItemEntity> _items;
@override@JsonKey() List<CartItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  int cartCount;
 final  Set<int> _inCartProductIds;
@override@JsonKey() Set<int> get inCartProductIds {
  if (_inCartProductIds is EqualUnmodifiableSetView) return _inCartProductIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_inCartProductIds);
}

 final  Set<int> _addingProductIds;
@override@JsonKey() Set<int> get addingProductIds {
  if (_addingProductIds is EqualUnmodifiableSetView) return _addingProductIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_addingProductIds);
}

@override final  Failure? failure;
 final  List<AddressEntity> _addresses;
@override@JsonKey() List<AddressEntity> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override final  AddressEntity? selectedAddress;
@override@JsonKey() final  bool isLoadingAddresses;
@override final  Failure? addressesFailure;
@override final  CartCheckoutEntity? checkoutData;
@override final  CouponEntity? appliedCoupon;
@override@JsonKey() final  bool isApplyingCoupon;
@override final  Failure? couponFailure;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartStateCopyWith<_CartState> get copyWith => __$CartStateCopyWithImpl<_CartState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount)&&const DeepCollectionEquality().equals(other.inCartProductIds, _inCartProductIds)&&const DeepCollectionEquality().equals(other.addingProductIds, _addingProductIds)&&(identical(other.failure, failure) || other.failure == failure)&&const DeepCollectionEquality().equals(other.addresses, _addresses)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&(identical(other.isLoadingAddresses, isLoadingAddresses) || other.isLoadingAddresses == isLoadingAddresses)&&(identical(other.addressesFailure, addressesFailure) || other.addressesFailure == addressesFailure)&&(identical(other.checkoutData, checkoutData) || other.checkoutData == checkoutData)&&(identical(other.appliedCoupon, appliedCoupon) || other.appliedCoupon == appliedCoupon)&&(identical(other.isApplyingCoupon, isApplyingCoupon) || other.isApplyingCoupon == isApplyingCoupon)&&(identical(other.couponFailure, couponFailure) || other.couponFailure == couponFailure));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),cartCount,const DeepCollectionEquality().hash(_inCartProductIds),const DeepCollectionEquality().hash(_addingProductIds),failure,const DeepCollectionEquality().hash(_addresses),selectedAddress,isLoadingAddresses,addressesFailure,checkoutData,appliedCoupon,isApplyingCoupon,couponFailure);
}

@override
String toString() {
    return 'CartState(status: $status, items: $items, cartCount: $cartCount, inCartProductIds: $inCartProductIds, addingProductIds: $addingProductIds, failure: $failure, addresses: $addresses, selectedAddress: $selectedAddress, isLoadingAddresses: $isLoadingAddresses, addressesFailure: $addressesFailure, checkoutData: $checkoutData, appliedCoupon: $appliedCoupon, isApplyingCoupon: $isApplyingCoupon, couponFailure: $couponFailure)';
}


}

/// @nodoc
abstract mixin class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(_CartState value, $Res Function(_CartState) _then) = __$CartStateCopyWithImpl;
@override @useResult
$Res call({
 CartStatus status, List<CartItemEntity> items, int cartCount, Set<int> inCartProductIds, Set<int> addingProductIds, Failure? failure, List<AddressEntity> addresses, AddressEntity? selectedAddress, bool isLoadingAddresses, Failure? addressesFailure, CartCheckoutEntity? checkoutData, CouponEntity? appliedCoupon, bool isApplyingCoupon, Failure? couponFailure
});


@override $FailureCopyWith<$Res>? get failure;@override $AddressEntityCopyWith<$Res>? get selectedAddress;@override $FailureCopyWith<$Res>? get addressesFailure;@override $CartCheckoutEntityCopyWith<$Res>? get checkoutData;@override $CouponEntityCopyWith<$Res>? get appliedCoupon;@override $FailureCopyWith<$Res>? get couponFailure;

}
/// @nodoc
class __$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(this._self, this._then);

  final _CartState _self;
  final $Res Function(_CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? cartCount = null,Object? inCartProductIds = null,Object? addingProductIds = null,Object? failure = freezed,Object? addresses = null,Object? selectedAddress = freezed,Object? isLoadingAddresses = null,Object? addressesFailure = freezed,Object? checkoutData = freezed,Object? appliedCoupon = freezed,Object? isApplyingCoupon = null,Object? couponFailure = freezed,}) {
  return _then(_CartState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CartStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemEntity>,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,inCartProductIds: null == inCartProductIds ? _self._inCartProductIds : inCartProductIds // ignore: cast_nullable_to_non_nullable
as Set<int>,addingProductIds: null == addingProductIds ? _self._addingProductIds : addingProductIds // ignore: cast_nullable_to_non_nullable
as Set<int>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressEntity>,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressEntity?,isLoadingAddresses: null == isLoadingAddresses ? _self.isLoadingAddresses : isLoadingAddresses // ignore: cast_nullable_to_non_nullable
as bool,addressesFailure: freezed == addressesFailure ? _self.addressesFailure : addressesFailure // ignore: cast_nullable_to_non_nullable
as Failure?,checkoutData: freezed == checkoutData ? _self.checkoutData : checkoutData // ignore: cast_nullable_to_non_nullable
as CartCheckoutEntity?,appliedCoupon: freezed == appliedCoupon ? _self.appliedCoupon : appliedCoupon // ignore: cast_nullable_to_non_nullable
as CouponEntity?,isApplyingCoupon: null == isApplyingCoupon ? _self.isApplyingCoupon : isApplyingCoupon // ignore: cast_nullable_to_non_nullable
as bool,couponFailure: freezed == couponFailure ? _self.couponFailure : couponFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}/// Create a copy of CartState
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
}/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get addressesFailure {
    if (_self.addressesFailure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.addressesFailure!, (value) {
    return _then(_self.copyWith(addressesFailure: value));
  });
}/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartCheckoutEntityCopyWith<$Res>? get checkoutData {
    if (_self.checkoutData == null) {
    return null;
  }

  return $CartCheckoutEntityCopyWith<$Res>(_self.checkoutData!, (value) {
    return _then(_self.copyWith(checkoutData: value));
  });
}/// Create a copy of CartState
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
}/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get couponFailure {
    if (_self.couponFailure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.couponFailure!, (value) {
    return _then(_self.copyWith(couponFailure: value));
  });
}
}

// dart format on
