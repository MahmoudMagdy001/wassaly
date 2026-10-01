// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_token_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FcmTokenRequestModel {

 String get token;@JsonKey(name: 'device_id') String get deviceId;@JsonKey(name: 'user_id') int get userId;
/// Create a copy of FcmTokenRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FcmTokenRequestModelCopyWith<FcmTokenRequestModel> get copyWith => _$FcmTokenRequestModelCopyWithImpl<FcmTokenRequestModel>(this as FcmTokenRequestModel, _$identity);

  /// Serializes this FcmTokenRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FcmTokenRequestModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FcmTokenRequestModel&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.deviceId, _this.deviceId) || other.deviceId == _this.deviceId)&&(identical(other.userId, _this.userId) || other.userId == _this.userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FcmTokenRequestModel;
  return Object.hash(runtimeType,_this.token,_this.deviceId,_this.userId);
}

@override
String toString() {
  final _this = this as FcmTokenRequestModel;
  return 'FcmTokenRequestModel(token: ${_this.token}, deviceId: ${_this.deviceId}, userId: ${_this.userId})';
}


}

/// @nodoc
abstract mixin class $FcmTokenRequestModelCopyWith<$Res>  {
  factory $FcmTokenRequestModelCopyWith(FcmTokenRequestModel value, $Res Function(FcmTokenRequestModel) _then) = _$FcmTokenRequestModelCopyWithImpl;
@useResult
$Res call({
 String token,@JsonKey(name: 'device_id') String deviceId,@JsonKey(name: 'user_id') int userId
});




}
/// @nodoc
class _$FcmTokenRequestModelCopyWithImpl<$Res>
    implements $FcmTokenRequestModelCopyWith<$Res> {
  _$FcmTokenRequestModelCopyWithImpl(this._self, this._then);

  final FcmTokenRequestModel _self;
  final $Res Function(FcmTokenRequestModel) _then;

/// Create a copy of FcmTokenRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? deviceId = null,Object? userId = null,}) {
  return _then(FcmTokenRequestModel(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FcmTokenRequestModel].
extension FcmTokenRequestModelPatterns on FcmTokenRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FcmTokenRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FcmTokenRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FcmTokenRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _FcmTokenRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FcmTokenRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _FcmTokenRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token, @JsonKey(name: 'device_id')  String deviceId, @JsonKey(name: 'user_id')  int userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FcmTokenRequestModel() when $default != null:
return $default(_that.token,_that.deviceId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token, @JsonKey(name: 'device_id')  String deviceId, @JsonKey(name: 'user_id')  int userId)  $default,) {final _that = this;
switch (_that) {
case _FcmTokenRequestModel():
return $default(_that.token,_that.deviceId,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token, @JsonKey(name: 'device_id')  String deviceId, @JsonKey(name: 'user_id')  int userId)?  $default,) {final _that = this;
switch (_that) {
case _FcmTokenRequestModel() when $default != null:
return $default(_that.token,_that.deviceId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FcmTokenRequestModel extends FcmTokenRequestModel {
  const _FcmTokenRequestModel({required this.token, @JsonKey(name: 'device_id') required this.deviceId, @JsonKey(name: 'user_id') required this.userId}): super._();
  factory _FcmTokenRequestModel.fromJson(Map<String, dynamic> json) => _$FcmTokenRequestModelFromJson(json);

@override final  String token;
@override@JsonKey(name: 'device_id') final  String deviceId;
@override@JsonKey(name: 'user_id') final  int userId;

/// Create a copy of FcmTokenRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FcmTokenRequestModelCopyWith<_FcmTokenRequestModel> get copyWith => __$FcmTokenRequestModelCopyWithImpl<_FcmTokenRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FcmTokenRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FcmTokenRequestModel&&(identical(other.token, token) || other.token == token)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,token,deviceId,userId);
}

@override
String toString() {
    return 'FcmTokenRequestModel(token: $token, deviceId: $deviceId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$FcmTokenRequestModelCopyWith<$Res> implements $FcmTokenRequestModelCopyWith<$Res> {
  factory _$FcmTokenRequestModelCopyWith(_FcmTokenRequestModel value, $Res Function(_FcmTokenRequestModel) _then) = __$FcmTokenRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String token,@JsonKey(name: 'device_id') String deviceId,@JsonKey(name: 'user_id') int userId
});




}
/// @nodoc
class __$FcmTokenRequestModelCopyWithImpl<$Res>
    implements _$FcmTokenRequestModelCopyWith<$Res> {
  __$FcmTokenRequestModelCopyWithImpl(this._self, this._then);

  final _FcmTokenRequestModel _self;
  final $Res Function(_FcmTokenRequestModel) _then;

/// Create a copy of FcmTokenRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? deviceId = null,Object? userId = null,}) {
  return _then(_FcmTokenRequestModel(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
