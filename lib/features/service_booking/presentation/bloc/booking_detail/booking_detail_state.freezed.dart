// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingDetailState {

 BookingDetailStatus get status; BookingActionStatus get actionStatus; BookingEntity? get booking; String get errorMessage; String get actionErrorMessage; List<ServiceAvailableDayEntity> get availableDays; bool get isLoadingDays; String get loadDaysError;
/// Create a copy of BookingDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingDetailStateCopyWith<BookingDetailState> get copyWith => _$BookingDetailStateCopyWithImpl<BookingDetailState>(this as BookingDetailState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BookingDetailState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingDetailState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.actionStatus, _this.actionStatus) || other.actionStatus == _this.actionStatus)&&(identical(other.booking, _this.booking) || other.booking == _this.booking)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.actionErrorMessage, _this.actionErrorMessage) || other.actionErrorMessage == _this.actionErrorMessage)&&const DeepCollectionEquality().equals(other.availableDays, _this.availableDays)&&(identical(other.isLoadingDays, _this.isLoadingDays) || other.isLoadingDays == _this.isLoadingDays)&&(identical(other.loadDaysError, _this.loadDaysError) || other.loadDaysError == _this.loadDaysError));
}


@override
int get hashCode {
  final _this = this as BookingDetailState;
  return Object.hash(runtimeType,_this.status,_this.actionStatus,_this.booking,_this.errorMessage,_this.actionErrorMessage,const DeepCollectionEquality().hash(_this.availableDays),_this.isLoadingDays,_this.loadDaysError);
}

@override
String toString() {
  final _this = this as BookingDetailState;
  return 'BookingDetailState(status: ${_this.status}, actionStatus: ${_this.actionStatus}, booking: ${_this.booking}, errorMessage: ${_this.errorMessage}, actionErrorMessage: ${_this.actionErrorMessage}, availableDays: ${_this.availableDays}, isLoadingDays: ${_this.isLoadingDays}, loadDaysError: ${_this.loadDaysError})';
}


}

