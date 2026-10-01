// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingDetailEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'BookingDetailEvent()';
}


}

/// @nodoc
class $BookingDetailEventCopyWith<$Res>  {
$BookingDetailEventCopyWith(BookingDetailEvent _, $Res Function(BookingDetailEvent) __);
}


/// Adds pattern-matching-related methods to [BookingDetailEvent].
extension BookingDetailEventPatterns on BookingDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitializeBookingDetailEvent value)?  initialize,TResult Function( CancelBookingEvent value)?  cancelBooking,TResult Function( UpdateBookingEvent value)?  updateBooking,TResult Function( DeleteBookingEvent value)?  deleteBooking,TResult Function( AcceptRescheduleEvent value)?  acceptReschedule,TResult Function( ProposeRescheduleEvent value)?  proposeReschedule,TResult Function( LoadAvailableDaysEvent value)?  loadAvailableDays,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitializeBookingDetailEvent() when initialize != null:
return initialize(_that);case CancelBookingEvent() when cancelBooking != null:
return cancelBooking(_that);case UpdateBookingEvent() when updateBooking != null:
return updateBooking(_that);case DeleteBookingEvent() when deleteBooking != null:
return deleteBooking(_that);case AcceptRescheduleEvent() when acceptReschedule != null:
return acceptReschedule(_that);case ProposeRescheduleEvent() when proposeReschedule != null:
return proposeReschedule(_that);case LoadAvailableDaysEvent() when loadAvailableDays != null:
return loadAvailableDays(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitializeBookingDetailEvent value)  initialize,required TResult Function( CancelBookingEvent value)  cancelBooking,required TResult Function( UpdateBookingEvent value)  updateBooking,required TResult Function( DeleteBookingEvent value)  deleteBooking,required TResult Function( AcceptRescheduleEvent value)  acceptReschedule,required TResult Function( ProposeRescheduleEvent value)  proposeReschedule,required TResult Function( LoadAvailableDaysEvent value)  loadAvailableDays,}){
final _that = this;
switch (_that) {
case InitializeBookingDetailEvent():
return initialize(_that);case CancelBookingEvent():
return cancelBooking(_that);case UpdateBookingEvent():
return updateBooking(_that);case DeleteBookingEvent():
return deleteBooking(_that);case AcceptRescheduleEvent():
return acceptReschedule(_that);case ProposeRescheduleEvent():
return proposeReschedule(_that);case LoadAvailableDaysEvent():
return loadAvailableDays(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitializeBookingDetailEvent value)?  initialize,TResult? Function( CancelBookingEvent value)?  cancelBooking,TResult? Function( UpdateBookingEvent value)?  updateBooking,TResult? Function( DeleteBookingEvent value)?  deleteBooking,TResult? Function( AcceptRescheduleEvent value)?  acceptReschedule,TResult? Function( ProposeRescheduleEvent value)?  proposeReschedule,TResult? Function( LoadAvailableDaysEvent value)?  loadAvailableDays,}){
final _that = this;
switch (_that) {
case InitializeBookingDetailEvent() when initialize != null:
return initialize(_that);case CancelBookingEvent() when cancelBooking != null:
return cancelBooking(_that);case UpdateBookingEvent() when updateBooking != null:
return updateBooking(_that);case DeleteBookingEvent() when deleteBooking != null:
return deleteBooking(_that);case AcceptRescheduleEvent() when acceptReschedule != null:
return acceptReschedule(_that);case ProposeRescheduleEvent() when proposeReschedule != null:
return proposeReschedule(_that);case LoadAvailableDaysEvent() when loadAvailableDays != null:
return loadAvailableDays(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( BookingEntity booking)?  initialize,TResult Function( int bookingId)?  cancelBooking,TResult Function( UpdateBookingParams params)?  updateBooking,TResult Function( int bookingId)?  deleteBooking,TResult Function( AcceptRescheduleParams params)?  acceptReschedule,TResult Function( ProposeRescheduleParams params)?  proposeReschedule,TResult Function( int serviceId)?  loadAvailableDays,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitializeBookingDetailEvent() when initialize != null:
return initialize(_that.booking);case CancelBookingEvent() when cancelBooking != null:
return cancelBooking(_that.bookingId);case UpdateBookingEvent() when updateBooking != null:
return updateBooking(_that.params);case DeleteBookingEvent() when deleteBooking != null:
return deleteBooking(_that.bookingId);case AcceptRescheduleEvent() when acceptReschedule != null:
return acceptReschedule(_that.params);case ProposeRescheduleEvent() when proposeReschedule != null:
return proposeReschedule(_that.params);case LoadAvailableDaysEvent() when loadAvailableDays != null:
return loadAvailableDays(_that.serviceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( BookingEntity booking)  initialize,required TResult Function( int bookingId)  cancelBooking,required TResult Function( UpdateBookingParams params)  updateBooking,required TResult Function( int bookingId)  deleteBooking,required TResult Function( AcceptRescheduleParams params)  acceptReschedule,required TResult Function( ProposeRescheduleParams params)  proposeReschedule,required TResult Function( int serviceId)  loadAvailableDays,}) {final _that = this;
switch (_that) {
case InitializeBookingDetailEvent():
return initialize(_that.booking);case CancelBookingEvent():
return cancelBooking(_that.bookingId);case UpdateBookingEvent():
return updateBooking(_that.params);case DeleteBookingEvent():
return deleteBooking(_that.bookingId);case AcceptRescheduleEvent():
return acceptReschedule(_that.params);case ProposeRescheduleEvent():
return proposeReschedule(_that.params);case LoadAvailableDaysEvent():
return loadAvailableDays(_that.serviceId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( BookingEntity booking)?  initialize,TResult? Function( int bookingId)?  cancelBooking,TResult? Function( UpdateBookingParams params)?  updateBooking,TResult? Function( int bookingId)?  deleteBooking,TResult? Function( AcceptRescheduleParams params)?  acceptReschedule,TResult? Function( ProposeRescheduleParams params)?  proposeReschedule,TResult? Function( int serviceId)?  loadAvailableDays,}) {final _that = this;
switch (_that) {
case InitializeBookingDetailEvent() when initialize != null:
return initialize(_that.booking);case CancelBookingEvent() when cancelBooking != null:
return cancelBooking(_that.bookingId);case UpdateBookingEvent() when updateBooking != null:
return updateBooking(_that.params);case DeleteBookingEvent() when deleteBooking != null:
return deleteBooking(_that.bookingId);case AcceptRescheduleEvent() when acceptReschedule != null:
return acceptReschedule(_that.params);case ProposeRescheduleEvent() when proposeReschedule != null:
return proposeReschedule(_that.params);case LoadAvailableDaysEvent() when loadAvailableDays != null:
return loadAvailableDays(_that.serviceId);case _:
  return null;

}
}

}

/// @nodoc


class InitializeBookingDetailEvent implements BookingDetailEvent {
  const InitializeBookingDetailEvent(this.booking);
  

 final  BookingEntity booking;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitializeBookingDetailEventCopyWith<InitializeBookingDetailEvent> get copyWith => _$InitializeBookingDetailEventCopyWithImpl<InitializeBookingDetailEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is InitializeBookingDetailEvent&&(identical(other.booking, booking) || other.booking == booking));
}


@override
int get hashCode {
    return Object.hash(runtimeType,booking);
}

@override
String toString() {
    return 'BookingDetailEvent.initialize(booking: $booking)';
}


}

