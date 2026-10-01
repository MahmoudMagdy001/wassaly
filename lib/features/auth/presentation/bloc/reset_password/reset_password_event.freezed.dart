// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPasswordEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ResetPasswordEvent()';
}


}

/// @nodoc
class $ResetPasswordEventCopyWith<$Res>  {
$ResetPasswordEventCopyWith(ResetPasswordEvent _, $Res Function(ResetPasswordEvent) __);
}


/// Adds pattern-matching-related methods to [ResetPasswordEvent].
extension ResetPasswordEventPatterns on ResetPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NewPasswordChanged value)?  newPasswordChanged,TResult Function( ConfirmPasswordChanged value)?  confirmPasswordChanged,TResult Function( PasswordVisibilityToggled value)?  passwordVisibilityToggled,TResult Function( ResetPasswordSubmitted value)?  resetPasswordSubmitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NewPasswordChanged() when newPasswordChanged != null:
return newPasswordChanged(_that);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case PasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled(_that);case ResetPasswordSubmitted() when resetPasswordSubmitted != null:
return resetPasswordSubmitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NewPasswordChanged value)  newPasswordChanged,required TResult Function( ConfirmPasswordChanged value)  confirmPasswordChanged,required TResult Function( PasswordVisibilityToggled value)  passwordVisibilityToggled,required TResult Function( ResetPasswordSubmitted value)  resetPasswordSubmitted,}){
final _that = this;
switch (_that) {
case NewPasswordChanged():
return newPasswordChanged(_that);case ConfirmPasswordChanged():
return confirmPasswordChanged(_that);case PasswordVisibilityToggled():
return passwordVisibilityToggled(_that);case ResetPasswordSubmitted():
return resetPasswordSubmitted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NewPasswordChanged value)?  newPasswordChanged,TResult? Function( ConfirmPasswordChanged value)?  confirmPasswordChanged,TResult? Function( PasswordVisibilityToggled value)?  passwordVisibilityToggled,TResult? Function( ResetPasswordSubmitted value)?  resetPasswordSubmitted,}){
final _that = this;
switch (_that) {
case NewPasswordChanged() when newPasswordChanged != null:
return newPasswordChanged(_that);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that);case PasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled(_that);case ResetPasswordSubmitted() when resetPasswordSubmitted != null:
return resetPasswordSubmitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String password)?  newPasswordChanged,TResult Function( String password)?  confirmPasswordChanged,TResult Function( bool isNewPassword)?  passwordVisibilityToggled,TResult Function()?  resetPasswordSubmitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NewPasswordChanged() when newPasswordChanged != null:
return newPasswordChanged(_that.password);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.password);case PasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled(_that.isNewPassword);case ResetPasswordSubmitted() when resetPasswordSubmitted != null:
return resetPasswordSubmitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String password)  newPasswordChanged,required TResult Function( String password)  confirmPasswordChanged,required TResult Function( bool isNewPassword)  passwordVisibilityToggled,required TResult Function()  resetPasswordSubmitted,}) {final _that = this;
switch (_that) {
case NewPasswordChanged():
return newPasswordChanged(_that.password);case ConfirmPasswordChanged():
return confirmPasswordChanged(_that.password);case PasswordVisibilityToggled():
return passwordVisibilityToggled(_that.isNewPassword);case ResetPasswordSubmitted():
return resetPasswordSubmitted();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String password)?  newPasswordChanged,TResult? Function( String password)?  confirmPasswordChanged,TResult? Function( bool isNewPassword)?  passwordVisibilityToggled,TResult? Function()?  resetPasswordSubmitted,}) {final _that = this;
switch (_that) {
case NewPasswordChanged() when newPasswordChanged != null:
return newPasswordChanged(_that.password);case ConfirmPasswordChanged() when confirmPasswordChanged != null:
return confirmPasswordChanged(_that.password);case PasswordVisibilityToggled() when passwordVisibilityToggled != null:
return passwordVisibilityToggled(_that.isNewPassword);case ResetPasswordSubmitted() when resetPasswordSubmitted != null:
return resetPasswordSubmitted();case _:
  return null;

}
}

}

/// @nodoc


class NewPasswordChanged implements ResetPasswordEvent {
  const NewPasswordChanged(this.password);
  

 final  String password;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewPasswordChangedCopyWith<NewPasswordChanged> get copyWith => _$NewPasswordChangedCopyWithImpl<NewPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NewPasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode {
    return Object.hash(runtimeType,password);
}

@override
String toString() {
    return 'ResetPasswordEvent.newPasswordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $NewPasswordChangedCopyWith<$Res> implements $ResetPasswordEventCopyWith<$Res> {
  factory $NewPasswordChangedCopyWith(NewPasswordChanged value, $Res Function(NewPasswordChanged) _then) = _$NewPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$NewPasswordChangedCopyWithImpl<$Res>
    implements $NewPasswordChangedCopyWith<$Res> {
  _$NewPasswordChangedCopyWithImpl(this._self, this._then);

  final NewPasswordChanged _self;
  final $Res Function(NewPasswordChanged) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(NewPasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ConfirmPasswordChanged implements ResetPasswordEvent {
  const ConfirmPasswordChanged(this.password);
  

 final  String password;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith => _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPasswordChanged&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode {
    return Object.hash(runtimeType,password);
}

@override
String toString() {
    return 'ResetPasswordEvent.confirmPasswordChanged(password: $password)';
}


}

/// @nodoc
abstract mixin class $ConfirmPasswordChangedCopyWith<$Res> implements $ResetPasswordEventCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value, $Res Function(ConfirmPasswordChanged) _then) = _$ConfirmPasswordChangedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(this._self, this._then);

  final ConfirmPasswordChanged _self;
  final $Res Function(ConfirmPasswordChanged) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(ConfirmPasswordChanged(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordVisibilityToggled implements ResetPasswordEvent {
  const PasswordVisibilityToggled({required this.isNewPassword});
  

 final  bool isNewPassword;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordVisibilityToggledCopyWith<PasswordVisibilityToggled> get copyWith => _$PasswordVisibilityToggledCopyWithImpl<PasswordVisibilityToggled>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordVisibilityToggled&&(identical(other.isNewPassword, isNewPassword) || other.isNewPassword == isNewPassword));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isNewPassword);
}

@override
String toString() {
    return 'ResetPasswordEvent.passwordVisibilityToggled(isNewPassword: $isNewPassword)';
}


}

/// @nodoc
abstract mixin class $PasswordVisibilityToggledCopyWith<$Res> implements $ResetPasswordEventCopyWith<$Res> {
  factory $PasswordVisibilityToggledCopyWith(PasswordVisibilityToggled value, $Res Function(PasswordVisibilityToggled) _then) = _$PasswordVisibilityToggledCopyWithImpl;
@useResult
$Res call({
 bool isNewPassword
});




}
/// @nodoc
class _$PasswordVisibilityToggledCopyWithImpl<$Res>
    implements $PasswordVisibilityToggledCopyWith<$Res> {
  _$PasswordVisibilityToggledCopyWithImpl(this._self, this._then);

  final PasswordVisibilityToggled _self;
  final $Res Function(PasswordVisibilityToggled) _then;

/// Create a copy of ResetPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isNewPassword = null,}) {
  return _then(PasswordVisibilityToggled(
isNewPassword: null == isNewPassword ? _self.isNewPassword : isNewPassword // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ResetPasswordSubmitted implements ResetPasswordEvent {
  const ResetPasswordSubmitted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ResetPasswordEvent.resetPasswordSubmitted()';
}


}




// dart format on