/// @nodoc
abstract mixin class $BookingDetailStateCopyWith<$Res>  {
  factory $BookingDetailStateCopyWith(BookingDetailState value, $Res Function(BookingDetailState) _then) = _$BookingDetailStateCopyWithImpl;
@useResult
$Res call({
 BookingDetailStatus status, BookingActionStatus actionStatus, BookingEntity? booking, String errorMessage, String actionErrorMessage, List<ServiceAvailableDayEntity> availableDays, bool isLoadingDays, String loadDaysError
});


$BookingEntityCopyWith<$Res>? get booking;

}
/// @nodoc
class _$BookingDetailStateCopyWithImpl<$Res>
    implements $BookingDetailStateCopyWith<$Res> {
  _$BookingDetailStateCopyWithImpl(this._self, this._then);

  final BookingDetailState _self;
  final $Res Function(BookingDetailState) _then;

/// Create a copy of BookingDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? actionStatus = null,Object? booking = freezed,Object? errorMessage = null,Object? actionErrorMessage = null,Object? availableDays = null,Object? isLoadingDays = null,Object? loadDaysError = null,}) {
  return _then(BookingDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BookingDetailStatus,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as BookingActionStatus,booking: freezed == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as BookingEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,actionErrorMessage: null == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String,availableDays: null == availableDays ? _self.availableDays : availableDays // ignore: cast_nullable_to_non_nullable
as List<ServiceAvailableDayEntity>,isLoadingDays: null == isLoadingDays ? _self.isLoadingDays : isLoadingDays // ignore: cast_nullable_to_non_nullable
as bool,loadDaysError: null == loadDaysError ? _self.loadDaysError : loadDaysError // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of BookingDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingEntityCopyWith<$Res>? get booking {
    if (_self.booking == null) {
    return null;
  }

  return $BookingEntityCopyWith<$Res>(_self.booking!, (value) {
    return _then(_self.copyWith(booking: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingDetailState].
extension BookingDetailStatePatterns on BookingDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingDetailState value)  $default,){
final _that = this;
switch (_that) {
case _BookingDetailState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _BookingDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BookingDetailStatus status,  BookingActionStatus actionStatus,  BookingEntity? booking,  String errorMessage,  String actionErrorMessage,  List<ServiceAvailableDayEntity> availableDays,  bool isLoadingDays,  String loadDaysError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingDetailState() when $default != null:
return $default(_that.status,_that.actionStatus,_that.booking,_that.errorMessage,_that.actionErrorMessage,_that.availableDays,_that.isLoadingDays,_that.loadDaysError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BookingDetailStatus status,  BookingActionStatus actionStatus,  BookingEntity? booking,  String errorMessage,  String actionErrorMessage,  List<ServiceAvailableDayEntity> availableDays,  bool isLoadingDays,  String loadDaysError)  $default,) {final _that = this;
switch (_that) {
case _BookingDetailState():
return $default(_that.status,_that.actionStatus,_that.booking,_that.errorMessage,_that.actionErrorMessage,_that.availableDays,_that.isLoadingDays,_that.loadDaysError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BookingDetailStatus status,  BookingActionStatus actionStatus,  BookingEntity? booking,  String errorMessage,  String actionErrorMessage,  List<ServiceAvailableDayEntity> availableDays,  bool isLoadingDays,  String loadDaysError)?  $default,) {final _that = this;
switch (_that) {
case _BookingDetailState() when $default != null:
return $default(_that.status,_that.actionStatus,_that.booking,_that.errorMessage,_that.actionErrorMessage,_that.availableDays,_that.isLoadingDays,_that.loadDaysError);case _:
  return null;

}
}

}

/// @nodoc


class _BookingDetailState implements BookingDetailState {
  const _BookingDetailState({this.status = BookingDetailStatus.initial, this.actionStatus = BookingActionStatus.initial, this.booking, this.errorMessage = '', this.actionErrorMessage = '',  List<ServiceAvailableDayEntity> availableDays = const [], this.isLoadingDays = false, this.loadDaysError = ''}): _availableDays = availableDays;
  

@override@JsonKey() final  BookingDetailStatus status;
@override@JsonKey() final  BookingActionStatus actionStatus;
@override final  BookingEntity? booking;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  String actionErrorMessage;
 final  List<ServiceAvailableDayEntity> _availableDays;
@override@JsonKey() List<ServiceAvailableDayEntity> get availableDays {
  if (_availableDays is EqualUnmodifiableListView) return _availableDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableDays);
}

@override@JsonKey() final  bool isLoadingDays;
@override@JsonKey() final  String loadDaysError;

/// Create a copy of BookingDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingDetailStateCopyWith<_BookingDetailState> get copyWith => __$BookingDetailStateCopyWithImpl<_BookingDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.booking, booking) || other.booking == booking)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.actionErrorMessage, actionErrorMessage) || other.actionErrorMessage == actionErrorMessage)&&const DeepCollectionEquality().equals(other.availableDays, _availableDays)&&(identical(other.isLoadingDays, isLoadingDays) || other.isLoadingDays == isLoadingDays)&&(identical(other.loadDaysError, loadDaysError) || other.loadDaysError == loadDaysError));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,actionStatus,booking,errorMessage,actionErrorMessage,const DeepCollectionEquality().hash(_availableDays),isLoadingDays,loadDaysError);
}

@override
String toString() {
    return 'BookingDetailState(status: $status, actionStatus: $actionStatus, booking: $booking, errorMessage: $errorMessage, actionErrorMessage: $actionErrorMessage, availableDays: $availableDays, isLoadingDays: $isLoadingDays, loadDaysError: $loadDaysError)';
}


}

/// @nodoc
abstract mixin class _$BookingDetailStateCopyWith<$Res> implements $BookingDetailStateCopyWith<$Res> {
  factory _$BookingDetailStateCopyWith(_BookingDetailState value, $Res Function(_BookingDetailState) _then) = __$BookingDetailStateCopyWithImpl;
@override @useResult
$Res call({
 BookingDetailStatus status, BookingActionStatus actionStatus, BookingEntity? booking, String errorMessage, String actionErrorMessage, List<ServiceAvailableDayEntity> availableDays, bool isLoadingDays, String loadDaysError
});


@override $BookingEntityCopyWith<$Res>? get booking;

}
/// @nodoc
class __$BookingDetailStateCopyWithImpl<$Res>
    implements _$BookingDetailStateCopyWith<$Res> {
  __$BookingDetailStateCopyWithImpl(this._self, this._then);

  final _BookingDetailState _self;
  final $Res Function(_BookingDetailState) _then;

/// Create a copy of BookingDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? actionStatus = null,Object? booking = freezed,Object? errorMessage = null,Object? actionErrorMessage = null,Object? availableDays = null,Object? isLoadingDays = null,Object? loadDaysError = null,}) {
  return _then(_BookingDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BookingDetailStatus,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as BookingActionStatus,booking: freezed == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as BookingEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,actionErrorMessage: null == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String,availableDays: null == availableDays ? _self._availableDays : availableDays // ignore: cast_nullable_to_non_nullable
as List<ServiceAvailableDayEntity>,isLoadingDays: null == isLoadingDays ? _self.isLoadingDays : isLoadingDays // ignore: cast_nullable_to_non_nullable
as bool,loadDaysError: null == loadDaysError ? _self.loadDaysError : loadDaysError // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of BookingDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingEntityCopyWith<$Res>? get booking {
    if (_self.booking == null) {
    return null;
  }

  return $BookingEntityCopyWith<$Res>(_self.booking!, (value) {
    return _then(_self.copyWith(booking: value));
  });
}
}

// dart format on
