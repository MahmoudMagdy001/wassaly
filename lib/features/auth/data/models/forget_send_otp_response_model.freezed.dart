// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_send_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgetSendOtpResponseModel {

 bool get status; String get message;
/// Create a copy of ForgetSendOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgetSendOtpResponseModelCopyWith<ForgetSendOtpResponseModel> get copyWith => _$ForgetSendOtpResponseModelCopyWithImpl<ForgetSendOtpResponseModel>(this as ForgetSendOtpResponseModel, _$identity);

  /// Serializes this ForgetSendOtpResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ForgetSendOtpResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetSendOtpResponseModel&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.message, _this.message) || other.message == _this.message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ForgetSendOtpResponseModel;
  return Object.hash(runtimeType,_this.status,_this.message);
}

@override
String toString() {
  final _this = this as ForgetSendOtpResponseModel;
  return 'ForgetSendOtpResponseModel(status: ${_this.status}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $ForgetSendOtpResponseModelCopyWith<$Res>  {
  factory $ForgetSendOtpResponseModelCopyWith(ForgetSendOtpResponseModel value, $Res Function(ForgetSendOtpResponseModel) _then) = _$ForgetSendOtpResponseModelCopyWithImpl;
@useResult
$Res call({
 bool status, String message
});




}
/// @nodoc
class _$ForgetSendOtpResponseModelCopyWithImpl<$Res>
    implements $ForgetSendOtpResponseModelCopyWith<$Res> {
  _$ForgetSendOtpResponseModelCopyWithImpl(this._self, this._then);

  final ForgetSendOtpResponseModel _self;
  final $Res Function(ForgetSendOtpResponseModel) _then;

/// Create a copy of ForgetSendOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,}) {
  return _then(ForgetSendOtpResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgetSendOtpResponseModel].
extension ForgetSendOtpResponseModelPatterns on ForgetSendOtpResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgetSendOtpResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgetSendOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgetSendOtpResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ForgetSendOtpResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgetSendOtpResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForgetSendOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgetSendOtpResponseModel() when $default != null:
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message)  $default,) {final _that = this;
switch (_that) {
case _ForgetSendOtpResponseModel():
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message)?  $default,) {final _that = this;
switch (_that) {
case _ForgetSendOtpResponseModel() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgetSendOtpResponseModel extends ForgetSendOtpResponseModel {
  const _ForgetSendOtpResponseModel({this.status = false, this.message = ''}): super._();
  factory _ForgetSendOtpResponseModel.fromJson(Map<String, dynamic> json) => _$ForgetSendOtpResponseModelFromJson(json);

@override@JsonKey() final  bool status;
@override@JsonKey() final  String message;

/// Create a copy of ForgetSendOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgetSendOtpResponseModelCopyWith<_ForgetSendOtpResponseModel> get copyWith => __$ForgetSendOtpResponseModelCopyWithImpl<_ForgetSendOtpResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgetSendOtpResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgetSendOtpResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,message);
}

@override
String toString() {
    return 'ForgetSendOtpResponseModel(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ForgetSendOtpResponseModelCopyWith<$Res> implements $ForgetSendOtpResponseModelCopyWith<$Res> {
  factory _$ForgetSendOtpResponseModelCopyWith(_ForgetSendOtpResponseModel value, $Res Function(_ForgetSendOtpResponseModel) _then) = __$ForgetSendOtpResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message
});




}
/// @nodoc
class __$ForgetSendOtpResponseModelCopyWithImpl<$Res>
    implements _$ForgetSendOtpResponseModelCopyWith<$Res> {
  __$ForgetSendOtpResponseModelCopyWithImpl(this._self, this._then);

  final _ForgetSendOtpResponseModel _self;
  final $Res Function(_ForgetSendOtpResponseModel) _then;

/// Create a copy of ForgetSendOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,}) {
  return _then(_ForgetSendOtpResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
