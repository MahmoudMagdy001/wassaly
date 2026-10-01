// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterResponseModel {

 bool get status; String get message; RegisterDataModel? get data;
/// Create a copy of RegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterResponseModelCopyWith<RegisterResponseModel> get copyWith => _$RegisterResponseModelCopyWithImpl<RegisterResponseModel>(this as RegisterResponseModel, _$identity);

  /// Serializes this RegisterResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RegisterResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterResponseModel&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.data, _this.data) || other.data == _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RegisterResponseModel;
  return Object.hash(runtimeType,_this.status,_this.message,_this.data);
}

@override
String toString() {
  final _this = this as RegisterResponseModel;
  return 'RegisterResponseModel(status: ${_this.status}, message: ${_this.message}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $RegisterResponseModelCopyWith<$Res>  {
  factory $RegisterResponseModelCopyWith(RegisterResponseModel value, $Res Function(RegisterResponseModel) _then) = _$RegisterResponseModelCopyWithImpl;
@useResult
$Res call({
 bool status, String message, RegisterDataModel? data
});


$RegisterDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$RegisterResponseModelCopyWithImpl<$Res>
    implements $RegisterResponseModelCopyWith<$Res> {
  _$RegisterResponseModelCopyWithImpl(this._self, this._then);

  final RegisterResponseModel _self;
  final $Res Function(RegisterResponseModel) _then;

/// Create a copy of RegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(RegisterResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RegisterDataModel?,
  ));
}
/// Create a copy of RegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $RegisterDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterResponseModel].
extension RegisterResponseModelPatterns on RegisterResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RegisterResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message,  RegisterDataModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message,  RegisterDataModel? data)  $default,) {final _that = this;
switch (_that) {
case _RegisterResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message,  RegisterDataModel? data)?  $default,) {final _that = this;
switch (_that) {
case _RegisterResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterResponseModel extends RegisterResponseModel {
  const _RegisterResponseModel({this.status = false, this.message = '', this.data}): super._();
  factory _RegisterResponseModel.fromJson(Map<String, dynamic> json) => _$RegisterResponseModelFromJson(json);

@override@JsonKey() final  bool status;
@override@JsonKey() final  String message;
@override final  RegisterDataModel? data;

/// Create a copy of RegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterResponseModelCopyWith<_RegisterResponseModel> get copyWith => __$RegisterResponseModelCopyWithImpl<_RegisterResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,message,data);
}

@override
String toString() {
    return 'RegisterResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RegisterResponseModelCopyWith<$Res> implements $RegisterResponseModelCopyWith<$Res> {
  factory _$RegisterResponseModelCopyWith(_RegisterResponseModel value, $Res Function(_RegisterResponseModel) _then) = __$RegisterResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message, RegisterDataModel? data
});


@override $RegisterDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$RegisterResponseModelCopyWithImpl<$Res>
    implements _$RegisterResponseModelCopyWith<$Res> {
  __$RegisterResponseModelCopyWithImpl(this._self, this._then);

  final _RegisterResponseModel _self;
  final $Res Function(_RegisterResponseModel) _then;

/// Create a copy of RegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(_RegisterResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RegisterDataModel?,
  ));
}

