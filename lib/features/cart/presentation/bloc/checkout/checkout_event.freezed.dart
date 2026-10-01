// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CheckoutEvent()';
}


}

/// @nodoc
class $CheckoutEventCopyWith<$Res>  {
$CheckoutEventCopyWith(CheckoutEvent _, $Res Function(CheckoutEvent) __);
}


/// Adds pattern-matching-related methods to [CheckoutEvent].
extension CheckoutEventPatterns on CheckoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckoutInitialized value)?  initialized,TResult Function( CheckoutGovernorateSelected value)?  governorateSelected,TResult Function( CheckoutCenterSelected value)?  centerSelected,TResult Function( CheckoutFormChanged value)?  formChanged,TResult Function( CheckoutCouponApplied value)?  couponApplied,TResult Function( CheckoutCouponRemoved value)?  couponRemoved,TResult Function( CheckoutSubmitted value)?  submitted,TResult Function( CheckoutAddressSelected value)?  addressSelected,TResult Function( CheckoutAddressesRefreshed value)?  addressesRefreshed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckoutInitialized() when initialized != null:
return initialized(_that);case CheckoutGovernorateSelected() when governorateSelected != null:
return governorateSelected(_that);case CheckoutCenterSelected() when centerSelected != null:
return centerSelected(_that);case CheckoutFormChanged() when formChanged != null:
return formChanged(_that);case CheckoutCouponApplied() when couponApplied != null:
return couponApplied(_that);case CheckoutCouponRemoved() when couponRemoved != null:
return couponRemoved(_that);case CheckoutSubmitted() when submitted != null:
return submitted(_that);case CheckoutAddressSelected() when addressSelected != null:
return addressSelected(_that);case CheckoutAddressesRefreshed() when addressesRefreshed != null:
return addressesRefreshed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckoutInitialized value)  initialized,required TResult Function( CheckoutGovernorateSelected value)  governorateSelected,required TResult Function( CheckoutCenterSelected value)  centerSelected,required TResult Function( CheckoutFormChanged value)  formChanged,required TResult Function( CheckoutCouponApplied value)  couponApplied,required TResult Function( CheckoutCouponRemoved value)  couponRemoved,required TResult Function( CheckoutSubmitted value)  submitted,required TResult Function( CheckoutAddressSelected value)  addressSelected,required TResult Function( CheckoutAddressesRefreshed value)  addressesRefreshed,}){
final _that = this;
switch (_that) {
case CheckoutInitialized():
return initialized(_that);case CheckoutGovernorateSelected():
return governorateSelected(_that);case CheckoutCenterSelected():
return centerSelected(_that);case CheckoutFormChanged():
return formChanged(_that);case CheckoutCouponApplied():
return couponApplied(_that);case CheckoutCouponRemoved():
return couponRemoved(_that);case CheckoutSubmitted():
return submitted(_that);case CheckoutAddressSelected():
return addressSelected(_that);case CheckoutAddressesRefreshed():
return addressesRefreshed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckoutInitialized value)?  initialized,TResult? Function( CheckoutGovernorateSelected value)?  governorateSelected,TResult? Function( CheckoutCenterSelected value)?  centerSelected,TResult? Function( CheckoutFormChanged value)?  formChanged,TResult? Function( CheckoutCouponApplied value)?  couponApplied,TResult? Function( CheckoutCouponRemoved value)?  couponRemoved,TResult? Function( CheckoutSubmitted value)?  submitted,TResult? Function( CheckoutAddressSelected value)?  addressSelected,TResult? Function( CheckoutAddressesRefreshed value)?  addressesRefreshed,}){
final _that = this;
switch (_that) {
case CheckoutInitialized() when initialized != null:
return initialized(_that);case CheckoutGovernorateSelected() when governorateSelected != null:
return governorateSelected(_that);case CheckoutCenterSelected() when centerSelected != null:
return centerSelected(_that);case CheckoutFormChanged() when formChanged != null:
return formChanged(_that);case CheckoutCouponApplied() when couponApplied != null:
return couponApplied(_that);case CheckoutCouponRemoved() when couponRemoved != null:
return couponRemoved(_that);case CheckoutSubmitted() when submitted != null:
return submitted(_that);case CheckoutAddressSelected() when addressSelected != null:
return addressSelected(_that);case CheckoutAddressesRefreshed() when addressesRefreshed != null:
return addressesRefreshed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CartState cartState)?  initialized,TResult Function( String governorateId,  String? centerId)?  governorateSelected,TResult Function( String centerId)?  centerSelected,TResult Function( String? customerName,  String? customerPhone,  String? customerAddress,  String? region,  String? couponCode)?  formChanged,TResult Function( String code)?  couponApplied,TResult Function()?  couponRemoved,TResult Function()?  submitted,TResult Function( AddressEntity address)?  addressSelected,TResult Function()?  addressesRefreshed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckoutInitialized() when initialized != null:
return initialized(_that.cartState);case CheckoutGovernorateSelected() when governorateSelected != null:
return governorateSelected(_that.governorateId,_that.centerId);case CheckoutCenterSelected() when centerSelected != null:
return centerSelected(_that.centerId);case CheckoutFormChanged() when formChanged != null:
return formChanged(_that.customerName,_that.customerPhone,_that.customerAddress,_that.region,_that.couponCode);case CheckoutCouponApplied() when couponApplied != null:
return couponApplied(_that.code);case CheckoutCouponRemoved() when couponRemoved != null:
return couponRemoved();case CheckoutSubmitted() when submitted != null:
return submitted();case CheckoutAddressSelected() when addressSelected != null:
return addressSelected(_that.address);case CheckoutAddressesRefreshed() when addressesRefreshed != null:
return addressesRefreshed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CartState cartState)  initialized,required TResult Function( String governorateId,  String? centerId)  governorateSelected,required TResult Function( String centerId)  centerSelected,required TResult Function( String? customerName,  String? customerPhone,  String? customerAddress,  String? region,  String? couponCode)  formChanged,required TResult Function( String code)  couponApplied,required TResult Function()  couponRemoved,required TResult Function()  submitted,required TResult Function( AddressEntity address)  addressSelected,required TResult Function()  addressesRefreshed,}) {final _that = this;
switch (_that) {
case CheckoutInitialized():
return initialized(_that.cartState);case CheckoutGovernorateSelected():
return governorateSelected(_that.governorateId,_that.centerId);case CheckoutCenterSelected():
return centerSelected(_that.centerId);case CheckoutFormChanged():
return formChanged(_that.customerName,_that.customerPhone,_that.customerAddress,_that.region,_that.couponCode);case CheckoutCouponApplied():
return couponApplied(_that.code);case CheckoutCouponRemoved():
return couponRemoved();case CheckoutSubmitted():
return submitted();case CheckoutAddressSelected():
return addressSelected(_that.address);case CheckoutAddressesRefreshed():
return addressesRefreshed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CartState cartState)?  initialized,TResult? Function( String governorateId,  String? centerId)?  governorateSelected,TResult? Function( String centerId)?  centerSelected,TResult? Function( String? customerName,  String? customerPhone,  String? customerAddress,  String? region,  String? couponCode)?  formChanged,TResult? Function( String code)?  couponApplied,TResult? Function()?  couponRemoved,TResult? Function()?  submitted,TResult? Function( AddressEntity address)?  addressSelected,TResult? Function()?  addressesRefreshed,}) {final _that = this;
switch (_that) {
case CheckoutInitialized() when initialized != null:
return initialized(_that.cartState);case CheckoutGovernorateSelected() when governorateSelected != null:
return governorateSelected(_that.governorateId,_that.centerId);case CheckoutCenterSelected() when centerSelected != null:
return centerSelected(_that.centerId);case CheckoutFormChanged() when formChanged != null:
return formChanged(_that.customerName,_that.customerPhone,_that.customerAddress,_that.region,_that.couponCode);case CheckoutCouponApplied() when couponApplied != null:
return couponApplied(_that.code);case CheckoutCouponRemoved() when couponRemoved != null:
return couponRemoved();case CheckoutSubmitted() when submitted != null:
return submitted();case CheckoutAddressSelected() when addressSelected != null:
return addressSelected(_that.address);case CheckoutAddressesRefreshed() when addressesRefreshed != null:
return addressesRefreshed();case _:
  return null;

}
}

}

