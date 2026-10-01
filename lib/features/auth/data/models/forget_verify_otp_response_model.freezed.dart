// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_verify_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgetVerifyOtpResponseModel {

 bool get status; String get message; String? get token;
/// Create a copy of ForgetVerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgetVerifyOtpResponseModelCopyWith<ForgetVerifyOtpResponseModel> get copyWith => _$ForgetVerifyOtpResponseModelCopyWithImpl<ForgetVerifyOtpResponseModel>(this as ForgetVerifyOtpResponseModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ForgetVerifyOtpResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetVerifyOtpResponseModel&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as ForgetVerifyOtpResponseModel;
  return Object.hash(runtimeType,_this.status,_this.message,_this.token);
}

@override
String toString() {
  final _this = this as ForgetVerifyOtpResponseModel;
  return 'ForgetVerifyOtpResponseModel(status: ${_this.status}, message: ${_this.message}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $ForgetVerifyOtpResponseModelCopyWith<$Res>  {
  factory $ForgetVerifyOtpResponseModelCopyWith(ForgetVerifyOtpResponseModel value, $Res Function(ForgetVerifyOtpResponseModel) _then) = _$ForgetVerifyOtpResponseModelCopyWithImpl;
@useResult
$Res call({
 bool status, String message, String? token
});




}
/// @nodoc
class _$ForgetVerifyOtpResponseModelCopyWithImpl<$Res>
    implements $ForgetVerifyOtpResponseModelCopyWith<$Res> {
  _$ForgetVerifyOtpResponseModelCopyWithImpl(this._self, this._then);

  final ForgetVerifyOtpResponseModel _self;
  final $Res Function(ForgetVerifyOtpResponseModel) _then;

/// Create a copy of ForgetVerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? token = freezed,}) {
  return _then(ForgetVerifyOtpResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgetVerifyOtpResponseModel].
extension ForgetVerifyOtpResponseModelPatterns on ForgetVerifyOtpResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgetVerifyOtpResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgetVerifyOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgetVerifyOtpResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ForgetVerifyOtpResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgetVerifyOtpResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForgetVerifyOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgetVerifyOtpResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message,  String? token)  $default,) {final _that = this;
switch (_that) {
case _ForgetVerifyOtpResponseModel():
return $default(_that.status,_that.message,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _ForgetVerifyOtpResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _ForgetVerifyOtpResponseModel extends ForgetVerifyOtpResponseModel {
  const _ForgetVerifyOtpResponseModel({this.status = false, this.message = '', this.token}): super._();
  

@override@JsonKey() final  bool status;
@override@JsonKey() final  String message;
@override final  String? token;

/// Create a copy of ForgetVerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgetVerifyOtpResponseModelCopyWith<_ForgetVerifyOtpResponseModel> get copyWith => __$ForgetVerifyOtpResponseModelCopyWithImpl<_ForgetVerifyOtpResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgetVerifyOtpResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,message,token);
}

@override
String toString() {
    return 'ForgetVerifyOtpResponseModel(status: $status, message: $message, token: $token)';
}


}

/// @nodoc
abstract mixin class _$ForgetVerifyOtpResponseModelCopyWith<$Res> implements $ForgetVerifyOtpResponseModelCopyWith<$Res> {
  factory _$ForgetVerifyOtpResponseModelCopyWith(_ForgetVerifyOtpResponseModel value, $Res Function(_ForgetVerifyOtpResponseModel) _then) = __$ForgetVerifyOtpResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message, String? token
});




}
/// @nodoc
class __$ForgetVerifyOtpResponseModelCopyWithImpl<$Res>
    implements _$ForgetVerifyOtpResponseModelCopyWith<$Res> {
  __$ForgetVerifyOtpResponseModelCopyWithImpl(this._self, this._then);

  final _ForgetVerifyOtpResponseModel _self;
  final $Res Function(_ForgetVerifyOtpResponseModel) _then;

/// Create a copy of ForgetVerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? token = freezed,}) {
  return _then(_ForgetVerifyOtpResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
