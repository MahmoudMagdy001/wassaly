// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpVerificationEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpVerificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpVerificationEvent()';
}


}

/// @nodoc
class $OtpVerificationEventCopyWith<$Res>  {
$OtpVerificationEventCopyWith(OtpVerificationEvent _, $Res Function(OtpVerificationEvent) __);
}


/// Adds pattern-matching-related methods to [OtpVerificationEvent].
extension OtpVerificationEventPatterns on OtpVerificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OtpDigitChanged value)?  otpDigitChanged,TResult Function( VerifyOtpSubmitted value)?  verifyOtpSubmitted,TResult Function( ResendOtpRequested value)?  resendOtpRequested,TResult Function( TimerTicked value)?  timerTicked,TResult Function( TimerCompleted value)?  timerCompleted,TResult Function( TimerStarted value)?  timerStarted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OtpDigitChanged() when otpDigitChanged != null:
return otpDigitChanged(_that);case VerifyOtpSubmitted() when verifyOtpSubmitted != null:
return verifyOtpSubmitted(_that);case ResendOtpRequested() when resendOtpRequested != null:
return resendOtpRequested(_that);case TimerTicked() when timerTicked != null:
return timerTicked(_that);case TimerCompleted() when timerCompleted != null:
return timerCompleted(_that);case TimerStarted() when timerStarted != null:
return timerStarted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OtpDigitChanged value)  otpDigitChanged,required TResult Function( VerifyOtpSubmitted value)  verifyOtpSubmitted,required TResult Function( ResendOtpRequested value)  resendOtpRequested,required TResult Function( TimerTicked value)  timerTicked,required TResult Function( TimerCompleted value)  timerCompleted,required TResult Function( TimerStarted value)  timerStarted,}){
final _that = this;
switch (_that) {
case OtpDigitChanged():
return otpDigitChanged(_that);case VerifyOtpSubmitted():
return verifyOtpSubmitted(_that);case ResendOtpRequested():
return resendOtpRequested(_that);case TimerTicked():
return timerTicked(_that);case TimerCompleted():
return timerCompleted(_that);case TimerStarted():
return timerStarted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OtpDigitChanged value)?  otpDigitChanged,TResult? Function( VerifyOtpSubmitted value)?  verifyOtpSubmitted,TResult? Function( ResendOtpRequested value)?  resendOtpRequested,TResult? Function( TimerTicked value)?  timerTicked,TResult? Function( TimerCompleted value)?  timerCompleted,TResult? Function( TimerStarted value)?  timerStarted,}){
final _that = this;
switch (_that) {
case OtpDigitChanged() when otpDigitChanged != null:
return otpDigitChanged(_that);case VerifyOtpSubmitted() when verifyOtpSubmitted != null:
return verifyOtpSubmitted(_that);case ResendOtpRequested() when resendOtpRequested != null:
return resendOtpRequested(_that);case TimerTicked() when timerTicked != null:
return timerTicked(_that);case TimerCompleted() when timerCompleted != null:
return timerCompleted(_that);case TimerStarted() when timerStarted != null:
return timerStarted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String otp)?  otpDigitChanged,TResult Function()?  verifyOtpSubmitted,TResult Function()?  resendOtpRequested,TResult Function( int remainingSeconds)?  timerTicked,TResult Function()?  timerCompleted,TResult Function()?  timerStarted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OtpDigitChanged() when otpDigitChanged != null:
return otpDigitChanged(_that.otp);case VerifyOtpSubmitted() when verifyOtpSubmitted != null:
return verifyOtpSubmitted();case ResendOtpRequested() when resendOtpRequested != null:
return resendOtpRequested();case TimerTicked() when timerTicked != null:
return timerTicked(_that.remainingSeconds);case TimerCompleted() when timerCompleted != null:
return timerCompleted();case TimerStarted() when timerStarted != null:
return timerStarted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String otp)  otpDigitChanged,required TResult Function()  verifyOtpSubmitted,required TResult Function()  resendOtpRequested,required TResult Function( int remainingSeconds)  timerTicked,required TResult Function()  timerCompleted,required TResult Function()  timerStarted,}) {final _that = this;
switch (_that) {
case OtpDigitChanged():
return otpDigitChanged(_that.otp);case VerifyOtpSubmitted():
return verifyOtpSubmitted();case ResendOtpRequested():
return resendOtpRequested();case TimerTicked():
return timerTicked(_that.remainingSeconds);case TimerCompleted():
return timerCompleted();case TimerStarted():
return timerStarted();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String otp)?  otpDigitChanged,TResult? Function()?  verifyOtpSubmitted,TResult? Function()?  resendOtpRequested,TResult? Function( int remainingSeconds)?  timerTicked,TResult? Function()?  timerCompleted,TResult? Function()?  timerStarted,}) {final _that = this;
switch (_that) {
case OtpDigitChanged() when otpDigitChanged != null:
return otpDigitChanged(_that.otp);case VerifyOtpSubmitted() when verifyOtpSubmitted != null:
return verifyOtpSubmitted();case ResendOtpRequested() when resendOtpRequested != null:
return resendOtpRequested();case TimerTicked() when timerTicked != null:
return timerTicked(_that.remainingSeconds);case TimerCompleted() when timerCompleted != null:
return timerCompleted();case TimerStarted() when timerStarted != null:
return timerStarted();case _:
  return null;

}
}

}

