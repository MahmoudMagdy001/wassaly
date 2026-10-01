// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupState {

 String get name; String get phone; String get email; String get password; String get confirmPassword; bool get isPasswordVisible; bool get isConfirmPasswordVisible; bool get isTermsAccepted; bool get isLoading; String? get errorMessage; bool get isRegistered; File? get avatarFile;
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupStateCopyWith<SignupState> get copyWith => _$SignupStateCopyWithImpl<SignupState>(this as SignupState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SignupState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.confirmPassword, _this.confirmPassword) || other.confirmPassword == _this.confirmPassword)&&(identical(other.isPasswordVisible, _this.isPasswordVisible) || other.isPasswordVisible == _this.isPasswordVisible)&&(identical(other.isConfirmPasswordVisible, _this.isConfirmPasswordVisible) || other.isConfirmPasswordVisible == _this.isConfirmPasswordVisible)&&(identical(other.isTermsAccepted, _this.isTermsAccepted) || other.isTermsAccepted == _this.isTermsAccepted)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.isRegistered, _this.isRegistered) || other.isRegistered == _this.isRegistered)&&(identical(other.avatarFile, _this.avatarFile) || other.avatarFile == _this.avatarFile));
}


@override
int get hashCode {
  final _this = this as SignupState;
  return Object.hash(runtimeType,_this.name,_this.phone,_this.email,_this.password,_this.confirmPassword,_this.isPasswordVisible,_this.isConfirmPasswordVisible,_this.isTermsAccepted,_this.isLoading,_this.errorMessage,_this.isRegistered,_this.avatarFile);
}

@override
String toString() {
  final _this = this as SignupState;
  return 'SignupState(name: ${_this.name}, phone: ${_this.phone}, email: ${_this.email}, password: ${_this.password}, confirmPassword: ${_this.confirmPassword}, isPasswordVisible: ${_this.isPasswordVisible}, isConfirmPasswordVisible: ${_this.isConfirmPasswordVisible}, isTermsAccepted: ${_this.isTermsAccepted}, isLoading: ${_this.isLoading}, errorMessage: ${_this.errorMessage}, isRegistered: ${_this.isRegistered}, avatarFile: ${_this.avatarFile})';
}


}

