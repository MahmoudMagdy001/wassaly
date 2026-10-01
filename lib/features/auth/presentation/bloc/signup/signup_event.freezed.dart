// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SignupEvent()';
}


}

/// @nodoc
class $SignupEventCopyWith<$Res>  {
$SignupEventCopyWith(SignupEvent _, $Res Function(SignupEvent) __);
}


/// Adds pattern-matching-related methods to [SignupEvent].
extension SignupEventPatterns on SignupEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NameChanged value)?  nameChanged,TResult Function( PhoneChanged value)?  phoneChanged,TResult Function( EmailChanged value)?  emailChanged,TResult Function( PasswordChanged value)?  passwordChanged,TResult Function( PasswordVisibilityChanged value)?  passwordVisibilityChanged,TResult Function( ConfirmPasswordChanged value)?  confirmPasswordChanged,TResult Function( ConfirmPasswordVisibilityChanged value)?  confirmPasswordVisibilityChanged,TResult Function( TermsAcceptedChanged value)?  termsAcceptedChanged,TResult Function( SignupSubmitted value)?  signupSubmitted,TResult Function( SignupWithFacebook value)?  signupWithFacebook,TResult Function( AvatarChanged value)?  avatarChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case PasswordVisibilityChanged() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case ConfirmPasswordVisibilityChanged() when confirmPasswordVisibilityChanged != null:
return confirmPasswordVisibilityChanged(_that);case TermsAcceptedChanged() when termsAcceptedChanged != null:
return termsAcceptedChanged(_that);case SignupSubmitted() when signupSubmitted != null:
return signupSubmitted(_that);case SignupWithFacebook() when signupWithFacebook != null:
return signupWithFacebook(_that);case AvatarChanged() when avatarChanged != null:
return avatarChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NameChanged value)  nameChanged,required TResult Function( PhoneChanged value)  phoneChanged,required TResult Function( EmailChanged value)  emailChanged,required TResult Function( PasswordChanged value)  passwordChanged,required TResult Function( PasswordVisibilityChanged value)  passwordVisibilityChanged,required TResult Function( ConfirmPasswordChanged value)  confirmPasswordChanged,required TResult Function( ConfirmPasswordVisibilityChanged value)  confirmPasswordVisibilityChanged,required TResult Function( TermsAcceptedChanged value)  termsAcceptedChanged,required TResult Function( SignupSubmitted value)  signupSubmitted,required TResult Function( SignupWithFacebook value)  signupWithFacebook,required TResult Function( AvatarChanged value)  avatarChanged,}){
final _that = this;
switch (_that) {
case NameChanged():
return nameChanged(_that);case PhoneChanged():
return phoneChanged(_that);case EmailChanged():
return emailChanged(_that);case PasswordChanged():
return passwordChanged(_that);case PasswordVisibilityChanged():
return passwordVisibilityChanged(_that);case ConfirmPasswordChanged():
return confirmPasswordChanged(_that);case ConfirmPasswordVisibilityChanged():
return confirmPasswordVisibilityChanged(_that);case TermsAcceptedChanged():
return termsAcceptedChanged(_that);case SignupSubmitted():
return signupSubmitted(_that);case SignupWithFacebook():
return signupWithFacebook(_that);case AvatarChanged():
return avatarChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NameChanged value)?  nameChanged,TResult? Function( PhoneChanged value)?  phoneChanged,TResult? Function( EmailChanged value)?  emailChanged,TResult? Function( PasswordChanged value)?  passwordChanged,TResult? Function( PasswordVisibilityChanged value)?  passwordVisibilityChanged,TResult? Function( ConfirmPasswordChanged value)?  confirmPasswordChanged,TResult? Function( ConfirmPasswordVisibilityChanged value)?  confirmPasswordVisibilityChanged,TResult? Function( TermsAcceptedChanged value)?  termsAcceptedChanged,TResult? Function( SignupSubmitted value)?  signupSubmitted,TResult? Function( SignupWithFacebook value)?  signupWithFacebook,TResult? Function( AvatarChanged value)?  avatarChanged,}){
final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case PasswordVisibilityChanged() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case ConfirmPasswordVisibilityChanged() when confirmPasswordVisibilityChanged != null:
return confirmPasswordVisibilityChanged(_that);case TermsAcceptedChanged() when termsAcceptedChanged != null:
return termsAcceptedChanged(_that);case SignupSubmitted() when signupSubmitted != null:
return signupSubmitted(_that);case SignupWithFacebook() when signupWithFacebook != null:
return signupWithFacebook(_that);case AvatarChanged() when avatarChanged != null:
return avatarChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function( String phone)?  phoneChanged,TResult Function( String email)?  emailChanged,TResult Function( String password)?  passwordChanged,TResult Function( bool isVisible)?  passwordVisibilityChanged,TResult Function( String confirmPassword)?  confirmPasswordChanged,TResult Function( bool isVisible)?  confirmPasswordVisibilityChanged,TResult Function( bool isAccepted)?  termsAcceptedChanged,TResult Function()?  signupSubmitted,TResult Function()?  signupWithFacebook,TResult Function( File? avatarFile)?  avatarChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case PasswordVisibilityChanged() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that.isVisible);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.confirmPassword);case ConfirmPasswordVisibilityChanged() when confirmPasswordVisibilityChanged != null:
return confirmPasswordVisibilityChanged(_that.isVisible);case TermsAcceptedChanged() when termsAcceptedChanged != null:
return termsAcceptedChanged(_that.isAccepted);case SignupSubmitted() when signupSubmitted != null:
return signupSubmitted();case SignupWithFacebook() when signupWithFacebook != null:
return signupWithFacebook();case AvatarChanged() when avatarChanged != null:
return avatarChanged(_that.avatarFile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function( String phone)  phoneChanged,required TResult Function( String email)  emailChanged,required TResult Function( String password)  passwordChanged,required TResult Function( bool isVisible)  passwordVisibilityChanged,required TResult Function( String confirmPassword)  confirmPasswordChanged,required TResult Function( bool isVisible)  confirmPasswordVisibilityChanged,required TResult Function( bool isAccepted)  termsAcceptedChanged,required TResult Function()  signupSubmitted,required TResult Function()  signupWithFacebook,required TResult Function( File? avatarFile)  avatarChanged,}) {final _that = this;
switch (_that) {
case NameChanged():
return nameChanged(_that.name);case PhoneChanged():
return phoneChanged(_that.phone);case EmailChanged():
return emailChanged(_that.email);case PasswordChanged():
return passwordChanged(_that.password);case PasswordVisibilityChanged():
return passwordVisibilityChanged(_that.isVisible);case ConfirmPasswordChanged():
return confirmPasswordChanged(_that.confirmPassword);case ConfirmPasswordVisibilityChanged():
return confirmPasswordVisibilityChanged(_that.isVisible);case TermsAcceptedChanged():
return termsAcceptedChanged(_that.isAccepted);case SignupSubmitted():
return signupSubmitted();case SignupWithFacebook():
return signupWithFacebook();case AvatarChanged():
return avatarChanged(_that.avatarFile);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function( String phone)?  phoneChanged,TResult? Function( String email)?  emailChanged,TResult? Function( String password)?  passwordChanged,TResult? Function( bool isVisible)?  passwordVisibilityChanged,TResult? Function( String confirmPassword)?  confirmPasswordChanged,TResult? Function( bool isVisible)?  confirmPasswordVisibilityChanged,TResult? Function( bool isAccepted)?  termsAcceptedChanged,TResult? Function()?  signupSubmitted,TResult? Function()?  signupWithFacebook,TResult? Function( File? avatarFile)?  avatarChanged,}) {final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case EmailChanged() when emailChanged != null:
return emailChanged(_that.email);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.password);case PasswordVisibilityChanged() when passwordVisibilityChanged != null:
return passwordVisibilityChanged(_that.isVisible);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.confirmPassword);case ConfirmPasswordVisibilityChanged() when confirmPasswordVisibilityChanged != null:
return confirmPasswordVisibilityChanged(_that.isVisible);case TermsAcceptedChanged() when termsAcceptedChanged != null:
return termsAcceptedChanged(_that.isAccepted);case SignupSubmitted() when signupSubmitted != null:
return signupSubmitted();case SignupWithFacebook() when signupWithFacebook != null:
return signupWithFacebook();case AvatarChanged() when avatarChanged != null:
return avatarChanged(_that.avatarFile);case _:
  return null;

}
}

}

