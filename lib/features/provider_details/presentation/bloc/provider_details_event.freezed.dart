// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProviderDetailsEvent {

 int get providerId;
/// Create a copy of ProviderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderDetailsEventCopyWith<ProviderDetailsEvent> get copyWith => _$ProviderDetailsEventCopyWithImpl<ProviderDetailsEvent>(this as ProviderDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProviderDetailsEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProviderDetailsEvent&&(identical(other.providerId, _this.providerId) || other.providerId == _this.providerId));
}


@override
int get hashCode {
  final _this = this as ProviderDetailsEvent;
  return Object.hash(runtimeType,_this.providerId);
}

@override
String toString() {
  final _this = this as ProviderDetailsEvent;
  return 'ProviderDetailsEvent(providerId: ${_this.providerId})';
}


}

/// @nodoc
abstract mixin class $ProviderDetailsEventCopyWith<$Res>  {
  factory $ProviderDetailsEventCopyWith(ProviderDetailsEvent value, $Res Function(ProviderDetailsEvent) _then) = _$ProviderDetailsEventCopyWithImpl;
@useResult
$Res call({
 int providerId
});




}
/// @nodoc
class _$ProviderDetailsEventCopyWithImpl<$Res>
    implements $ProviderDetailsEventCopyWith<$Res> {
  _$ProviderDetailsEventCopyWithImpl(this._self, this._then);

  final ProviderDetailsEvent _self;
  final $Res Function(ProviderDetailsEvent) _then;

/// Create a copy of ProviderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? providerId = null,}) {
  return _then(ProviderDetailsEvent.fetchProviderDetails(
null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProviderDetailsEvent].
extension ProviderDetailsEventPatterns on ProviderDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchProviderDetailsEvent value)?  fetchProviderDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchProviderDetailsEvent() when fetchProviderDetails != null:
return fetchProviderDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchProviderDetailsEvent value)  fetchProviderDetails,}){
final _that = this;
switch (_that) {
case FetchProviderDetailsEvent():
return fetchProviderDetails(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchProviderDetailsEvent value)?  fetchProviderDetails,}){
final _that = this;
switch (_that) {
case FetchProviderDetailsEvent() when fetchProviderDetails != null:
return fetchProviderDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int providerId)?  fetchProviderDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchProviderDetailsEvent() when fetchProviderDetails != null:
return fetchProviderDetails(_that.providerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int providerId)  fetchProviderDetails,}) {final _that = this;
switch (_that) {
case FetchProviderDetailsEvent():
return fetchProviderDetails(_that.providerId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int providerId)?  fetchProviderDetails,}) {final _that = this;
switch (_that) {
case FetchProviderDetailsEvent() when fetchProviderDetails != null:
return fetchProviderDetails(_that.providerId);case _:
  return null;

}
}

}

/// @nodoc


class FetchProviderDetailsEvent implements ProviderDetailsEvent {
  const FetchProviderDetailsEvent(this.providerId);
  

@override final  int providerId;

/// Create a copy of ProviderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchProviderDetailsEventCopyWith<FetchProviderDetailsEvent> get copyWith => _$FetchProviderDetailsEventCopyWithImpl<FetchProviderDetailsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchProviderDetailsEvent&&(identical(other.providerId, providerId) || other.providerId == providerId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,providerId);
}

@override
String toString() {
    return 'ProviderDetailsEvent.fetchProviderDetails(providerId: $providerId)';
}


}

/// @nodoc
abstract mixin class $FetchProviderDetailsEventCopyWith<$Res> implements $ProviderDetailsEventCopyWith<$Res> {
  factory $FetchProviderDetailsEventCopyWith(FetchProviderDetailsEvent value, $Res Function(FetchProviderDetailsEvent) _then) = _$FetchProviderDetailsEventCopyWithImpl;
@override @useResult
$Res call({
 int providerId
});




}
/// @nodoc
class _$FetchProviderDetailsEventCopyWithImpl<$Res>
    implements $FetchProviderDetailsEventCopyWith<$Res> {
  _$FetchProviderDetailsEventCopyWithImpl(this._self, this._then);

  final FetchProviderDetailsEvent _self;
  final $Res Function(FetchProviderDetailsEvent) _then;

/// Create a copy of ProviderDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? providerId = null,}) {
  return _then(FetchProviderDetailsEvent(
null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