/// Create a copy of RegisterResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $RegisterDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$RegisterDataModel {

 int get id; String get email;@JsonKey(name: 'full_name') String get fullName; String? get phone; String? get type;@JsonKey(name: 'email_verified_at') String? get emailVerifiedAt;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of RegisterDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterDataModelCopyWith<RegisterDataModel> get copyWith => _$RegisterDataModelCopyWithImpl<RegisterDataModel>(this as RegisterDataModel, _$identity);

  /// Serializes this RegisterDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RegisterDataModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDataModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.emailVerifiedAt, _this.emailVerifiedAt) || other.emailVerifiedAt == _this.emailVerifiedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RegisterDataModel;
  return Object.hash(runtimeType,_this.id,_this.email,_this.fullName,_this.phone,_this.type,_this.emailVerifiedAt,_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as RegisterDataModel;
  return 'RegisterDataModel(id: ${_this.id}, email: ${_this.email}, fullName: ${_this.fullName}, phone: ${_this.phone}, type: ${_this.type}, emailVerifiedAt: ${_this.emailVerifiedAt}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $RegisterDataModelCopyWith<$Res>  {
  factory $RegisterDataModelCopyWith(RegisterDataModel value, $Res Function(RegisterDataModel) _then) = _$RegisterDataModelCopyWithImpl;
@useResult
$Res call({
 int id, String email,@JsonKey(name: 'full_name') String fullName, String? phone, String? type,@JsonKey(name: 'email_verified_at') String? emailVerifiedAt,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$RegisterDataModelCopyWithImpl<$Res>
    implements $RegisterDataModelCopyWith<$Res> {
  _$RegisterDataModelCopyWithImpl(this._self, this._then);

  final RegisterDataModel _self;
  final $Res Function(RegisterDataModel) _then;

/// Create a copy of RegisterDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? fullName = null,Object? phone = freezed,Object? type = freezed,Object? emailVerifiedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(RegisterDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterDataModel].
extension RegisterDataModelPatterns on RegisterDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterDataModel value)  $default,){
final _that = this;
switch (_that) {
case _RegisterDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email, @JsonKey(name: 'full_name')  String fullName,  String? phone,  String? type, @JsonKey(name: 'email_verified_at')  String? emailVerifiedAt, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterDataModel() when $default != null:
return $default(_that.id,_that.email,_that.fullName,_that.phone,_that.type,_that.emailVerifiedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email, @JsonKey(name: 'full_name')  String fullName,  String? phone,  String? type, @JsonKey(name: 'email_verified_at')  String? emailVerifiedAt, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RegisterDataModel():
return $default(_that.id,_that.email,_that.fullName,_that.phone,_that.type,_that.emailVerifiedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email, @JsonKey(name: 'full_name')  String fullName,  String? phone,  String? type, @JsonKey(name: 'email_verified_at')  String? emailVerifiedAt, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RegisterDataModel() when $default != null:
return $default(_that.id,_that.email,_that.fullName,_that.phone,_that.type,_that.emailVerifiedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterDataModel extends RegisterDataModel {
  const _RegisterDataModel({this.id = 0, this.email = '', @JsonKey(name: 'full_name') this.fullName = '', this.phone, this.type, @JsonKey(name: 'email_verified_at') this.emailVerifiedAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): super._();
  factory _RegisterDataModel.fromJson(Map<String, dynamic> json) => _$RegisterDataModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String email;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String? phone;
@override final  String? type;
@override@JsonKey(name: 'email_verified_at') final  String? emailVerifiedAt;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of RegisterDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterDataModelCopyWith<_RegisterDataModel> get copyWith => __$RegisterDataModelCopyWithImpl<_RegisterDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.type, type) || other.type == type)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,email,fullName,phone,type,emailVerifiedAt,createdAt,updatedAt);
}

@override
String toString() {
    return 'RegisterDataModel(id: $id, email: $email, fullName: $fullName, phone: $phone, type: $type, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RegisterDataModelCopyWith<$Res> implements $RegisterDataModelCopyWith<$Res> {
  factory _$RegisterDataModelCopyWith(_RegisterDataModel value, $Res Function(_RegisterDataModel) _then) = __$RegisterDataModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String email,@JsonKey(name: 'full_name') String fullName, String? phone, String? type,@JsonKey(name: 'email_verified_at') String? emailVerifiedAt,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$RegisterDataModelCopyWithImpl<$Res>
    implements _$RegisterDataModelCopyWith<$Res> {
  __$RegisterDataModelCopyWithImpl(this._self, this._then);

  final _RegisterDataModel _self;
  final $Res Function(_RegisterDataModel) _then;

/// Create a copy of RegisterDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? fullName = null,Object? phone = freezed,Object? type = freezed,Object? emailVerifiedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_RegisterDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
