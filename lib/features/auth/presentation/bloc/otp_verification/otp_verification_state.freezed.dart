// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpVerificationState {

 String get email; String get otp; VerificationType get verificationType; OtpVerificationStatus get verificationStatus; ResendOtpStatus get resendStatus; String? get errorMessage; int get timerSeconds; bool get isTimerRunning; VerifyOtpResponseEntity? get verifyOtpResponse; String? get resetToken;
/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpVerificationStateCopyWith<OtpVerificationState> get copyWith => _$OtpVerificationStateCopyWithImpl<OtpVerificationState>(this as OtpVerificationState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OtpVerificationState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpVerificationState&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.otp, _this.otp) || other.otp == _this.otp)&&(identical(other.verificationType, _this.verificationType) || other.verificationType == _this.verificationType)&&(identical(other.verificationStatus, _this.verificationStatus) || other.verificationStatus == _this.verificationStatus)&&(identical(other.resendStatus, _this.resendStatus) || other.resendStatus == _this.resendStatus)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.timerSeconds, _this.timerSeconds) || other.timerSeconds == _this.timerSeconds)&&(identical(other.isTimerRunning, _this.isTimerRunning) || other.isTimerRunning == _this.isTimerRunning)&&(identical(other.verifyOtpResponse, _this.verifyOtpResponse) || other.verifyOtpResponse == _this.verifyOtpResponse)&&(identical(other.resetToken, _this.resetToken) || other.resetToken == _this.resetToken));
}


@override
int get hashCode {
  final _this = this as OtpVerificationState;
  return Object.hash(runtimeType,_this.email,_this.otp,_this.verificationType,_this.verificationStatus,_this.resendStatus,_this.errorMessage,_this.timerSeconds,_this.isTimerRunning,_this.verifyOtpResponse,_this.resetToken);
}

@override
String toString() {
  final _this = this as OtpVerificationState;
  return 'OtpVerificationState(email: ${_this.email}, otp: ${_this.otp}, verificationType: ${_this.verificationType}, verificationStatus: ${_this.verificationStatus}, resendStatus: ${_this.resendStatus}, errorMessage: ${_this.errorMessage}, timerSeconds: ${_this.timerSeconds}, isTimerRunning: ${_this.isTimerRunning}, verifyOtpResponse: ${_this.verifyOtpResponse}, resetToken: ${_this.resetToken})';
}


}

/// @nodoc
abstract mixin class $OtpVerificationStateCopyWith<$Res>  {
  factory $OtpVerificationStateCopyWith(OtpVerificationState value, $Res Function(OtpVerificationState) _then) = _$OtpVerificationStateCopyWithImpl;
@useResult
$Res call({
 String email, String otp, VerificationType verificationType, OtpVerificationStatus verificationStatus, ResendOtpStatus resendStatus, String? errorMessage, int timerSeconds, bool isTimerRunning, VerifyOtpResponseEntity? verifyOtpResponse, String? resetToken
});


$VerifyOtpResponseEntityCopyWith<$Res>? get verifyOtpResponse;

}
/// @nodoc
class _$OtpVerificationStateCopyWithImpl<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._self, this._then);

  final OtpVerificationState _self;
  final $Res Function(OtpVerificationState) _then;

