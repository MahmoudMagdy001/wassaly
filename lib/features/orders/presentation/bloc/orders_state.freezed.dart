// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersState {

 OrdersStatus get status; PaginatedResponse<OrderEntity> get orders; OrdersStatus get serviceStatus; PaginatedResponse<BookingEntity> get serviceBookings; String get errorMessage;
/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersStateCopyWith<OrdersState> get copyWith => _$OrdersStateCopyWithImpl<OrdersState>(this as OrdersState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrdersState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.orders, _this.orders) || other.orders == _this.orders)&&(identical(other.serviceStatus, _this.serviceStatus) || other.serviceStatus == _this.serviceStatus)&&(identical(other.serviceBookings, _this.serviceBookings) || other.serviceBookings == _this.serviceBookings)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as OrdersState;
  return Object.hash(runtimeType,_this.status,_this.orders,_this.serviceStatus,_this.serviceBookings,_this.errorMessage);
}

@override
String toString() {
  final _this = this as OrdersState;
  return 'OrdersState(status: ${_this.status}, orders: ${_this.orders}, serviceStatus: ${_this.serviceStatus}, serviceBookings: ${_this.serviceBookings}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $OrdersStateCopyWith<$Res>  {
  factory $OrdersStateCopyWith(OrdersState value, $Res Function(OrdersState) _then) = _$OrdersStateCopyWithImpl;
@useResult
$Res call({
 OrdersStatus status, PaginatedResponse<OrderEntity> orders, OrdersStatus serviceStatus, PaginatedResponse<BookingEntity> serviceBookings, String errorMessage
});


$PaginatedResponseCopyWith<OrderEntity, $Res> get orders;$PaginatedResponseCopyWith<BookingEntity, $Res> get serviceBookings;

}
/// @nodoc
class _$OrdersStateCopyWithImpl<$Res>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._self, this._then);

  final OrdersState _self;
  final $Res Function(OrdersState) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? orders = null,Object? serviceStatus = null,Object? serviceBookings = null,Object? errorMessage = null,}) {
  return _then(OrdersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrdersStatus,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<OrderEntity>,serviceStatus: null == serviceStatus ? _self.serviceStatus : serviceStatus // ignore: cast_nullable_to_non_nullable
as OrdersStatus,serviceBookings: null == serviceBookings ? _self.serviceBookings : serviceBookings // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<BookingEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<OrderEntity, $Res> get orders {
  
  return $PaginatedResponseCopyWith<OrderEntity, $Res>(_self.orders, (value) {
    return _then(_self.copyWith(orders: value));
  });
}/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<BookingEntity, $Res> get serviceBookings {
  
  return $PaginatedResponseCopyWith<BookingEntity, $Res>(_self.serviceBookings, (value) {
    return _then(_self.copyWith(serviceBookings: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrdersState].
extension OrdersStatePatterns on OrdersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersState value)  $default,){
final _that = this;
switch (_that) {
case _OrdersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersState value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrdersStatus status,  PaginatedResponse<OrderEntity> orders,  OrdersStatus serviceStatus,  PaginatedResponse<BookingEntity> serviceBookings,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
return $default(_that.status,_that.orders,_that.serviceStatus,_that.serviceBookings,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrdersStatus status,  PaginatedResponse<OrderEntity> orders,  OrdersStatus serviceStatus,  PaginatedResponse<BookingEntity> serviceBookings,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _OrdersState():
return $default(_that.status,_that.orders,_that.serviceStatus,_that.serviceBookings,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrdersStatus status,  PaginatedResponse<OrderEntity> orders,  OrdersStatus serviceStatus,  PaginatedResponse<BookingEntity> serviceBookings,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _OrdersState() when $default != null:
return $default(_that.status,_that.orders,_that.serviceStatus,_that.serviceBookings,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _OrdersState implements OrdersState {
  const _OrdersState({this.status = OrdersStatus.initial, this.orders = const PaginatedResponse<OrderEntity>(data: []), this.serviceStatus = OrdersStatus.initial, this.serviceBookings = const PaginatedResponse<BookingEntity>(data: []), this.errorMessage = ''});
  

@override@JsonKey() final  OrdersStatus status;
@override@JsonKey() final  PaginatedResponse<OrderEntity> orders;
@override@JsonKey() final  OrdersStatus serviceStatus;
@override@JsonKey() final  PaginatedResponse<BookingEntity> serviceBookings;
@override@JsonKey() final  String errorMessage;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersStateCopyWith<_OrdersState> get copyWith => __$OrdersStateCopyWithImpl<_OrdersState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersState&&(identical(other.status, status) || other.status == status)&&(identical(other.orders, orders) || other.orders == orders)&&(identical(other.serviceStatus, serviceStatus) || other.serviceStatus == serviceStatus)&&(identical(other.serviceBookings, serviceBookings) || other.serviceBookings == serviceBookings)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,orders,serviceStatus,serviceBookings,errorMessage);
}

@override
String toString() {
    return 'OrdersState(status: $status, orders: $orders, serviceStatus: $serviceStatus, serviceBookings: $serviceBookings, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$OrdersStateCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$OrdersStateCopyWith(_OrdersState value, $Res Function(_OrdersState) _then) = __$OrdersStateCopyWithImpl;
@override @useResult
$Res call({
 OrdersStatus status, PaginatedResponse<OrderEntity> orders, OrdersStatus serviceStatus, PaginatedResponse<BookingEntity> serviceBookings, String errorMessage
});


@override $PaginatedResponseCopyWith<OrderEntity, $Res> get orders;@override $PaginatedResponseCopyWith<BookingEntity, $Res> get serviceBookings;

}
/// @nodoc
class __$OrdersStateCopyWithImpl<$Res>
    implements _$OrdersStateCopyWith<$Res> {
  __$OrdersStateCopyWithImpl(this._self, this._then);

  final _OrdersState _self;
  final $Res Function(_OrdersState) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? orders = null,Object? serviceStatus = null,Object? serviceBookings = null,Object? errorMessage = null,}) {
  return _then(_OrdersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrdersStatus,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<OrderEntity>,serviceStatus: null == serviceStatus ? _self.serviceStatus : serviceStatus // ignore: cast_nullable_to_non_nullable
as OrdersStatus,serviceBookings: null == serviceBookings ? _self.serviceBookings : serviceBookings // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<BookingEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<OrderEntity, $Res> get orders {
  
  return $PaginatedResponseCopyWith<OrderEntity, $Res>(_self.orders, (value) {
    return _then(_self.copyWith(orders: value));
  });
}/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<BookingEntity, $Res> get serviceBookings {
  
  return $PaginatedResponseCopyWith<BookingEntity, $Res>(_self.serviceBookings, (value) {
    return _then(_self.copyWith(serviceBookings: value));
  });
}
}

// dart format on