/// @nodoc


class OtpDigitChanged implements OtpVerificationEvent {
  const OtpDigitChanged(this.otp);
  

 final  String otp;

/// Create a copy of OtpVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpDigitChangedCopyWith<OtpDigitChanged> get copyWith => _$OtpDigitChangedCopyWithImpl<OtpDigitChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpDigitChanged&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode {
    return Object.hash(runtimeType,otp);
}

@override
String toString() {
    return 'OtpVerificationEvent.otpDigitChanged(otp: $otp)';
}


}

/// @nodoc
abstract mixin class $OtpDigitChangedCopyWith<$Res> implements $OtpVerificationEventCopyWith<$Res> {
  factory $OtpDigitChangedCopyWith(OtpDigitChanged value, $Res Function(OtpDigitChanged) _then) = _$OtpDigitChangedCopyWithImpl;
@useResult
$Res call({
 String otp
});




}
/// @nodoc
class _$OtpDigitChangedCopyWithImpl<$Res>
    implements $OtpDigitChangedCopyWith<$Res> {
  _$OtpDigitChangedCopyWithImpl(this._self, this._then);

  final OtpDigitChanged _self;
  final $Res Function(OtpDigitChanged) _then;

/// Create a copy of OtpVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(OtpDigitChanged(
null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class VerifyOtpSubmitted implements OtpVerificationEvent {
  const VerifyOtpSubmitted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpVerificationEvent.verifyOtpSubmitted()';
}


}




/// @nodoc


class ResendOtpRequested implements OtpVerificationEvent {
  const ResendOtpRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpVerificationEvent.resendOtpRequested()';
}


}




/// @nodoc


class TimerTicked implements OtpVerificationEvent {
  const TimerTicked(this.remainingSeconds);
  

 final  int remainingSeconds;

/// Create a copy of OtpVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimerTickedCopyWith<TimerTicked> get copyWith => _$TimerTickedCopyWithImpl<TimerTicked>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerTicked&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds));
}


@override
int get hashCode {
    return Object.hash(runtimeType,remainingSeconds);
}

@override
String toString() {
    return 'OtpVerificationEvent.timerTicked(remainingSeconds: $remainingSeconds)';
}


}

/// @nodoc
abstract mixin class $TimerTickedCopyWith<$Res> implements $OtpVerificationEventCopyWith<$Res> {
  factory $TimerTickedCopyWith(TimerTicked value, $Res Function(TimerTicked) _then) = _$TimerTickedCopyWithImpl;
@useResult
$Res call({
 int remainingSeconds
});




}
/// @nodoc
class _$TimerTickedCopyWithImpl<$Res>
    implements $TimerTickedCopyWith<$Res> {
  _$TimerTickedCopyWithImpl(this._self, this._then);

  final TimerTicked _self;
  final $Res Function(TimerTicked) _then;

/// Create a copy of OtpVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? remainingSeconds = null,}) {
  return _then(TimerTicked(
null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class TimerCompleted implements OtpVerificationEvent {
  const TimerCompleted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerCompleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpVerificationEvent.timerCompleted()';
}


}




/// @nodoc


class TimerStarted implements OtpVerificationEvent {
  const TimerStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpVerificationEvent.timerStarted()';
}


}




// dart format on
