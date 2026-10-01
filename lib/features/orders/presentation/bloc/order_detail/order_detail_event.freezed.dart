// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderDetailEvent {

 int get orderId;
/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailEventCopyWith<OrderDetailEvent> get copyWith => _$OrderDetailEventCopyWithImpl<OrderDetailEvent>(this as OrderDetailEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderDetailEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailEvent&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId));
}


@override
int get hashCode {
  final _this = this as OrderDetailEvent;
  return Object.hash(runtimeType,_this.orderId);
}

@override
String toString() {
  final _this = this as OrderDetailEvent;
  return 'OrderDetailEvent(orderId: ${_this.orderId})';
}


}

/// @nodoc
abstract mixin class $OrderDetailEventCopyWith<$Res>  {
  factory $OrderDetailEventCopyWith(OrderDetailEvent value, $Res Function(OrderDetailEvent) _then) = _$OrderDetailEventCopyWithImpl;
@useResult
$Res call({
 int orderId
});




}
/// @nodoc
class _$OrderDetailEventCopyWithImpl<$Res>
    implements $OrderDetailEventCopyWith<$Res> {
  _$OrderDetailEventCopyWithImpl(this._self, this._then);

  final OrderDetailEvent _self;
  final $Res Function(OrderDetailEvent) _then;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDetailEvent].
extension OrderDetailEventPatterns on OrderDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchOrderDetailEvent value)?  fetch,TResult Function( CancelOrderEvent value)?  cancel,TResult Function( UpdateOrderEvent value)?  update,TResult Function( DeleteOrderEvent value)?  delete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchOrderDetailEvent() when fetch != null:
return fetch(_that);case CancelOrderEvent() when cancel != null:
return cancel(_that);case UpdateOrderEvent() when update != null:
return update(_that);case DeleteOrderEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchOrderDetailEvent value)  fetch,required TResult Function( CancelOrderEvent value)  cancel,required TResult Function( UpdateOrderEvent value)  update,required TResult Function( DeleteOrderEvent value)  delete,}){
final _that = this;
switch (_that) {
case FetchOrderDetailEvent():
return fetch(_that);case CancelOrderEvent():
return cancel(_that);case UpdateOrderEvent():
return update(_that);case DeleteOrderEvent():
return delete(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchOrderDetailEvent value)?  fetch,TResult? Function( CancelOrderEvent value)?  cancel,TResult? Function( UpdateOrderEvent value)?  update,TResult? Function( DeleteOrderEvent value)?  delete,}){
final _that = this;
switch (_that) {
case FetchOrderDetailEvent() when fetch != null:
return fetch(_that);case CancelOrderEvent() when cancel != null:
return cancel(_that);case UpdateOrderEvent() when update != null:
return update(_that);case DeleteOrderEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int orderId)?  fetch,TResult Function( int orderId)?  cancel,TResult Function( int orderId,  Map<String, dynamic> data)?  update,TResult Function( int orderId)?  delete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchOrderDetailEvent() when fetch != null:
return fetch(_that.orderId);case CancelOrderEvent() when cancel != null:
return cancel(_that.orderId);case UpdateOrderEvent() when update != null:
return update(_that.orderId,_that.data);case DeleteOrderEvent() when delete != null:
return delete(_that.orderId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int orderId)  fetch,required TResult Function( int orderId)  cancel,required TResult Function( int orderId,  Map<String, dynamic> data)  update,required TResult Function( int orderId)  delete,}) {final _that = this;
switch (_that) {
case FetchOrderDetailEvent():
return fetch(_that.orderId);case CancelOrderEvent():
return cancel(_that.orderId);case UpdateOrderEvent():
return update(_that.orderId,_that.data);case DeleteOrderEvent():
return delete(_that.orderId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int orderId)?  fetch,TResult? Function( int orderId)?  cancel,TResult? Function( int orderId,  Map<String, dynamic> data)?  update,TResult? Function( int orderId)?  delete,}) {final _that = this;
switch (_that) {
case FetchOrderDetailEvent() when fetch != null:
return fetch(_that.orderId);case CancelOrderEvent() when cancel != null:
return cancel(_that.orderId);case UpdateOrderEvent() when update != null:
return update(_that.orderId,_that.data);case DeleteOrderEvent() when delete != null:
return delete(_that.orderId);case _:
  return null;

}
}

}

/// @nodoc


class FetchOrderDetailEvent implements OrderDetailEvent {
  const FetchOrderDetailEvent(this.orderId);
  

@override final  int orderId;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchOrderDetailEventCopyWith<FetchOrderDetailEvent> get copyWith => _$FetchOrderDetailEventCopyWithImpl<FetchOrderDetailEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchOrderDetailEvent&&(identical(other.orderId, orderId) || other.orderId == orderId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,orderId);
}

