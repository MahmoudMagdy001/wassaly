// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_checkout_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartCheckoutEntity {

 UserEntity? get user; AddressEntity? get selectedAddress; GovernorateEntity? get governorate; double get shippingCost; double get subtotal; double get total;
/// Create a copy of CartCheckoutEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCheckoutEntityCopyWith<CartCheckoutEntity> get copyWith => _$CartCheckoutEntityCopyWithImpl<CartCheckoutEntity>(this as CartCheckoutEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CartCheckoutEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCheckoutEntity&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.selectedAddress, _this.selectedAddress) || other.selectedAddress == _this.selectedAddress)&&(identical(other.governorate, _this.governorate) || other.governorate == _this.governorate)&&(identical(other.shippingCost, _this.shippingCost) || other.shippingCost == _this.shippingCost)&&(identical(other.subtotal, _this.subtotal) || other.subtotal == _this.subtotal)&&(identical(other.total, _this.total) || other.total == _this.total));
}


@override
int get hashCode {
  final _this = this as CartCheckoutEntity;
  return Object.hash(runtimeType,_this.user,_this.selectedAddress,_this.governorate,_this.shippingCost,_this.subtotal,_this.total);
}

@override
String toString() {
  final _this = this as CartCheckoutEntity;
  return 'CartCheckoutEntity(user: ${_this.user}, selectedAddress: ${_this.selectedAddress}, governorate: ${_this.governorate}, shippingCost: ${_this.shippingCost}, subtotal: ${_this.subtotal}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $CartCheckoutEntityCopyWith<$Res>  {
  factory $CartCheckoutEntityCopyWith(CartCheckoutEntity value, $Res Function(CartCheckoutEntity) _then) = _$CartCheckoutEntityCopyWithImpl;
@useResult
$Res call({
 UserEntity? user, AddressEntity? selectedAddress, GovernorateEntity? governorate, double shippingCost, double subtotal, double total
});


$UserEntityCopyWith<$Res>? get user;$AddressEntityCopyWith<$Res>? get selectedAddress;$GovernorateEntityCopyWith<$Res>? get governorate;

}
/// @nodoc
class _$CartCheckoutEntityCopyWithImpl<$Res>
    implements $CartCheckoutEntityCopyWith<$Res> {
  _$CartCheckoutEntityCopyWithImpl(this._self, this._then);

  final CartCheckoutEntity _self;
  final $Res Function(CartCheckoutEntity) _then;

/// Create a copy of CartCheckoutEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? selectedAddress = freezed,Object? governorate = freezed,Object? shippingCost = null,Object? subtotal = null,Object? total = null,}) {
  return _then(CartCheckoutEntity(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressEntity?,governorate: freezed == governorate ? _self.governorate : governorate // ignore: cast_nullable_to_non_nullable
as GovernorateEntity?,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as double,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of CartCheckoutEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of CartCheckoutEntity
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
}/// Create a copy of CartCheckoutEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovernorateEntityCopyWith<$Res>? get governorate {
    if (_self.governorate == null) {
    return null;
  }

  return $GovernorateEntityCopyWith<$Res>(_self.governorate!, (value) {
    return _then(_self.copyWith(governorate: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartCheckoutEntity].
extension CartCheckoutEntityPatterns on CartCheckoutEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCheckoutEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCheckoutEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCheckoutEntity value)  $default,){
final _that = this;
switch (_that) {
case _CartCheckoutEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCheckoutEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CartCheckoutEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserEntity? user,  AddressEntity? selectedAddress,  GovernorateEntity? governorate,  double shippingCost,  double subtotal,  double total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCheckoutEntity() when $default != null:
return $default(_that.user,_that.selectedAddress,_that.governorate,_that.shippingCost,_that.subtotal,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserEntity? user,  AddressEntity? selectedAddress,  GovernorateEntity? governorate,  double shippingCost,  double subtotal,  double total)  $default,) {final _that = this;
switch (_that) {
case _CartCheckoutEntity():
return $default(_that.user,_that.selectedAddress,_that.governorate,_that.shippingCost,_that.subtotal,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserEntity? user,  AddressEntity? selectedAddress,  GovernorateEntity? governorate,  double shippingCost,  double subtotal,  double total)?  $default,) {final _that = this;
switch (_that) {
case _CartCheckoutEntity() when $default != null:
return $default(_that.user,_that.selectedAddress,_that.governorate,_that.shippingCost,_that.subtotal,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _CartCheckoutEntity implements CartCheckoutEntity {
  const _CartCheckoutEntity({this.user, this.selectedAddress, this.governorate, this.shippingCost = 0.0, this.subtotal = 0.0, this.total = 0.0});
  

@override final  UserEntity? user;
@override final  AddressEntity? selectedAddress;
@override final  GovernorateEntity? governorate;
@override@JsonKey() final  double shippingCost;
@override@JsonKey() final  double subtotal;
@override@JsonKey() final  double total;

/// Create a copy of CartCheckoutEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCheckoutEntityCopyWith<_CartCheckoutEntity> get copyWith => __$CartCheckoutEntityCopyWithImpl<_CartCheckoutEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCheckoutEntity&&(identical(other.user, user) || other.user == user)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&(identical(other.governorate, governorate) || other.governorate == governorate)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user,selectedAddress,governorate,shippingCost,subtotal,total);
}

@override
String toString() {
    return 'CartCheckoutEntity(user: $user, selectedAddress: $selectedAddress, governorate: $governorate, shippingCost: $shippingCost, subtotal: $subtotal, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CartCheckoutEntityCopyWith<$Res> implements $CartCheckoutEntityCopyWith<$Res> {
  factory _$CartCheckoutEntityCopyWith(_CartCheckoutEntity value, $Res Function(_CartCheckoutEntity) _then) = __$CartCheckoutEntityCopyWithImpl;
@override @useResult
$Res call({
 UserEntity? user, AddressEntity? selectedAddress, GovernorateEntity? governorate, double shippingCost, double subtotal, double total
});


@override $UserEntityCopyWith<$Res>? get user;@override $AddressEntityCopyWith<$Res>? get selectedAddress;@override $GovernorateEntityCopyWith<$Res>? get governorate;

}
/// @nodoc
class __$CartCheckoutEntityCopyWithImpl<$Res>
    implements _$CartCheckoutEntityCopyWith<$Res> {
  __$CartCheckoutEntityCopyWithImpl(this._self, this._then);

  final _CartCheckoutEntity _self;
  final $Res Function(_CartCheckoutEntity) _then;

/// Create a copy of CartCheckoutEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? selectedAddress = freezed,Object? governorate = freezed,Object? shippingCost = null,Object? subtotal = null,Object? total = null,}) {
  return _then(_CartCheckoutEntity(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressEntity?,governorate: freezed == governorate ? _self.governorate : governorate // ignore: cast_nullable_to_non_nullable
as GovernorateEntity?,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as double,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of CartCheckoutEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of CartCheckoutEntity
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
}/// Create a copy of CartCheckoutEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GovernorateEntityCopyWith<$Res>? get governorate {
    if (_self.governorate == null) {
    return null;
  }

  return $GovernorateEntityCopyWith<$Res>(_self.governorate!, (value) {
    return _then(_self.copyWith(governorate: value));
  });
}
}

// dart format on