/// @nodoc
abstract mixin class $InitializeBookingDetailEventCopyWith<$Res> implements $BookingDetailEventCopyWith<$Res> {
  factory $InitializeBookingDetailEventCopyWith(InitializeBookingDetailEvent value, $Res Function(InitializeBookingDetailEvent) _then) = _$InitializeBookingDetailEventCopyWithImpl;
@useResult
$Res call({
 BookingEntity booking
});


$BookingEntityCopyWith<$Res> get booking;

}
/// @nodoc
class _$InitializeBookingDetailEventCopyWithImpl<$Res>
    implements $InitializeBookingDetailEventCopyWith<$Res> {
  _$InitializeBookingDetailEventCopyWithImpl(this._self, this._then);

  final InitializeBookingDetailEvent _self;
  final $Res Function(InitializeBookingDetailEvent) _then;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? booking = null,}) {
  return _then(InitializeBookingDetailEvent(
null == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as BookingEntity,
  ));
}

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingEntityCopyWith<$Res> get booking {
  
  return $BookingEntityCopyWith<$Res>(_self.booking, (value) {
    return _then(_self.copyWith(booking: value));
  });
}
}

/// @nodoc


class CancelBookingEvent implements BookingDetailEvent {
  const CancelBookingEvent(this.bookingId);
  