/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? otp = null,Object? verificationType = null,Object? verificationStatus = null,Object? resendStatus = null,Object? errorMessage = freezed,Object? timerSeconds = null,Object? isTimerRunning = null,Object? verifyOtpResponse = freezed,Object? resetToken = freezed,}) {
  return _then(OtpVerificationState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,verificationType: null == verificationType ? _self.verificationType : verificationType // ignore: cast_nullable_to_non_nullable
as VerificationType,verificationStatus: null == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as OtpVerificationStatus,resendStatus: null == resendStatus ? _self.resendStatus : resendStatus // ignore: cast_nullable_to_non_nullable
as ResendOtpStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,timerSeconds: null == timerSeconds ? _self.timerSeconds : timerSeconds // ignore: cast_nullable_to_non_nullable
as int,isTimerRunning: null == isTimerRunning ? _self.isTimerRunning : isTimerRunning // ignore: cast_nullable_to_non_nullable
as bool,verifyOtpResponse: freezed == verifyOtpResponse ? _self.verifyOtpResponse : verifyOtpResponse // ignore: cast_nullable_to_non_nullable
as VerifyOtpResponseEntity?,resetToken: freezed == resetToken ? _self.resetToken : resetToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyOtpResponseEntityCopyWith<$Res>? get verifyOtpResponse {
    if (_self.verifyOtpResponse == null) {
    return null;
  }

  return $VerifyOtpResponseEntityCopyWith<$Res>(_self.verifyOtpResponse!, (value) {
    return _then(_self.copyWith(verifyOtpResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [OtpVerificationState].
extension OtpVerificationStatePatterns on OtpVerificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpVerificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpVerificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpVerificationState value)  $default,){
final _that = this;
switch (_that) {
case _OtpVerificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpVerificationState value)?  $default,){
final _that = this;
switch (_that) {
case _OtpVerificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String otp,  VerificationType verificationType,  OtpVerificationStatus verificationStatus,  ResendOtpStatus resendStatus,  String? errorMessage,  int timerSeconds,  bool isTimerRunning,  VerifyOtpResponseEntity? verifyOtpResponse,  String? resetToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpVerificationState() when $default != null:
return $default(_that.email,_that.otp,_that.verificationType,_that.verificationStatus,_that.resendStatus,_that.errorMessage,_that.timerSeconds,_that.isTimerRunning,_that.verifyOtpResponse,_that.resetToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String otp,  VerificationType verificationType,  OtpVerificationStatus verificationStatus,  ResendOtpStatus resendStatus,  String? errorMessage,  int timerSeconds,  bool isTimerRunning,  VerifyOtpResponseEntity? verifyOtpResponse,  String? resetToken)  $default,) {final _that = this;
switch (_that) {
case _OtpVerificationState():
return $default(_that.email,_that.otp,_that.verificationType,_that.verificationStatus,_that.resendStatus,_that.errorMessage,_that.timerSeconds,_that.isTimerRunning,_that.verifyOtpResponse,_that.resetToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String otp,  VerificationType verificationType,  OtpVerificationStatus verificationStatus,  ResendOtpStatus resendStatus,  String? errorMessage,  int timerSeconds,  bool isTimerRunning,  VerifyOtpResponseEntity? verifyOtpResponse,  String? resetToken)?  $default,) {final _that = this;
switch (_that) {
case _OtpVerificationState() when $default != null:
return $default(_that.email,_that.otp,_that.verificationType,_that.verificationStatus,_that.resendStatus,_that.errorMessage,_that.timerSeconds,_that.isTimerRunning,_that.verifyOtpResponse,_that.resetToken);case _:
  return null;

}
}

}

/// @nodoc


class _OtpVerificationState extends OtpVerificationState {
  const _OtpVerificationState({required this.email, this.otp = '', this.verificationType = VerificationType.register, this.verificationStatus = OtpVerificationStatus.initial, this.resendStatus = ResendOtpStatus.initial, this.errorMessage, this.timerSeconds = 0, this.isTimerRunning = false, this.verifyOtpResponse, this.resetToken}): super._();
  

@override final  String email;
@override@JsonKey() final  String otp;
@override@JsonKey() final  VerificationType verificationType;
@override@JsonKey() final  OtpVerificationStatus verificationStatus;
@override@JsonKey() final  ResendOtpStatus resendStatus;
@override final  String? errorMessage;
@override@JsonKey() final  int timerSeconds;
@override@JsonKey() final  bool isTimerRunning;
@override final  VerifyOtpResponseEntity? verifyOtpResponse;
@override final  String? resetToken;

/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpVerificationStateCopyWith<_OtpVerificationState> get copyWith => __$OtpVerificationStateCopyWithImpl<_OtpVerificationState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpVerificationState&&(identical(other.email, email) || other.email == email)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.verificationType, verificationType) || other.verificationType == verificationType)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.resendStatus, resendStatus) || other.resendStatus == resendStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.timerSeconds, timerSeconds) || other.timerSeconds == timerSeconds)&&(identical(other.isTimerRunning, isTimerRunning) || other.isTimerRunning == isTimerRunning)&&(identical(other.verifyOtpResponse, verifyOtpResponse) || other.verifyOtpResponse == verifyOtpResponse)&&(identical(other.resetToken, resetToken) || other.resetToken == resetToken));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,otp,verificationType,verificationStatus,resendStatus,errorMessage,timerSeconds,isTimerRunning,verifyOtpResponse,resetToken);
}

