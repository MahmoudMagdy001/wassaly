// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 String get email; String get password; bool get isPasswordVisible; bool get isLoading; String? get errorMessage; UserEntity? get user; bool get requiresVerification; String? get verificationEmail;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LoginState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.isPasswordVisible, _this.isPasswordVisible) || other.isPasswordVisible == _this.isPasswordVisible)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.requiresVerification, _this.requiresVerification) || other.requiresVerification == _this.requiresVerification)&&(identical(other.verificationEmail, _this.verificationEmail) || other.verificationEmail == _this.verificationEmail));
}


@override
int get hashCode {
  final _this = this as LoginState;
  return Object.hash(runtimeType,_this.email,_this.password,_this.isPasswordVisible,_this.isLoading,_this.errorMessage,_this.user,_this.requiresVerification,_this.verificationEmail);
}

@override
String toString() {
  final _this = this as LoginState;
  return 'LoginState(email: ${_this.email}, password: ${_this.password}, isPasswordVisible: ${_this.isPasswordVisible}, isLoading: ${_this.isLoading}, errorMessage: ${_this.errorMessage}, user: ${_this.user}, requiresVerification: ${_this.requiresVerification}, verificationEmail: ${_this.verificationEmail})';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 String email, String password, bool isPasswordVisible, bool isLoading, String? errorMessage, UserEntity? user, bool requiresVerification, String? verificationEmail
});


$UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? isPasswordVisible = null,Object? isLoading = null,Object? errorMessage = freezed,Object? user = freezed,Object? requiresVerification = null,Object? verificationEmail = freezed,}) {
  return _then(LoginState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,requiresVerification: null == requiresVerification ? _self.requiresVerification : requiresVerification // ignore: cast_nullable_to_non_nullable
as bool,verificationEmail: freezed == verificationEmail ? _self.verificationEmail : verificationEmail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  bool isPasswordVisible,  bool isLoading,  String? errorMessage,  UserEntity? user,  bool requiresVerification,  String? verificationEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.email,_that.password,_that.isPasswordVisible,_that.isLoading,_that.errorMessage,_that.user,_that.requiresVerification,_that.verificationEmail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  bool isPasswordVisible,  bool isLoading,  String? errorMessage,  UserEntity? user,  bool requiresVerification,  String? verificationEmail)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.email,_that.password,_that.isPasswordVisible,_that.isLoading,_that.errorMessage,_that.user,_that.requiresVerification,_that.verificationEmail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  bool isPasswordVisible,  bool isLoading,  String? errorMessage,  UserEntity? user,  bool requiresVerification,  String? verificationEmail)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.email,_that.password,_that.isPasswordVisible,_that.isLoading,_that.errorMessage,_that.user,_that.requiresVerification,_that.verificationEmail);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
  const _LoginState({this.email = '', this.password = '', this.isPasswordVisible = false, this.isLoading = false, this.errorMessage, this.user, this.requiresVerification = false, this.verificationEmail});
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  bool isPasswordVisible;
@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override final  UserEntity? user;
@override@JsonKey() final  bool requiresVerification;
@override final  String? verificationEmail;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.user, user) || other.user == user)&&(identical(other.requiresVerification, requiresVerification) || other.requiresVerification == requiresVerification)&&(identical(other.verificationEmail, verificationEmail) || other.verificationEmail == verificationEmail));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,password,isPasswordVisible,isLoading,errorMessage,user,requiresVerification,verificationEmail);
}

@override
String toString() {
    return 'LoginState(email: $email, password: $password, isPasswordVisible: $isPasswordVisible, isLoading: $isLoading, errorMessage: $errorMessage, user: $user, requiresVerification: $requiresVerification, verificationEmail: $verificationEmail)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, bool isPasswordVisible, bool isLoading, String? errorMessage, UserEntity? user, bool requiresVerification, String? verificationEmail
});


@override $UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? isPasswordVisible = null,Object? isLoading = null,Object? errorMessage = freezed,Object? user = freezed,Object? requiresVerification = null,Object? verificationEmail = freezed,}) {
  return _then(_LoginState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,requiresVerification: null == requiresVerification ? _self.requiresVerification : requiresVerification // ignore: cast_nullable_to_non_nullable
as bool,verificationEmail: freezed == verificationEmail ? _self.verificationEmail : verificationEmail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