/// @nodoc


class NameChanged implements SignupEvent {
  const NameChanged(this.name);
  

 final  String name;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameChangedCopyWith<NameChanged> get copyWith => _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name);
}

@override
String toString() {
    return 'SignupEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $NameChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $NameChangedCopyWith(NameChanged value, $Res Function(NameChanged) _then) = _$NameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(this._self, this._then);

  final NameChanged _self;
  final $Res Function(NameChanged) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(NameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PhoneChanged implements SignupEvent {
  const PhoneChanged(this.phone);
  

 final  String phone;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneChangedCopyWith<PhoneChanged> get copyWith => _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneChanged&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode {
    return Object.hash(runtimeType,phone);
}

@override
String toString() {
    return 'SignupEvent.phoneChanged(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PhoneChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $PhoneChangedCopyWith(PhoneChanged value, $Res Function(PhoneChanged) _then) = _$PhoneChangedCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(this._self, this._then);

  final PhoneChanged _self;
  final $Res Function(PhoneChanged) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(PhoneChanged(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmailChanged implements SignupEvent {
  const EmailChanged(this.email);
  

 final  String email;

/// Create a copy of SignupEvent
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
    return 'SignupEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
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

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(EmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordChanged implements SignupEvent {
  const PasswordChanged(this.password);
  

 final  String password;

/// Create a copy of SignupEvent
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
    return 'SignupEvent.passwordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $PasswordChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
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

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(PasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordVisibilityChanged implements SignupEvent {
  const PasswordVisibilityChanged({required this.isVisible});
  

 final  bool isVisible;

/// Create a copy of SignupEvent
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
    return 'SignupEvent.passwordVisibilityChanged(isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $PasswordVisibilityChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
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

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isVisible = null,}) {
  return _then(PasswordVisibilityChanged(
isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ConfirmPasswordChanged implements SignupEvent {
  const ConfirmPasswordChanged(this.confirmPassword);
  

 final  String confirmPassword;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith => _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPasswordChanged&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword));
}


@override
int get hashCode {
    return Object.hash(runtimeType,confirmPassword);
}

@override
String toString() {
    return 'SignupEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
}


}

/// @nodoc
abstract mixin class $ConfirmPasswordChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value, $Res Function(ConfirmPasswordChanged) _then) = _$ConfirmPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String confirmPassword
});




}
/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(this._self, this._then);

  final ConfirmPasswordChanged _self;
  final $Res Function(ConfirmPasswordChanged) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? confirmPassword = null,}) {
  return _then(ConfirmPasswordChanged(
null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ConfirmPasswordVisibilityChanged implements SignupEvent {
  const ConfirmPasswordVisibilityChanged({required this.isVisible});
  

 final  bool isVisible;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPasswordVisibilityChangedCopyWith<ConfirmPasswordVisibilityChanged> get copyWith => _$ConfirmPasswordVisibilityChangedCopyWithImpl<ConfirmPasswordVisibilityChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPasswordVisibilityChanged&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isVisible);
}

@override
String toString() {
    return 'SignupEvent.confirmPasswordVisibilityChanged(isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $ConfirmPasswordVisibilityChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $ConfirmPasswordVisibilityChangedCopyWith(ConfirmPasswordVisibilityChanged value, $Res Function(ConfirmPasswordVisibilityChanged) _then) = _$ConfirmPasswordVisibilityChangedCopyWithImpl;
@useResult
$Res call({
 bool isVisible
});




}
/// @nodoc
class _$ConfirmPasswordVisibilityChangedCopyWithImpl<$Res>
    implements $ConfirmPasswordVisibilityChangedCopyWith<$Res> {
  _$ConfirmPasswordVisibilityChangedCopyWithImpl(this._self, this._then);

  final ConfirmPasswordVisibilityChanged _self;
  final $Res Function(ConfirmPasswordVisibilityChanged) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isVisible = null,}) {
  return _then(ConfirmPasswordVisibilityChanged(
isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class TermsAcceptedChanged implements SignupEvent {
  const TermsAcceptedChanged({required this.isAccepted});
  

 final  bool isAccepted;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TermsAcceptedChangedCopyWith<TermsAcceptedChanged> get copyWith => _$TermsAcceptedChangedCopyWithImpl<TermsAcceptedChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TermsAcceptedChanged&&(identical(other.isAccepted, isAccepted) || other.isAccepted == isAccepted));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isAccepted);
}

@override
String toString() {
    return 'SignupEvent.termsAcceptedChanged(isAccepted: $isAccepted)';
}


}

/// @nodoc
abstract mixin class $TermsAcceptedChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $TermsAcceptedChangedCopyWith(TermsAcceptedChanged value, $Res Function(TermsAcceptedChanged) _then) = _$TermsAcceptedChangedCopyWithImpl;
@useResult
$Res call({
 bool isAccepted
});




}
/// @nodoc
class _$TermsAcceptedChangedCopyWithImpl<$Res>
    implements $TermsAcceptedChangedCopyWith<$Res> {
  _$TermsAcceptedChangedCopyWithImpl(this._self, this._then);

  final TermsAcceptedChanged _self;
  final $Res Function(TermsAcceptedChanged) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isAccepted = null,}) {
  return _then(TermsAcceptedChanged(
isAccepted: null == isAccepted ? _self.isAccepted : isAccepted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SignupSubmitted implements SignupEvent {
  const SignupSubmitted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SignupEvent.signupSubmitted()';
}


}




/// @nodoc


class SignupWithFacebook implements SignupEvent {
  const SignupWithFacebook();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupWithFacebook);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SignupEvent.signupWithFacebook()';
}


}




/// @nodoc


class AvatarChanged implements SignupEvent {
  const AvatarChanged(this.avatarFile);
  

 final  File? avatarFile;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvatarChangedCopyWith<AvatarChanged> get copyWith => _$AvatarChangedCopyWithImpl<AvatarChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AvatarChanged&&(identical(other.avatarFile, avatarFile) || other.avatarFile == avatarFile));
}


@override
int get hashCode {
    return Object.hash(runtimeType,avatarFile);
}

@override
String toString() {
    return 'SignupEvent.avatarChanged(avatarFile: $avatarFile)';
}


}

/// @nodoc
abstract mixin class $AvatarChangedCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $AvatarChangedCopyWith(AvatarChanged value, $Res Function(AvatarChanged) _then) = _$AvatarChangedCopyWithImpl;
@useResult
$Res call({
 File? avatarFile
});




}
/// @nodoc
class _$AvatarChangedCopyWithImpl<$Res>
    implements $AvatarChangedCopyWith<$Res> {
  _$AvatarChangedCopyWithImpl(this._self, this._then);

  final AvatarChanged _self;
  final $Res Function(AvatarChanged) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? avatarFile = freezed,}) {
  return _then(AvatarChanged(
freezed == avatarFile ? _self.avatarFile : avatarFile // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

// dart format on
