// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderDetailState {

 OrderDetailStatus get status; OrderActionStatus get actionStatus; OrderEntity? get order; String get errorMessage; String get actionErrorMessage; bool get isNotFound;
/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailStateCopyWith<OrderDetailState> get copyWith => _$OrderDetailStateCopyWithImpl<OrderDetailState>(this as OrderDetailState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderDetailState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.actionStatus, _this.actionStatus) || other.actionStatus == _this.actionStatus)&&(identical(other.order, _this.order) || other.order == _this.order)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.actionErrorMessage, _this.actionErrorMessage) || other.actionErrorMessage == _this.actionErrorMessage)&&(identical(other.isNotFound, _this.isNotFound) || other.isNotFound == _this.isNotFound));
}


@override
int get hashCode {
  final _this = this as OrderDetailState;
  return Object.hash(runtimeType,_this.status,_this.actionStatus,_this.order,_this.errorMessage,_this.actionErrorMessage,_this.isNotFound);
}

@override
String toString() {
  final _this = this as OrderDetailState;
  return 'OrderDetailState(status: ${_this.status}, actionStatus: ${_this.actionStatus}, order: ${_this.order}, errorMessage: ${_this.errorMessage}, actionErrorMessage: ${_this.actionErrorMessage}, isNotFound: ${_this.isNotFound})';
}


}

/// @nodoc
abstract mixin class $OrderDetailStateCopyWith<$Res>  {
  factory $OrderDetailStateCopyWith(OrderDetailState value, $Res Function(OrderDetailState) _then) = _$OrderDetailStateCopyWithImpl;
@useResult
$Res call({
 OrderDetailStatus status, OrderActionStatus actionStatus, OrderEntity? order, String errorMessage, String actionErrorMessage, bool isNotFound
});


$OrderEntityCopyWith<$Res>? get order;

}
/// @nodoc
class _$OrderDetailStateCopyWithImpl<$Res>
    implements $OrderDetailStateCopyWith<$Res> {
  _$OrderDetailStateCopyWithImpl(this._self, this._then);

  final OrderDetailState _self;
  final $Res Function(OrderDetailState) _then;

/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? actionStatus = null,Object? order = freezed,Object? errorMessage = null,Object? actionErrorMessage = null,Object? isNotFound = null,}) {
  return _then(OrderDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDetailStatus,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as OrderActionStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,actionErrorMessage: null == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String,isNotFound: null == isNotFound ? _self.isNotFound : isNotFound // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $OrderEntityCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetailState].
extension OrderDetailStatePatterns on OrderDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailState value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderDetailStatus status,  OrderActionStatus actionStatus,  OrderEntity? order,  String errorMessage,  String actionErrorMessage,  bool isNotFound)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailState() when $default != null:
return $default(_that.status,_that.actionStatus,_that.order,_that.errorMessage,_that.actionErrorMessage,_that.isNotFound);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderDetailStatus status,  OrderActionStatus actionStatus,  OrderEntity? order,  String errorMessage,  String actionErrorMessage,  bool isNotFound)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailState():
return $default(_that.status,_that.actionStatus,_that.order,_that.errorMessage,_that.actionErrorMessage,_that.isNotFound);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderDetailStatus status,  OrderActionStatus actionStatus,  OrderEntity? order,  String errorMessage,  String actionErrorMessage,  bool isNotFound)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailState() when $default != null:
return $default(_that.status,_that.actionStatus,_that.order,_that.errorMessage,_that.actionErrorMessage,_that.isNotFound);case _:
  return null;

}
}

}

/// @nodoc


class _OrderDetailState implements OrderDetailState {
  const _OrderDetailState({this.status = OrderDetailStatus.initial, this.actionStatus = OrderActionStatus.initial, this.order, this.errorMessage = '', this.actionErrorMessage = '', this.isNotFound = false});
  

@override@JsonKey() final  OrderDetailStatus status;
@override@JsonKey() final  OrderActionStatus actionStatus;
@override final  OrderEntity? order;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  String actionErrorMessage;
@override@JsonKey() final  bool isNotFound;

/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailStateCopyWith<_OrderDetailState> get copyWith => __$OrderDetailStateCopyWithImpl<_OrderDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.order, order) || other.order == order)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.actionErrorMessage, actionErrorMessage) || other.actionErrorMessage == actionErrorMessage)&&(identical(other.isNotFound, isNotFound) || other.isNotFound == isNotFound));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,actionStatus,order,errorMessage,actionErrorMessage,isNotFound);
}

@override
String toString() {
    return 'OrderDetailState(status: $status, actionStatus: $actionStatus, order: $order, errorMessage: $errorMessage, actionErrorMessage: $actionErrorMessage, isNotFound: $isNotFound)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailStateCopyWith<$Res> implements $OrderDetailStateCopyWith<$Res> {
  factory _$OrderDetailStateCopyWith(_OrderDetailState value, $Res Function(_OrderDetailState) _then) = __$OrderDetailStateCopyWithImpl;
@override @useResult
$Res call({
 OrderDetailStatus status, OrderActionStatus actionStatus, OrderEntity? order, String errorMessage, String actionErrorMessage, bool isNotFound
});


@override $OrderEntityCopyWith<$Res>? get order;

}
/// @nodoc
class __$OrderDetailStateCopyWithImpl<$Res>
    implements _$OrderDetailStateCopyWith<$Res> {
  __$OrderDetailStateCopyWithImpl(this._self, this._then);

  final _OrderDetailState _self;
  final $Res Function(_OrderDetailState) _then;

/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? actionStatus = null,Object? order = freezed,Object? errorMessage = null,Object? actionErrorMessage = null,Object? isNotFound = null,}) {
  return _then(_OrderDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderDetailStatus,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as OrderActionStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,actionErrorMessage: null == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String,isNotFound: null == isNotFound ? _self.isNotFound : isNotFound // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OrderDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $OrderEntityCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}
}

// dart format on
