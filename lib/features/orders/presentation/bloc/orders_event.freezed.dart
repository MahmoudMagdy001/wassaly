// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrdersEvent()';
}


}

/// @nodoc
class $OrdersEventCopyWith<$Res>  {
$OrdersEventCopyWith(OrdersEvent _, $Res Function(OrdersEvent) __);
}


/// Adds pattern-matching-related methods to [OrdersEvent].
extension OrdersEventPatterns on OrdersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetOrdersEvent value)?  getOrders,TResult Function( GetServiceBookingsEvent value)?  getServiceBookings,TResult Function( LoadMoreOrdersEvent value)?  loadMoreOrders,TResult Function( ResetOrdersEvent value)?  resetOrders,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetOrdersEvent() when getOrders != null:
return getOrders(_that);case GetServiceBookingsEvent() when getServiceBookings != null:
return getServiceBookings(_that);case LoadMoreOrdersEvent() when loadMoreOrders != null:
return loadMoreOrders(_that);case ResetOrdersEvent() when resetOrders != null:
return resetOrders(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetOrdersEvent value)  getOrders,required TResult Function( GetServiceBookingsEvent value)  getServiceBookings,required TResult Function( LoadMoreOrdersEvent value)  loadMoreOrders,required TResult Function( ResetOrdersEvent value)  resetOrders,}){
final _that = this;
switch (_that) {
case GetOrdersEvent():
return getOrders(_that);case GetServiceBookingsEvent():
return getServiceBookings(_that);case LoadMoreOrdersEvent():
return loadMoreOrders(_that);case ResetOrdersEvent():
return resetOrders(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetOrdersEvent value)?  getOrders,TResult? Function( GetServiceBookingsEvent value)?  getServiceBookings,TResult? Function( LoadMoreOrdersEvent value)?  loadMoreOrders,TResult? Function( ResetOrdersEvent value)?  resetOrders,}){
final _that = this;
switch (_that) {
case GetOrdersEvent() when getOrders != null:
return getOrders(_that);case GetServiceBookingsEvent() when getServiceBookings != null:
return getServiceBookings(_that);case LoadMoreOrdersEvent() when loadMoreOrders != null:
return loadMoreOrders(_that);case ResetOrdersEvent() when resetOrders != null:
return resetOrders(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getOrders,TResult Function()?  getServiceBookings,TResult Function()?  loadMoreOrders,TResult Function()?  resetOrders,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetOrdersEvent() when getOrders != null:
return getOrders();case GetServiceBookingsEvent() when getServiceBookings != null:
return getServiceBookings();case LoadMoreOrdersEvent() when loadMoreOrders != null:
return loadMoreOrders();case ResetOrdersEvent() when resetOrders != null:
return resetOrders();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getOrders,required TResult Function()  getServiceBookings,required TResult Function()  loadMoreOrders,required TResult Function()  resetOrders,}) {final _that = this;
switch (_that) {
case GetOrdersEvent():
return getOrders();case GetServiceBookingsEvent():
return getServiceBookings();case LoadMoreOrdersEvent():
return loadMoreOrders();case ResetOrdersEvent():
return resetOrders();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getOrders,TResult? Function()?  getServiceBookings,TResult? Function()?  loadMoreOrders,TResult? Function()?  resetOrders,}) {final _that = this;
switch (_that) {
case GetOrdersEvent() when getOrders != null:
return getOrders();case GetServiceBookingsEvent() when getServiceBookings != null:
return getServiceBookings();case LoadMoreOrdersEvent() when loadMoreOrders != null:
return loadMoreOrders();case ResetOrdersEvent() when resetOrders != null:
return resetOrders();case _:
  return null;

}
}

}

/// @nodoc


class GetOrdersEvent implements OrdersEvent {
  const GetOrdersEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrdersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrdersEvent.getOrders()';
}


}




/// @nodoc


class GetServiceBookingsEvent implements OrdersEvent {
  const GetServiceBookingsEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetServiceBookingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrdersEvent.getServiceBookings()';
}


}




/// @nodoc


class LoadMoreOrdersEvent implements OrdersEvent {
  const LoadMoreOrdersEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreOrdersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrdersEvent.loadMoreOrders()';
}


}




/// @nodoc


class ResetOrdersEvent implements OrdersEvent {
  const ResetOrdersEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetOrdersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrdersEvent.resetOrders()';
}


}




// dart format on