@override
String toString() {
    return 'OtpVerificationState(email: $email, otp: $otp, verificationType: $verificationType, verificationStatus: $verificationStatus, resendStatus: $resendStatus, errorMessage: $errorMessage, timerSeconds: $timerSeconds, isTimerRunning: $isTimerRunning, verifyOtpResponse: $verifyOtpResponse, resetToken: $resetToken)';
}


}

/// @nodoc
abstract mixin class _$OtpVerificationStateCopyWith<$Res> implements $OtpVerificationStateCopyWith<$Res> {
  factory _$OtpVerificationStateCopyWith(_OtpVerificationState value, $Res Function(_OtpVerificationState) _then) = __$OtpVerificationStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String otp, VerificationType verificationType, OtpVerificationStatus verificationStatus, ResendOtpStatus resendStatus, String? errorMessage, int timerSeconds, bool isTimerRunning, VerifyOtpResponseEntity? verifyOtpResponse, String? resetToken
});


@override $VerifyOtpResponseEntityCopyWith<$Res>? get verifyOtpResponse;

}
/// @nodoc
class __$OtpVerificationStateCopyWithImpl<$Res>
    implements _$OtpVerificationStateCopyWith<$Res> {
  __$OtpVerificationStateCopyWithImpl(this._self, this._then);

  final _OtpVerificationState _self;
  final $Res Function(_OtpVerificationState) _then;

/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? otp = null,Object? verificationType = null,Object? verificationStatus = null,Object? resendStatus = null,Object? errorMessage = freezed,Object? timerSeconds = null,Object? isTimerRunning = null,Object? verifyOtpResponse = freezed,Object? resetToken = freezed,}) {
  return _then(_OtpVerificationState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,verificationType: null == verificationType ? _self.verificationType : verificationType // ignore: cast_nullable_to_non_nullable
as VerificationType,verificationStatus: null == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as OtpVerificationStatus,resendStatus: null == resendStatus ? _self.resendStatus : resendStatus // ignore: cast_nullable_to_non_nullable
as ResendOtpStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,timerSeconds: null == timerSeconds ? _self.timerSeconds : timerSeconds // ignore: cast_nullable_to_non_nullable
as int,isTimerRunning: null == isTimerRunning ? _self.isTimerRunning : isTimerRunning // ignore: cast_nullable_to_non_nullable
as bool,verifyOtpResponse: freezed == verifyOtpResponse ? _self.verifyOtpResponse : verifyOtpResponse // ignore: cast_nullable_to_non_nullable
as VerifyOtpResponseEntity?,resetToken: freezed == resetToken ? _self.resetToken : resetToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OtpVerificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyOtpResponseEntityCopyWith<$Res>? get verifyOtpResponse {
    if (_self.verifyOtpResponse == null) {
    return null;
  }

  return $VerifyOtpResponseEntityCopyWith<$Res>(_self.verifyOtpResponse!, (value) {
    return _then(_self.copyWith(verifyOtpResponse: value));
  });
}
}

// dart format on