/// @nodoc


class CheckoutInitialized implements CheckoutEvent {
  const CheckoutInitialized({required this.cartState});
  

 final  CartState cartState;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutInitializedCopyWith<CheckoutInitialized> get copyWith => _$CheckoutInitializedCopyWithImpl<CheckoutInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutInitialized&&(identical(other.cartState, cartState) || other.cartState == cartState));
}


@override
int get hashCode {
    return Object.hash(runtimeType,cartState);
}

@override
String toString() {
    return 'CheckoutEvent.initialized(cartState: $cartState)';
}


}

/// @nodoc
abstract mixin class $CheckoutInitializedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutInitializedCopyWith(CheckoutInitialized value, $Res Function(CheckoutInitialized) _then) = _$CheckoutInitializedCopyWithImpl;
@useResult
$Res call({
 CartState cartState
});


$CartStateCopyWith<$Res> get cartState;

}
/// @nodoc
class _$CheckoutInitializedCopyWithImpl<$Res>
    implements $CheckoutInitializedCopyWith<$Res> {
  _$CheckoutInitializedCopyWithImpl(this._self, this._then);

  final CheckoutInitialized _self;
  final $Res Function(CheckoutInitialized) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cartState = null,}) {
  return _then(CheckoutInitialized(
cartState: null == cartState ? _self.cartState : cartState // ignore: cast_nullable_to_non_nullable
as CartState,
  ));
}

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartStateCopyWith<$Res> get cartState {
  
  return $CartStateCopyWith<$Res>(_self.cartState, (value) {
    return _then(_self.copyWith(cartState: value));
  });
}
}