/// @nodoc
abstract mixin class $SignupStateCopyWith<$Res>  {
  factory $SignupStateCopyWith(SignupState value, $Res Function(SignupState) _then) = _$SignupStateCopyWithImpl;
@useResult
$Res call({
 String name, String phone, String email, String password, String confirmPassword, bool isPasswordVisible, bool isConfirmPasswordVisible, bool isTermsAccepted, bool isLoading, String? errorMessage, bool isRegistered, File? avatarFile
});




}
/// @nodoc
class _$SignupStateCopyWithImpl<$Res>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._self, this._then);

  final SignupState _self;
  final $Res Function(SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? isPasswordVisible = null,Object? isConfirmPasswordVisible = null,Object? isTermsAccepted = null,Object? isLoading = null,Object? errorMessage = freezed,Object? isRegistered = null,Object? avatarFile = freezed,}) {
  return _then(SignupState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordVisible: null == isConfirmPasswordVisible ? _self.isConfirmPasswordVisible : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isTermsAccepted: null == isTermsAccepted ? _self.isTermsAccepted : isTermsAccepted // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isRegistered: null == isRegistered ? _self.isRegistered : isRegistered // ignore: cast_nullable_to_non_nullable
as bool,avatarFile: freezed == avatarFile ? _self.avatarFile : avatarFile // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns on SignupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupState value)  $default,){
final _that = this;
switch (_that) {
case _SignupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupState value)?  $default,){
final _that = this;
switch (_that) {
case _SignupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String phone,  String email,  String password,  String confirmPassword,  bool isPasswordVisible,  bool isConfirmPasswordVisible,  bool isTermsAccepted,  bool isLoading,  String? errorMessage,  bool isRegistered,  File? avatarFile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupState() when $default != null:
return $default(_that.name,_that.phone,_that.email,_that.password,_that.confirmPassword,_that.isPasswordVisible,_that.isConfirmPasswordVisible,_that.isTermsAccepted,_that.isLoading,_that.errorMessage,_that.isRegistered,_that.avatarFile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String phone,  String email,  String password,  String confirmPassword,  bool isPasswordVisible,  bool isConfirmPasswordVisible,  bool isTermsAccepted,  bool isLoading,  String? errorMessage,  bool isRegistered,  File? avatarFile)  $default,) {final _that = this;
switch (_that) {
case _SignupState():
return $default(_that.name,_that.phone,_that.email,_that.password,_that.confirmPassword,_that.isPasswordVisible,_that.isConfirmPasswordVisible,_that.isTermsAccepted,_that.isLoading,_that.errorMessage,_that.isRegistered,_that.avatarFile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String phone,  String email,  String password,  String confirmPassword,  bool isPasswordVisible,  bool isConfirmPasswordVisible,  bool isTermsAccepted,  bool isLoading,  String? errorMessage,  bool isRegistered,  File? avatarFile)?  $default,) {final _that = this;
switch (_that) {
case _SignupState() when $default != null:
return $default(_that.name,_that.phone,_that.email,_that.password,_that.confirmPassword,_that.isPasswordVisible,_that.isConfirmPasswordVisible,_that.isTermsAccepted,_that.isLoading,_that.errorMessage,_that.isRegistered,_that.avatarFile);case _:
  return null;

}
}

}

/// @nodoc


class _SignupState implements SignupState {
  const _SignupState({this.name = '', this.phone = '', this.email = '', this.password = '', this.confirmPassword = '', this.isPasswordVisible = false, this.isConfirmPasswordVisible = false, this.isTermsAccepted = false, this.isLoading = false, this.errorMessage, this.isRegistered = false, this.avatarFile});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  String confirmPassword;
@override@JsonKey() final  bool isPasswordVisible;
@override@JsonKey() final  bool isConfirmPasswordVisible;
@override@JsonKey() final  bool isTermsAccepted;
@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override@JsonKey() final  bool isRegistered;
@override final  File? avatarFile;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupStateCopyWith<_SignupState> get copyWith => __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupState&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.isConfirmPasswordVisible, isConfirmPasswordVisible) || other.isConfirmPasswordVisible == isConfirmPasswordVisible)&&(identical(other.isTermsAccepted, isTermsAccepted) || other.isTermsAccepted == isTermsAccepted)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isRegistered, isRegistered) || other.isRegistered == isRegistered)&&(identical(other.avatarFile, avatarFile) || other.avatarFile == avatarFile));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,email,password,confirmPassword,isPasswordVisible,isConfirmPasswordVisible,isTermsAccepted,isLoading,errorMessage,isRegistered,avatarFile);
}

@override
String toString() {
    return 'SignupState(name: $name, phone: $phone, email: $email, password: $password, confirmPassword: $confirmPassword, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, isTermsAccepted: $isTermsAccepted, isLoading: $isLoading, errorMessage: $errorMessage, isRegistered: $isRegistered, avatarFile: $avatarFile)';
}


}

/// @nodoc
abstract mixin class _$SignupStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(_SignupState value, $Res Function(_SignupState) _then) = __$SignupStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String phone, String email, String password, String confirmPassword, bool isPasswordVisible, bool isConfirmPasswordVisible, bool isTermsAccepted, bool isLoading, String? errorMessage, bool isRegistered, File? avatarFile
});




}
/// @nodoc
class __$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(this._self, this._then);

  final _SignupState _self;
  final $Res Function(_SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? isPasswordVisible = null,Object? isConfirmPasswordVisible = null,Object? isTermsAccepted = null,Object? isLoading = null,Object? errorMessage = freezed,Object? isRegistered = null,Object? avatarFile = freezed,}) {
  return _then(_SignupState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordVisible: null == isConfirmPasswordVisible ? _self.isConfirmPasswordVisible : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isTermsAccepted: null == isTermsAccepted ? _self.isTermsAccepted : isTermsAccepted // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isRegistered: null == isRegistered ? _self.isRegistered : isRegistered // ignore: cast_nullable_to_non_nullable
as bool,avatarFile: freezed == avatarFile ? _self.avatarFile : avatarFile // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
