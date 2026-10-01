// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_send_otp_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgetSendOtpResponseEntity {

 bool get status; String get message;
/// Create a copy of ForgetSendOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgetSendOtpResponseEntityCopyWith<ForgetSendOtpResponseEntity> get copyWith => _$ForgetSendOtpResponseEntityCopyWithImpl<ForgetSendOtpResponseEntity>(this as ForgetSendOtpResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ForgetSendOtpResponseEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetSendOtpResponseEntity&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as ForgetSendOtpResponseEntity;
  return Object.hash(runtimeType,_this.status,_this.message);
}

@override
String toString() {
  final _this = this as ForgetSendOtpResponseEntity;
  return 'ForgetSendOtpResponseEntity(status: ${_this.status}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $ForgetSendOtpResponseEntityCopyWith<$Res>  {
  factory $ForgetSendOtpResponseEntityCopyWith(ForgetSendOtpResponseEntity value, $Res Function(ForgetSendOtpResponseEntity) _then) = _$ForgetSendOtpResponseEntityCopyWithImpl;
@useResult
$Res call({
 bool status, String message
});




}
/// @nodoc
class _$ForgetSendOtpResponseEntityCopyWithImpl<$Res>
    implements $ForgetSendOtpResponseEntityCopyWith<$Res> {
  _$ForgetSendOtpResponseEntityCopyWithImpl(this._self, this._then);

  final ForgetSendOtpResponseEntity _self;
  final $Res Function(ForgetSendOtpResponseEntity) _then;

/// Create a copy of ForgetSendOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,}) {
  return _then(ForgetSendOtpResponseEntity(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgetSendOtpResponseEntity].
extension ForgetSendOtpResponseEntityPatterns on ForgetSendOtpResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgetSendOtpResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgetSendOtpResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgetSendOtpResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _ForgetSendOtpResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgetSendOtpResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ForgetSendOtpResponseEntity() when $default != null:
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
case _ForgetSendOtpResponseEntity() when $default != null:
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
case _ForgetSendOtpResponseEntity():
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
case _ForgetSendOtpResponseEntity() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ForgetSendOtpResponseEntity implements ForgetSendOtpResponseEntity {
  const _ForgetSendOtpResponseEntity({required this.status, required this.message});
  

@override final  bool status;
@override final  String message;

/// Create a copy of ForgetSendOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgetSendOtpResponseEntityCopyWith<_ForgetSendOtpResponseEntity> get copyWith => __$ForgetSendOtpResponseEntityCopyWithImpl<_ForgetSendOtpResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgetSendOtpResponseEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,message);
}

@override
String toString() {
    return 'ForgetSendOtpResponseEntity(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ForgetSendOtpResponseEntityCopyWith<$Res> implements $ForgetSendOtpResponseEntityCopyWith<$Res> {
  factory _$ForgetSendOtpResponseEntityCopyWith(_ForgetSendOtpResponseEntity value, $Res Function(_ForgetSendOtpResponseEntity) _then) = __$ForgetSendOtpResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message
});




}
/// @nodoc
class __$ForgetSendOtpResponseEntityCopyWithImpl<$Res>
    implements _$ForgetSendOtpResponseEntityCopyWith<$Res> {
  __$ForgetSendOtpResponseEntityCopyWithImpl(this._self, this._then);

  final _ForgetSendOtpResponseEntity _self;
  final $Res Function(_ForgetSendOtpResponseEntity) _then;

/// Create a copy of ForgetSendOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,}) {
  return _then(_ForgetSendOtpResponseEntity(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