/// @nodoc


class CheckoutGovernorateSelected implements CheckoutEvent {
  const CheckoutGovernorateSelected(this.governorateId, {this.centerId});
  

 final  String governorateId;
 final  String? centerId;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutGovernorateSelectedCopyWith<CheckoutGovernorateSelected> get copyWith => _$CheckoutGovernorateSelectedCopyWithImpl<CheckoutGovernorateSelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutGovernorateSelected&&(identical(other.governorateId, governorateId) || other.governorateId == governorateId)&&(identical(other.centerId, centerId) || other.centerId == centerId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,governorateId,centerId);
}

@override
String toString() {
    return 'CheckoutEvent.governorateSelected(governorateId: $governorateId, centerId: $centerId)';
}


}

/// @nodoc
abstract mixin class $CheckoutGovernorateSelectedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutGovernorateSelectedCopyWith(CheckoutGovernorateSelected value, $Res Function(CheckoutGovernorateSelected) _then) = _$CheckoutGovernorateSelectedCopyWithImpl;
@useResult
$Res call({
 String governorateId, String? centerId
});




}
/// @nodoc
class _$CheckoutGovernorateSelectedCopyWithImpl<$Res>
    implements $CheckoutGovernorateSelectedCopyWith<$Res> {
  _$CheckoutGovernorateSelectedCopyWithImpl(this._self, this._then);

  final CheckoutGovernorateSelected _self;
  final $Res Function(CheckoutGovernorateSelected) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? governorateId = null,Object? centerId = freezed,}) {
  return _then(CheckoutGovernorateSelected(
null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,centerId: freezed == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CheckoutCenterSelected implements CheckoutEvent {
  const CheckoutCenterSelected(this.centerId);
  

 final  String centerId;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutCenterSelectedCopyWith<CheckoutCenterSelected> get copyWith => _$CheckoutCenterSelectedCopyWithImpl<CheckoutCenterSelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutCenterSelected&&(identical(other.centerId, centerId) || other.centerId == centerId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,centerId);
}

@override
String toString() {
    return 'CheckoutEvent.centerSelected(centerId: $centerId)';
}


}

/// @nodoc
abstract mixin class $CheckoutCenterSelectedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutCenterSelectedCopyWith(CheckoutCenterSelected value, $Res Function(CheckoutCenterSelected) _then) = _$CheckoutCenterSelectedCopyWithImpl;
@useResult
$Res call({
 String centerId
});




}
/// @nodoc
class _$CheckoutCenterSelectedCopyWithImpl<$Res>
    implements $CheckoutCenterSelectedCopyWith<$Res> {
  _$CheckoutCenterSelectedCopyWithImpl(this._self, this._then);

  final CheckoutCenterSelected _self;
  final $Res Function(CheckoutCenterSelected) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? centerId = null,}) {
  return _then(CheckoutCenterSelected(
null == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CheckoutFormChanged implements CheckoutEvent {
  const CheckoutFormChanged({this.customerName, this.customerPhone, this.customerAddress, this.region, this.couponCode});
  

 final  String? customerName;
 final  String? customerPhone;
 final  String? customerAddress;
 final  String? region;
 final  String? couponCode;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutFormChangedCopyWith<CheckoutFormChanged> get copyWith => _$CheckoutFormChangedCopyWithImpl<CheckoutFormChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutFormChanged&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.region, region) || other.region == region)&&(identical(other.couponCode, couponCode) || other.couponCode == couponCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,customerName,customerPhone,customerAddress,region,couponCode);
}

@override
String toString() {
    return 'CheckoutEvent.formChanged(customerName: $customerName, customerPhone: $customerPhone, customerAddress: $customerAddress, region: $region, couponCode: $couponCode)';
}


}

