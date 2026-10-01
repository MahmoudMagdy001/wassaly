// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_order_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlaceOrderParams {

 String get customerName; String get customerPhone; String get customerAddress; String get governorateId; String get region; String get centerId; List<CartItemEntity> get items; String? get couponCode;
/// Create a copy of PlaceOrderParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceOrderParamsCopyWith<PlaceOrderParams> get copyWith => _$PlaceOrderParamsCopyWithImpl<PlaceOrderParams>(this as PlaceOrderParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PlaceOrderParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceOrderParams&&(identical(other.customerName, _this.customerName) || other.customerName == _this.customerName)&&(identical(other.customerPhone, _this.customerPhone) || other.customerPhone == _this.customerPhone)&&(identical(other.customerAddress, _this.customerAddress) || other.customerAddress == _this.customerAddress)&&(identical(other.governorateId, _this.governorateId) || other.governorateId == _this.governorateId)&&(identical(other.region, _this.region) || other.region == _this.region)&&(identical(other.centerId, _this.centerId) || other.centerId == _this.centerId)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.couponCode, _this.couponCode) || other.couponCode == _this.couponCode));
}


@override
int get hashCode {
  final _this = this as PlaceOrderParams;
  return Object.hash(runtimeType,_this.customerName,_this.customerPhone,_this.customerAddress,_this.governorateId,_this.region,_this.centerId,const DeepCollectionEquality().hash(_this.items),_this.couponCode);
}

@override
String toString() {
  final _this = this as PlaceOrderParams;
  return 'PlaceOrderParams(customerName: ${_this.customerName}, customerPhone: ${_this.customerPhone}, customerAddress: ${_this.customerAddress}, governorateId: ${_this.governorateId}, region: ${_this.region}, centerId: ${_this.centerId}, items: ${_this.items}, couponCode: ${_this.couponCode})';
}


}

/// @nodoc
abstract mixin class $PlaceOrderParamsCopyWith<$Res>  {
  factory $PlaceOrderParamsCopyWith(PlaceOrderParams value, $Res Function(PlaceOrderParams) _then) = _$PlaceOrderParamsCopyWithImpl;
@useResult
$Res call({
 String customerName, String customerPhone, String customerAddress, String governorateId, String region, String centerId, List<CartItemEntity> items, String? couponCode
});




}
/// @nodoc
class _$PlaceOrderParamsCopyWithImpl<$Res>
    implements $PlaceOrderParamsCopyWith<$Res> {
  _$PlaceOrderParamsCopyWithImpl(this._self, this._then);

  final PlaceOrderParams _self;
  final $Res Function(PlaceOrderParams) _then;

/// Create a copy of PlaceOrderParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerName = null,Object? customerPhone = null,Object? customerAddress = null,Object? governorateId = null,Object? region = null,Object? centerId = null,Object? items = null,Object? couponCode = freezed,}) {
  return _then(PlaceOrderParams(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,centerId: null == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemEntity>,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceOrderParams].
extension PlaceOrderParamsPatterns on PlaceOrderParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceOrderParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceOrderParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceOrderParams value)  $default,){
final _that = this;
switch (_that) {
case _PlaceOrderParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceOrderParams value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceOrderParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerName,  String customerPhone,  String customerAddress,  String governorateId,  String region,  String centerId,  List<CartItemEntity> items,  String? couponCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceOrderParams() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerAddress,_that.governorateId,_that.region,_that.centerId,_that.items,_that.couponCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerName,  String customerPhone,  String customerAddress,  String governorateId,  String region,  String centerId,  List<CartItemEntity> items,  String? couponCode)  $default,) {final _that = this;
switch (_that) {
case _PlaceOrderParams():
return $default(_that.customerName,_that.customerPhone,_that.customerAddress,_that.governorateId,_that.region,_that.centerId,_that.items,_that.couponCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerName,  String customerPhone,  String customerAddress,  String governorateId,  String region,  String centerId,  List<CartItemEntity> items,  String? couponCode)?  $default,) {final _that = this;
switch (_that) {
case _PlaceOrderParams() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerAddress,_that.governorateId,_that.region,_that.centerId,_that.items,_that.couponCode);case _:
  return null;

}
}

}

/// @nodoc


class _PlaceOrderParams implements PlaceOrderParams {
  const _PlaceOrderParams({required this.customerName, required this.customerPhone, required this.customerAddress, required this.governorateId, required this.region, required this.centerId, required  List<CartItemEntity> items, this.couponCode}): _items = items;
  

@override final  String customerName;
@override final  String customerPhone;
@override final  String customerAddress;
@override final  String governorateId;
@override final  String region;
@override final  String centerId;
 final  List<CartItemEntity> _items;
@override List<CartItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? couponCode;

/// Create a copy of PlaceOrderParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceOrderParamsCopyWith<_PlaceOrderParams> get copyWith => __$PlaceOrderParamsCopyWithImpl<_PlaceOrderParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceOrderParams&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.governorateId, governorateId) || other.governorateId == governorateId)&&(identical(other.region, region) || other.region == region)&&(identical(other.centerId, centerId) || other.centerId == centerId)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.couponCode, couponCode) || other.couponCode == couponCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,customerName,customerPhone,customerAddress,governorateId,region,centerId,const DeepCollectionEquality().hash(_items),couponCode);
}

@override
String toString() {
    return 'PlaceOrderParams(customerName: $customerName, customerPhone: $customerPhone, customerAddress: $customerAddress, governorateId: $governorateId, region: $region, centerId: $centerId, items: $items, couponCode: $couponCode)';
}


}

/// @nodoc
abstract mixin class _$PlaceOrderParamsCopyWith<$Res> implements $PlaceOrderParamsCopyWith<$Res> {
  factory _$PlaceOrderParamsCopyWith(_PlaceOrderParams value, $Res Function(_PlaceOrderParams) _then) = __$PlaceOrderParamsCopyWithImpl;
@override @useResult
$Res call({
 String customerName, String customerPhone, String customerAddress, String governorateId, String region, String centerId, List<CartItemEntity> items, String? couponCode
});




}
/// @nodoc
class __$PlaceOrderParamsCopyWithImpl<$Res>
    implements _$PlaceOrderParamsCopyWith<$Res> {
  __$PlaceOrderParamsCopyWithImpl(this._self, this._then);

  final _PlaceOrderParams _self;
  final $Res Function(_PlaceOrderParams) _then;

/// Create a copy of PlaceOrderParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerName = null,Object? customerPhone = null,Object? customerAddress = null,Object? governorateId = null,Object? region = null,Object? centerId = null,Object? items = null,Object? couponCode = freezed,}) {
  return _then(_PlaceOrderParams(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,centerId: null == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemEntity>,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
