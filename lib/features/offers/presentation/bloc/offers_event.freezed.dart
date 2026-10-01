// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OffersEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OffersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OffersEvent()';
}


}

/// @nodoc
class $OffersEventCopyWith<$Res>  {
$OffersEventCopyWith(OffersEvent _, $Res Function(OffersEvent) __);
}


/// Adds pattern-matching-related methods to [OffersEvent].
extension OffersEventPatterns on OffersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetOffersEvent value)?  getOffers,TResult Function( LoadMoreOffersEvent value)?  loadMoreOffers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetOffersEvent() when getOffers != null:
return getOffers(_that);case LoadMoreOffersEvent() when loadMoreOffers != null:
return loadMoreOffers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetOffersEvent value)  getOffers,required TResult Function( LoadMoreOffersEvent value)  loadMoreOffers,}){
final _that = this;
switch (_that) {
case GetOffersEvent():
return getOffers(_that);case LoadMoreOffersEvent():
return loadMoreOffers(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetOffersEvent value)?  getOffers,TResult? Function( LoadMoreOffersEvent value)?  loadMoreOffers,}){
final _that = this;
switch (_that) {
case GetOffersEvent() when getOffers != null:
return getOffers(_that);case LoadMoreOffersEvent() when loadMoreOffers != null:
return loadMoreOffers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getOffers,TResult Function()?  loadMoreOffers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetOffersEvent() when getOffers != null:
return getOffers();case LoadMoreOffersEvent() when loadMoreOffers != null:
return loadMoreOffers();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getOffers,required TResult Function()  loadMoreOffers,}) {final _that = this;
switch (_that) {
case GetOffersEvent():
return getOffers();case LoadMoreOffersEvent():
return loadMoreOffers();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getOffers,TResult? Function()?  loadMoreOffers,}) {final _that = this;
switch (_that) {
case GetOffersEvent() when getOffers != null:
return getOffers();case LoadMoreOffersEvent() when loadMoreOffers != null:
return loadMoreOffers();case _:
  return null;

}
}

}

/// @nodoc


class GetOffersEvent implements OffersEvent {
  const GetOffersEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOffersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OffersEvent.getOffers()';
}


}




/// @nodoc


class LoadMoreOffersEvent implements OffersEvent {
  const LoadMoreOffersEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreOffersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OffersEvent.loadMoreOffers()';
}


}




// dart format on