/// @nodoc
abstract mixin class $CheckoutFormChangedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutFormChangedCopyWith(CheckoutFormChanged value, $Res Function(CheckoutFormChanged) _then) = _$CheckoutFormChangedCopyWithImpl;
@useResult
$Res call({
 String? customerName, String? customerPhone, String? customerAddress, String? region, String? couponCode
});




}
/// @nodoc
class _$CheckoutFormChangedCopyWithImpl<$Res>
    implements $CheckoutFormChangedCopyWith<$Res> {
  _$CheckoutFormChangedCopyWithImpl(this._self, this._then);

  final CheckoutFormChanged _self;
  final $Res Function(CheckoutFormChanged) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customerName = freezed,Object? customerPhone = freezed,Object? customerAddress = freezed,Object? region = freezed,Object? couponCode = freezed,}) {
  return _then(CheckoutFormChanged(
customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerAddress: freezed == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CheckoutCouponApplied implements CheckoutEvent {
  const CheckoutCouponApplied(this.code);
  

 final  String code;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutCouponAppliedCopyWith<CheckoutCouponApplied> get copyWith => _$CheckoutCouponAppliedCopyWithImpl<CheckoutCouponApplied>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutCouponApplied&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'CheckoutEvent.couponApplied(code: $code)';
}


}

/// @nodoc
abstract mixin class $CheckoutCouponAppliedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutCouponAppliedCopyWith(CheckoutCouponApplied value, $Res Function(CheckoutCouponApplied) _then) = _$CheckoutCouponAppliedCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$CheckoutCouponAppliedCopyWithImpl<$Res>
    implements $CheckoutCouponAppliedCopyWith<$Res> {
  _$CheckoutCouponAppliedCopyWithImpl(this._self, this._then);

  final CheckoutCouponApplied _self;
  final $Res Function(CheckoutCouponApplied) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(CheckoutCouponApplied(
null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CheckoutCouponRemoved implements CheckoutEvent {
  const CheckoutCouponRemoved();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutCouponRemoved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CheckoutEvent.couponRemoved()';
}


}




/// @nodoc


class CheckoutSubmitted implements CheckoutEvent {
  const CheckoutSubmitted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CheckoutEvent.submitted()';
}


}




/// @nodoc


class CheckoutAddressSelected implements CheckoutEvent {
  const CheckoutAddressSelected(this.address);
  

 final  AddressEntity address;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutAddressSelectedCopyWith<CheckoutAddressSelected> get copyWith => _$CheckoutAddressSelectedCopyWithImpl<CheckoutAddressSelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutAddressSelected&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode {
    return Object.hash(runtimeType,address);
}

@override
String toString() {
    return 'CheckoutEvent.addressSelected(address: $address)';
}


}

/// @nodoc
abstract mixin class $CheckoutAddressSelectedCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $CheckoutAddressSelectedCopyWith(CheckoutAddressSelected value, $Res Function(CheckoutAddressSelected) _then) = _$CheckoutAddressSelectedCopyWithImpl;
@useResult
$Res call({
 AddressEntity address
});


$AddressEntityCopyWith<$Res> get address;

}
/// @nodoc
class _$CheckoutAddressSelectedCopyWithImpl<$Res>
    implements $CheckoutAddressSelectedCopyWith<$Res> {
  _$CheckoutAddressSelectedCopyWithImpl(this._self, this._then);

  final CheckoutAddressSelected _self;
  final $Res Function(CheckoutAddressSelected) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(CheckoutAddressSelected(
null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressEntity,
  ));
}

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressEntityCopyWith<$Res> get address {
  
  return $AddressEntityCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

/// @nodoc


class CheckoutAddressesRefreshed implements CheckoutEvent {
  const CheckoutAddressesRefreshed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutAddressesRefreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CheckoutEvent.addressesRefreshed()';
}


}




// dart format on