@override
String toString() {
    return 'OrderDetailEvent.fetch(orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class $FetchOrderDetailEventCopyWith<$Res> implements $OrderDetailEventCopyWith<$Res> {
  factory $FetchOrderDetailEventCopyWith(FetchOrderDetailEvent value, $Res Function(FetchOrderDetailEvent) _then) = _$FetchOrderDetailEventCopyWithImpl;
@override @useResult
$Res call({
 int orderId
});




}
/// @nodoc
class _$FetchOrderDetailEventCopyWithImpl<$Res>
    implements $FetchOrderDetailEventCopyWith<$Res> {
  _$FetchOrderDetailEventCopyWithImpl(this._self, this._then);

  final FetchOrderDetailEvent _self;
  final $Res Function(FetchOrderDetailEvent) _then;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,}) {
  return _then(FetchOrderDetailEvent(
null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CancelOrderEvent implements OrderDetailEvent {
  const CancelOrderEvent(this.orderId);
  

@override final  int orderId;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelOrderEventCopyWith<CancelOrderEvent> get copyWith => _$CancelOrderEventCopyWithImpl<CancelOrderEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelOrderEvent&&(identical(other.orderId, orderId) || other.orderId == orderId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,orderId);
}

@override
String toString() {
    return 'OrderDetailEvent.cancel(orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class $CancelOrderEventCopyWith<$Res> implements $OrderDetailEventCopyWith<$Res> {
  factory $CancelOrderEventCopyWith(CancelOrderEvent value, $Res Function(CancelOrderEvent) _then) = _$CancelOrderEventCopyWithImpl;
@override @useResult
$Res call({
 int orderId
});




}
/// @nodoc
class _$CancelOrderEventCopyWithImpl<$Res>
    implements $CancelOrderEventCopyWith<$Res> {
  _$CancelOrderEventCopyWithImpl(this._self, this._then);

  final CancelOrderEvent _self;
  final $Res Function(CancelOrderEvent) _then;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,}) {
  return _then(CancelOrderEvent(
null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateOrderEvent implements OrderDetailEvent {
  const UpdateOrderEvent(this.orderId,  Map<String, dynamic> data): _data = data;
  

@override final  int orderId;
 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateOrderEventCopyWith<UpdateOrderEvent> get copyWith => _$UpdateOrderEventCopyWithImpl<UpdateOrderEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOrderEvent&&(identical(other.orderId, orderId) || other.orderId == orderId)&&const DeepCollectionEquality().equals(other.data, _data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,orderId,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'OrderDetailEvent.update(orderId: $orderId, data: $data)';
}


}

/// @nodoc
abstract mixin class $UpdateOrderEventCopyWith<$Res> implements $OrderDetailEventCopyWith<$Res> {
  factory $UpdateOrderEventCopyWith(UpdateOrderEvent value, $Res Function(UpdateOrderEvent) _then) = _$UpdateOrderEventCopyWithImpl;
@override @useResult
$Res call({
 int orderId, Map<String, dynamic> data
});




}
/// @nodoc
class _$UpdateOrderEventCopyWithImpl<$Res>
    implements $UpdateOrderEventCopyWith<$Res> {
  _$UpdateOrderEventCopyWithImpl(this._self, this._then);

  final UpdateOrderEvent _self;
  final $Res Function(UpdateOrderEvent) _then;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? data = null,}) {
  return _then(UpdateOrderEvent(
null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class DeleteOrderEvent implements OrderDetailEvent {
  const DeleteOrderEvent(this.orderId);
  

@override final  int orderId;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteOrderEventCopyWith<DeleteOrderEvent> get copyWith => _$DeleteOrderEventCopyWithImpl<DeleteOrderEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteOrderEvent&&(identical(other.orderId, orderId) || other.orderId == orderId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,orderId);
}

@override
String toString() {
    return 'OrderDetailEvent.delete(orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class $DeleteOrderEventCopyWith<$Res> implements $OrderDetailEventCopyWith<$Res> {
  factory $DeleteOrderEventCopyWith(DeleteOrderEvent value, $Res Function(DeleteOrderEvent) _then) = _$DeleteOrderEventCopyWithImpl;
@override @useResult
$Res call({
 int orderId
});




}
/// @nodoc
class _$DeleteOrderEventCopyWithImpl<$Res>
    implements $DeleteOrderEventCopyWith<$Res> {
  _$DeleteOrderEventCopyWithImpl(this._self, this._then);

  final DeleteOrderEvent _self;
  final $Res Function(DeleteOrderEvent) _then;

/// Create a copy of OrderDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,}) {
  return _then(DeleteOrderEvent(
null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