 final  int bookingId;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelBookingEventCopyWith<CancelBookingEvent> get copyWith => _$CancelBookingEventCopyWithImpl<CancelBookingEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelBookingEvent&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,bookingId);
}

@override
String toString() {
    return 'BookingDetailEvent.cancelBooking(bookingId: $bookingId)';
}


}

/// @nodoc
abstract mixin class $CancelBookingEventCopyWith<$Res> implements $BookingDetailEventCopyWith<$Res> {
  factory $CancelBookingEventCopyWith(CancelBookingEvent value, $Res Function(CancelBookingEvent) _then) = _$CancelBookingEventCopyWithImpl;
@useResult
$Res call({
 int bookingId
});




}
/// @nodoc
class _$CancelBookingEventCopyWithImpl<$Res>
    implements $CancelBookingEventCopyWith<$Res> {
  _$CancelBookingEventCopyWithImpl(this._self, this._then);

  final CancelBookingEvent _self;
  final $Res Function(CancelBookingEvent) _then;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookingId = null,}) {
  return _then(CancelBookingEvent(
null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateBookingEvent implements BookingDetailEvent {
  const UpdateBookingEvent(this.params);
  

 final  UpdateBookingParams params;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBookingEventCopyWith<UpdateBookingEvent> get copyWith => _$UpdateBookingEventCopyWithImpl<UpdateBookingEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBookingEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode {
    return Object.hash(runtimeType,params);
}

@override
String toString() {
    return 'BookingDetailEvent.updateBooking(params: $params)';
}


}

/// @nodoc
abstract mixin class $UpdateBookingEventCopyWith<$Res> implements $BookingDetailEventCopyWith<$Res> {
  factory $UpdateBookingEventCopyWith(UpdateBookingEvent value, $Res Function(UpdateBookingEvent) _then) = _$UpdateBookingEventCopyWithImpl;
@useResult
$Res call({
 UpdateBookingParams params
});


$UpdateBookingParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$UpdateBookingEventCopyWithImpl<$Res>
    implements $UpdateBookingEventCopyWith<$Res> {
  _$UpdateBookingEventCopyWithImpl(this._self, this._then);

  final UpdateBookingEvent _self;
  final $Res Function(UpdateBookingEvent) _then;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(UpdateBookingEvent(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as UpdateBookingParams,
  ));
}

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateBookingParamsCopyWith<$Res> get params {
  
  return $UpdateBookingParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class DeleteBookingEvent implements BookingDetailEvent {
  const DeleteBookingEvent(this.bookingId);
  

 final  int bookingId;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteBookingEventCopyWith<DeleteBookingEvent> get copyWith => _$DeleteBookingEventCopyWithImpl<DeleteBookingEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteBookingEvent&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,bookingId);
}

@override
String toString() {
    return 'BookingDetailEvent.deleteBooking(bookingId: $bookingId)';
}


}

/// @nodoc
abstract mixin class $DeleteBookingEventCopyWith<$Res> implements $BookingDetailEventCopyWith<$Res> {
  factory $DeleteBookingEventCopyWith(DeleteBookingEvent value, $Res Function(DeleteBookingEvent) _then) = _$DeleteBookingEventCopyWithImpl;
@useResult
$Res call({
 int bookingId
});




}
/// @nodoc
class _$DeleteBookingEventCopyWithImpl<$Res>
    implements $DeleteBookingEventCopyWith<$Res> {
  _$DeleteBookingEventCopyWithImpl(this._self, this._then);

  final DeleteBookingEvent _self;
  final $Res Function(DeleteBookingEvent) _then;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookingId = null,}) {
  return _then(DeleteBookingEvent(
null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AcceptRescheduleEvent implements BookingDetailEvent {
  const AcceptRescheduleEvent(this.params);
  

 final  AcceptRescheduleParams params;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptRescheduleEventCopyWith<AcceptRescheduleEvent> get copyWith => _$AcceptRescheduleEventCopyWithImpl<AcceptRescheduleEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptRescheduleEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode {
    return Object.hash(runtimeType,params);
}

@override
String toString() {
    return 'BookingDetailEvent.acceptReschedule(params: $params)';
}


}

/// @nodoc
abstract mixin class $AcceptRescheduleEventCopyWith<$Res> implements $BookingDetailEventCopyWith<$Res> {
  factory $AcceptRescheduleEventCopyWith(AcceptRescheduleEvent value, $Res Function(AcceptRescheduleEvent) _then) = _$AcceptRescheduleEventCopyWithImpl;
@useResult
$Res call({
 AcceptRescheduleParams params
});


$AcceptRescheduleParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$AcceptRescheduleEventCopyWithImpl<$Res>
    implements $AcceptRescheduleEventCopyWith<$Res> {
  _$AcceptRescheduleEventCopyWithImpl(this._self, this._then);

  final AcceptRescheduleEvent _self;
  final $Res Function(AcceptRescheduleEvent) _then;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(AcceptRescheduleEvent(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AcceptRescheduleParams,
  ));
}

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptRescheduleParamsCopyWith<$Res> get params {
  
  return $AcceptRescheduleParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class ProposeRescheduleEvent implements BookingDetailEvent {
  const ProposeRescheduleEvent(this.params);
  

 final  ProposeRescheduleParams params;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProposeRescheduleEventCopyWith<ProposeRescheduleEvent> get copyWith => _$ProposeRescheduleEventCopyWithImpl<ProposeRescheduleEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProposeRescheduleEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode {
    return Object.hash(runtimeType,params);
}

@override
String toString() {
    return 'BookingDetailEvent.proposeReschedule(params: $params)';
}


}

/// @nodoc
abstract mixin class $ProposeRescheduleEventCopyWith<$Res> implements $BookingDetailEventCopyWith<$Res> {
  factory $ProposeRescheduleEventCopyWith(ProposeRescheduleEvent value, $Res Function(ProposeRescheduleEvent) _then) = _$ProposeRescheduleEventCopyWithImpl;
@useResult
$Res call({
 ProposeRescheduleParams params
});


$ProposeRescheduleParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$ProposeRescheduleEventCopyWithImpl<$Res>
    implements $ProposeRescheduleEventCopyWith<$Res> {
  _$ProposeRescheduleEventCopyWithImpl(this._self, this._then);

  final ProposeRescheduleEvent _self;
  final $Res Function(ProposeRescheduleEvent) _then;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(ProposeRescheduleEvent(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProposeRescheduleParams,
  ));
}

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProposeRescheduleParamsCopyWith<$Res> get params {
  
  return $ProposeRescheduleParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class LoadAvailableDaysEvent implements BookingDetailEvent {
  const LoadAvailableDaysEvent(this.serviceId);
  

 final  int serviceId;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadAvailableDaysEventCopyWith<LoadAvailableDaysEvent> get copyWith => _$LoadAvailableDaysEventCopyWithImpl<LoadAvailableDaysEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadAvailableDaysEvent&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,serviceId);
}

@override
String toString() {
    return 'BookingDetailEvent.loadAvailableDays(serviceId: $serviceId)';
}


}

/// @nodoc
abstract mixin class $LoadAvailableDaysEventCopyWith<$Res> implements $BookingDetailEventCopyWith<$Res> {
  factory $LoadAvailableDaysEventCopyWith(LoadAvailableDaysEvent value, $Res Function(LoadAvailableDaysEvent) _then) = _$LoadAvailableDaysEventCopyWithImpl;
@useResult
$Res call({
 int serviceId
});




}
/// @nodoc
class _$LoadAvailableDaysEventCopyWithImpl<$Res>
    implements $LoadAvailableDaysEventCopyWith<$Res> {
  _$LoadAvailableDaysEventCopyWithImpl(this._self, this._then);

  final LoadAvailableDaysEvent _self;
  final $Res Function(LoadAvailableDaysEvent) _then;

/// Create a copy of BookingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceId = null,}) {
  return _then(LoadAvailableDaysEvent(
null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
