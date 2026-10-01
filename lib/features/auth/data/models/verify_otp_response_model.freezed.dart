// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyOtpResponseModel {

 bool get status; String get message; VerifyOtpDataModel? get data;
/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpResponseModelCopyWith<VerifyOtpResponseModel> get copyWith => _$VerifyOtpResponseModelCopyWithImpl<VerifyOtpResponseModel>(this as VerifyOtpResponseModel, _$identity);

  /// Serializes this VerifyOtpResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VerifyOtpResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpResponseModel&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.data, _this.data) || other.data == _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VerifyOtpResponseModel;
  return Object.hash(runtimeType,_this.status,_this.message,_this.data);
}

@override
String toString() {
  final _this = this as VerifyOtpResponseModel;
  return 'VerifyOtpResponseModel(status: ${_this.status}, message: ${_this.message}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $VerifyOtpResponseModelCopyWith<$Res>  {
  factory $VerifyOtpResponseModelCopyWith(VerifyOtpResponseModel value, $Res Function(VerifyOtpResponseModel) _then) = _$VerifyOtpResponseModelCopyWithImpl;
@useResult
$Res call({
 bool status, String message, VerifyOtpDataModel? data
});


$VerifyOtpDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$VerifyOtpResponseModelCopyWithImpl<$Res>
    implements $VerifyOtpResponseModelCopyWith<$Res> {
  _$VerifyOtpResponseModelCopyWithImpl(this._self, this._then);

  final VerifyOtpResponseModel _self;
  final $Res Function(VerifyOtpResponseModel) _then;

/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(VerifyOtpResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyOtpDataModel?,
  ));
}
/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyOtpDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $VerifyOtpDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyOtpResponseModel].
extension VerifyOtpResponseModelPatterns on VerifyOtpResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyOtpResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyOtpResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyOtpResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message,  VerifyOtpDataModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyOtpResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message,  VerifyOtpDataModel? data)  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpResponseModel():
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message,  VerifyOtpDataModel? data)?  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyOtpResponseModel extends VerifyOtpResponseModel {
  const _VerifyOtpResponseModel({this.status = false, this.message = '', this.data}): super._();
  factory _VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) => _$VerifyOtpResponseModelFromJson(json);

@override@JsonKey() final  bool status;
@override@JsonKey() final  String message;
@override final  VerifyOtpDataModel? data;

/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpResponseModelCopyWith<_VerifyOtpResponseModel> get copyWith => __$VerifyOtpResponseModelCopyWithImpl<_VerifyOtpResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyOtpResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,message,data);
}

@override
String toString() {
    return 'VerifyOtpResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpResponseModelCopyWith<$Res> implements $VerifyOtpResponseModelCopyWith<$Res> {
  factory _$VerifyOtpResponseModelCopyWith(_VerifyOtpResponseModel value, $Res Function(_VerifyOtpResponseModel) _then) = __$VerifyOtpResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message, VerifyOtpDataModel? data
});


@override $VerifyOtpDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$VerifyOtpResponseModelCopyWithImpl<$Res>
    implements _$VerifyOtpResponseModelCopyWith<$Res> {
  __$VerifyOtpResponseModelCopyWithImpl(this._self, this._then);

  final _VerifyOtpResponseModel _self;
  final $Res Function(_VerifyOtpResponseModel) _then;

/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(_VerifyOtpResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyOtpDataModel?,
  ));
}

/// Create a copy of VerifyOtpResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyOtpDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $VerifyOtpDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$VerifyOtpDataModel {

 int get id; String get name; String get email; String? get phone; String? get avatar; String? get type;
/// Create a copy of VerifyOtpDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpDataModelCopyWith<VerifyOtpDataModel> get copyWith => _$VerifyOtpDataModelCopyWithImpl<VerifyOtpDataModel>(this as VerifyOtpDataModel, _$identity);

  /// Serializes this VerifyOtpDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VerifyOtpDataModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpDataModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.type, _this.type) || other.type == _this.type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VerifyOtpDataModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.email,_this.phone,_this.avatar,_this.type);
}

@override
String toString() {
  final _this = this as VerifyOtpDataModel;
  return 'VerifyOtpDataModel(id: ${_this.id}, name: ${_this.name}, email: ${_this.email}, phone: ${_this.phone}, avatar: ${_this.avatar}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $VerifyOtpDataModelCopyWith<$Res>  {
  factory $VerifyOtpDataModelCopyWith(VerifyOtpDataModel value, $Res Function(VerifyOtpDataModel) _then) = _$VerifyOtpDataModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email, String? phone, String? avatar, String? type
});




}
/// @nodoc
class _$VerifyOtpDataModelCopyWithImpl<$Res>
    implements $VerifyOtpDataModelCopyWith<$Res> {
  _$VerifyOtpDataModelCopyWithImpl(this._self, this._then);

  final VerifyOtpDataModel _self;
  final $Res Function(VerifyOtpDataModel) _then;

/// Create a copy of VerifyOtpDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? avatar = freezed,Object? type = freezed,}) {
  return _then(VerifyOtpDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyOtpDataModel].
extension VerifyOtpDataModelPatterns on VerifyOtpDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyOtpDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyOtpDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyOtpDataModel value)  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyOtpDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String? phone,  String? avatar,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyOtpDataModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String? phone,  String? avatar,  String? type)  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpDataModel():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String email,  String? phone,  String? avatar,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpDataModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyOtpDataModel extends VerifyOtpDataModel {
  const _VerifyOtpDataModel({this.id = 0, this.name = '', this.email = '', this.phone, this.avatar, this.type}): super._();
  factory _VerifyOtpDataModel.fromJson(Map<String, dynamic> json) => _$VerifyOtpDataModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String email;
@override final  String? phone;
@override final  String? avatar;
@override final  String? type;

/// Create a copy of VerifyOtpDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpDataModelCopyWith<_VerifyOtpDataModel> get copyWith => __$VerifyOtpDataModelCopyWithImpl<_VerifyOtpDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyOtpDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,email,phone,avatar,type);
}

@override
String toString() {
    return 'VerifyOtpDataModel(id: $id, name: $name, email: $email, phone: $phone, avatar: $avatar, type: $type)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpDataModelCopyWith<$Res> implements $VerifyOtpDataModelCopyWith<$Res> {
  factory _$VerifyOtpDataModelCopyWith(_VerifyOtpDataModel value, $Res Function(_VerifyOtpDataModel) _then) = __$VerifyOtpDataModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String email, String? phone, String? avatar, String? type
});




}
/// @nodoc
class __$VerifyOtpDataModelCopyWithImpl<$Res>
    implements _$VerifyOtpDataModelCopyWith<$Res> {
  __$VerifyOtpDataModelCopyWithImpl(this._self, this._then);

  final _VerifyOtpDataModel _self;
  final $Res Function(_VerifyOtpDataModel) _then;

/// Create a copy of VerifyOtpDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? avatar = freezed,Object? type = freezed,}) {
  return _then(_VerifyOtpDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
