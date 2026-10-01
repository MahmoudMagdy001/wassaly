// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmailChanged value)?  emailChanged,TResult Function( PasswordChanged value)?  passwordChanged,TResult Function( PasswordVisibilityChanged value)?  passwordVisibilityChanged,TResult Function( LoginSubmitted value)?  loginSubmitted,TResult Function( LoginRequiresVerification value)?  loginRequiresVerification,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case PasswordVisibilityChanged() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that);case LoginSubmitted() when loginSubmitted != null:
return loginSubmitted(_that);case LoginRequiresVerification() when loginRequiresVerification != null:
return loginRequiresVerification(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmailChanged value)  emailChanged,required TResult Function( PasswordChanged value)  passwordChanged,required TResult Function( PasswordVisibilityChanged value)  passwordVisibilityChanged,required TResult Function( LoginSubmitted value)  loginSubmitted,required TResult Function( LoginRequiresVerification value)  loginRequiresVerification,}){
final _that = this;
switch (_that) {
case EmailChanged():
return emailChanged(_that);case PasswordChanged():
return passwordChanged(_that);case PasswordVisibilityChanged():
return passwordVisibilityChanged(_that);case LoginSubmitted():
return loginSubmitted(_that);case LoginRequiresVerification():
return loginRequiresVerification(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmailChanged value)?  emailChanged,TResult? Function( PasswordChanged value)?  passwordChanged,TResult? Function( PasswordVisibilityChanged value)?  passwordVisibilityChanged,TResult? Function( LoginSubmitted value)?  loginSubmitted,TResult? Function( LoginRequiresVerification value)?  loginRequiresVerification,}){
final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case PasswordVisibilityChanged() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that);case LoginSubmitted() when loginSubmitted != null:
return loginSubmitted(_that);case LoginRequiresVerification() when loginRequiresVerification != null:
return loginRequiresVerification(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  emailChanged,TResult Function( String password)?  passwordChanged,TResult Function( bool isVisible)?  passwordVisibilityChanged,TResult Function()?  loginSubmitted,TResult Function( String email)?  loginRequiresVerification,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case PasswordVisibilityChanged() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that.isVisible);case LoginSubmitted() when loginSubmitted != null:
return loginSubmitted();case LoginRequiresVerification() when loginRequiresVerification != null:
return loginRequiresVerification(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  emailChanged,required TResult Function( String password)  passwordChanged,required TResult Function( bool isVisible)  passwordVisibilityChanged,required TResult Function()  loginSubmitted,required TResult Function( String email)  loginRequiresVerification,}) {final _that = this;
switch (_that) {
case EmailChanged():
return emailChanged(_that.email);case PasswordChanged():
return passwordChanged(_that.password);case PasswordVisibilityChanged():
return passwordVisibilityChanged(_that.isVisible);case LoginSubmitted():
return loginSubmitted();case LoginRequiresVerification():
return loginRequiresVerification(_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  emailChanged,TResult? Function( String password)?  passwordChanged,TResult? Function( bool isVisible)?  passwordVisibilityChanged,TResult? Function()?  loginSubmitted,TResult? Function( String email)?  loginRequiresVerification,}) {final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case PasswordVisibilityChanged() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that.isVisible);case LoginSubmitted() when loginSubmitted != null:
return loginSubmitted();case LoginRequiresVerification() when loginRequiresVerification != null:
return loginRequiresVerification(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class EmailChanged implements LoginEvent {
  const EmailChanged(this.email);
  

 final  String email;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailChangedCopyWith<EmailChanged> get copyWith => _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email);
}

@override
String toString() {
    return 'LoginEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(EmailChanged value, $Res Function(EmailChanged) _then) = _$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._self, this._then);

  final EmailChanged _self;
  final $Res Function(EmailChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordChanged implements LoginEvent {
  const PasswordChanged(this.password);
  

 final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordChangedCopyWith<PasswordChanged> get copyWith => _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode {
    return Object.hash(runtimeType,password);
}

@override
String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $PasswordChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $PasswordChangedCopyWith(PasswordChanged value, $Res Function(PasswordChanged) _then) = _$PasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(this._self, this._then);

  final PasswordChanged _self;
  final $Res Function(PasswordChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(PasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordVisibilityChanged implements LoginEvent {
  const PasswordVisibilityChanged({required this.isVisible});
  

 final  bool isVisible;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordVisibilityChangedCopyWith<PasswordVisibilityChanged> get copyWith => _$PasswordVisibilityChangedCopyWithImpl<PasswordVisibilityChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordVisibilityChanged&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isVisible);
}

@override
String toString() {
    return 'LoginEvent.passwordVisibilityChanged(isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $PasswordVisibilityChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $PasswordVisibilityChangedCopyWith(PasswordVisibilityChanged value, $Res Function(PasswordVisibilityChanged) _then) = _$PasswordVisibilityChangedCopyWithImpl;
@useResult
$Res call({
 bool isVisible
});




}
/// @nodoc
class _$PasswordVisibilityChangedCopyWithImpl<$Res>
    implements $PasswordVisibilityChangedCopyWith<$Res> {
  _$PasswordVisibilityChangedCopyWithImpl(this._self, this._then);

  final PasswordVisibilityChanged _self;
  final $Res Function(PasswordVisibilityChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isVisible = null,}) {
  return _then(PasswordVisibilityChanged(
isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoginSubmitted implements LoginEvent {
  const LoginSubmitted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LoginEvent.loginSubmitted()';
}


}




/// @nodoc


class LoginRequiresVerification implements LoginEvent {
  const LoginRequiresVerification(this.email);
  

 final  String email;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequiresVerificationCopyWith<LoginRequiresVerification> get copyWith => _$LoginRequiresVerificationCopyWithImpl<LoginRequiresVerification>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequiresVerification&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email);
}

@override
String toString() {
    return 'LoginEvent.loginRequiresVerification(email: $email)';
}


}

/// @nodoc
abstract mixin class $LoginRequiresVerificationCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginRequiresVerificationCopyWith(LoginRequiresVerification value, $Res Function(LoginRequiresVerification) _then) = _$LoginRequiresVerificationCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$LoginRequiresVerificationCopyWithImpl<$Res>
    implements $LoginRequiresVerificationCopyWith<$Res> {
  _$LoginRequiresVerificationCopyWithImpl(this._self, this._then);

  final LoginRequiresVerification _self;
  final $Res Function(LoginRequiresVerification) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(LoginRequiresVerification(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
