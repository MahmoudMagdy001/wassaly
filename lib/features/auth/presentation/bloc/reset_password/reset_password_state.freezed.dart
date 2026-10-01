// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPasswordState {

 String get email; String get token; String get password; String get passwordConfirmation; bool get isNewPasswordVisible; bool get isConfirmPasswordVisible; ResetPasswordStatus get status; String? get errorMessage;
/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordStateCopyWith<ResetPasswordState> get copyWith => _$ResetPasswordStateCopyWithImpl<ResetPasswordState>(this as ResetPasswordState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ResetPasswordState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordState&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.passwordConfirmation, _this.passwordConfirmation) || other.passwordConfirmation == _this.passwordConfirmation)&&(identical(other.isNewPasswordVisible, _this.isNewPasswordVisible) || other.isNewPasswordVisible == _this.isNewPasswordVisible)&&(identical(other.isConfirmPasswordVisible, _this.isConfirmPasswordVisible) || other.isConfirmPasswordVisible == _this.isConfirmPasswordVisible)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as ResetPasswordState;
  return Object.hash(runtimeType,_this.email,_this.token,_this.password,_this.passwordConfirmation,_this.isNewPasswordVisible,_this.isConfirmPasswordVisible,_this.status,_this.errorMessage);
}

@override
String toString() {
  final _this = this as ResetPasswordState;
  return 'ResetPasswordState(email: ${_this.email}, token: ${_this.token}, password: ${_this.password}, passwordConfirmation: ${_this.passwordConfirmation}, isNewPasswordVisible: ${_this.isNewPasswordVisible}, isConfirmPasswordVisible: ${_this.isConfirmPasswordVisible}, status: ${_this.status}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $ResetPasswordStateCopyWith<$Res>  {
  factory $ResetPasswordStateCopyWith(ResetPasswordState value, $Res Function(ResetPasswordState) _then) = _$ResetPasswordStateCopyWithImpl;
@useResult
$Res call({
 String email, String token, String password, String passwordConfirmation, bool isNewPasswordVisible, bool isConfirmPasswordVisible, ResetPasswordStatus status, String? errorMessage
});




}
/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final ResetPasswordState _self;
  final $Res Function(ResetPasswordState) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? token = null,Object? password = null,Object? passwordConfirmation = null,Object? isNewPasswordVisible = null,Object? isConfirmPasswordVisible = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(ResetPasswordState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: null == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String,isNewPasswordVisible: null == isNewPasswordVisible ? _self.isNewPasswordVisible : isNewPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordVisible: null == isConfirmPasswordVisible ? _self.isConfirmPasswordVisible : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ResetPasswordStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetPasswordState].
extension ResetPasswordStatePatterns on ResetPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String token,  String password,  String passwordConfirmation,  bool isNewPasswordVisible,  bool isConfirmPasswordVisible,  ResetPasswordStatus status,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
return $default(_that.email,_that.token,_that.password,_that.passwordConfirmation,_that.isNewPasswordVisible,_that.isConfirmPasswordVisible,_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String token,  String password,  String passwordConfirmation,  bool isNewPasswordVisible,  bool isConfirmPasswordVisible,  ResetPasswordStatus status,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordState():
return $default(_that.email,_that.token,_that.password,_that.passwordConfirmation,_that.isNewPasswordVisible,_that.isConfirmPasswordVisible,_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String token,  String password,  String passwordConfirmation,  bool isNewPasswordVisible,  bool isConfirmPasswordVisible,  ResetPasswordStatus status,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordState() when $default != null:
return $default(_that.email,_that.token,_that.password,_that.passwordConfirmation,_that.isNewPasswordVisible,_that.isConfirmPasswordVisible,_that.status,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ResetPasswordState extends ResetPasswordState {
  const _ResetPasswordState({required this.email, required this.token, this.password = '', this.passwordConfirmation = '', this.isNewPasswordVisible = false, this.isConfirmPasswordVisible = false, this.status = ResetPasswordStatus.initial, this.errorMessage}): super._();
  

@override final  String email;
@override final  String token;
@override@JsonKey() final  String password;
@override@JsonKey() final  String passwordConfirmation;
@override@JsonKey() final  bool isNewPasswordVisible;
@override@JsonKey() final  bool isConfirmPasswordVisible;
@override@JsonKey() final  ResetPasswordStatus status;
@override final  String? errorMessage;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith => __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordState&&(identical(other.email, email) || other.email == email)&&(identical(other.token, token) || other.token == token)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation)&&(identical(other.isNewPasswordVisible, isNewPasswordVisible) || other.isNewPasswordVisible == isNewPasswordVisible)&&(identical(other.isConfirmPasswordVisible, isConfirmPasswordVisible) || other.isConfirmPasswordVisible == isConfirmPasswordVisible)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,token,password,passwordConfirmation,isNewPasswordVisible,isConfirmPasswordVisible,status,errorMessage);
}

@override
String toString() {
    return 'ResetPasswordState(email: $email, token: $token, password: $password, passwordConfirmation: $passwordConfirmation, isNewPasswordVisible: $isNewPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordStateCopyWith<$Res> implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(_ResetPasswordState value, $Res Function(_ResetPasswordState) _then) = __$ResetPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String token, String password, String passwordConfirmation, bool isNewPasswordVisible, bool isConfirmPasswordVisible, ResetPasswordStatus status, String? errorMessage
});




}
/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final _ResetPasswordState _self;
  final $Res Function(_ResetPasswordState) _then;

/// Create a copy of ResetPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? token = null,Object? password = null,Object? passwordConfirmation = null,Object? isNewPasswordVisible = null,Object? isConfirmPasswordVisible = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_ResetPasswordState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: null == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String,isNewPasswordVisible: null == isNewPasswordVisible ? _self.isNewPasswordVisible : isNewPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordVisible: null == isConfirmPasswordVisible ? _self.isConfirmPasswordVisible : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ResetPasswordStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
