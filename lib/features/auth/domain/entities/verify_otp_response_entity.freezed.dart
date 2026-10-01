// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyOtpResponseEntity {

 bool get status; String get message; VerifyOtpUserDataEntity? get data;
/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpResponseEntityCopyWith<VerifyOtpResponseEntity> get copyWith => _$VerifyOtpResponseEntityCopyWithImpl<VerifyOtpResponseEntity>(this as VerifyOtpResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as VerifyOtpResponseEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpResponseEntity&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.data, _this.data) || other.data == _this.data));
}


@override
int get hashCode {
  final _this = this as VerifyOtpResponseEntity;
  return Object.hash(runtimeType,_this.status,_this.message,_this.data);
}

@override
String toString() {
  final _this = this as VerifyOtpResponseEntity;
  return 'VerifyOtpResponseEntity(status: ${_this.status}, message: ${_this.message}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $VerifyOtpResponseEntityCopyWith<$Res>  {
  factory $VerifyOtpResponseEntityCopyWith(VerifyOtpResponseEntity value, $Res Function(VerifyOtpResponseEntity) _then) = _$VerifyOtpResponseEntityCopyWithImpl;
@useResult
$Res call({
 bool status, String message, VerifyOtpUserDataEntity? data
});


$VerifyOtpUserDataEntityCopyWith<$Res>? get data;

}
/// @nodoc
class _$VerifyOtpResponseEntityCopyWithImpl<$Res>
    implements $VerifyOtpResponseEntityCopyWith<$Res> {
  _$VerifyOtpResponseEntityCopyWithImpl(this._self, this._then);

  final VerifyOtpResponseEntity _self;
  final $Res Function(VerifyOtpResponseEntity) _then;

/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(VerifyOtpResponseEntity(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyOtpUserDataEntity?,
  ));
}
/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyOtpUserDataEntityCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $VerifyOtpUserDataEntityCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyOtpResponseEntity].
extension VerifyOtpResponseEntityPatterns on VerifyOtpResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyOtpResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyOtpResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyOtpResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyOtpResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String message,  VerifyOtpUserDataEntity? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyOtpResponseEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String message,  VerifyOtpUserDataEntity? data)  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpResponseEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String message,  VerifyOtpUserDataEntity? data)?  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpResponseEntity() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyOtpResponseEntity implements VerifyOtpResponseEntity {
  const _VerifyOtpResponseEntity({required this.status, required this.message, this.data});
  

@override final  bool status;
@override final  String message;
@override final  VerifyOtpUserDataEntity? data;

/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpResponseEntityCopyWith<_VerifyOtpResponseEntity> get copyWith => __$VerifyOtpResponseEntityCopyWithImpl<_VerifyOtpResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpResponseEntity&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,message,data);
}

@override
String toString() {
    return 'VerifyOtpResponseEntity(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpResponseEntityCopyWith<$Res> implements $VerifyOtpResponseEntityCopyWith<$Res> {
  factory _$VerifyOtpResponseEntityCopyWith(_VerifyOtpResponseEntity value, $Res Function(_VerifyOtpResponseEntity) _then) = __$VerifyOtpResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 bool status, String message, VerifyOtpUserDataEntity? data
});


@override $VerifyOtpUserDataEntityCopyWith<$Res>? get data;

}
/// @nodoc
class __$VerifyOtpResponseEntityCopyWithImpl<$Res>
    implements _$VerifyOtpResponseEntityCopyWith<$Res> {
  __$VerifyOtpResponseEntityCopyWithImpl(this._self, this._then);

  final _VerifyOtpResponseEntity _self;
  final $Res Function(_VerifyOtpResponseEntity) _then;

/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = freezed,}) {
  return _then(_VerifyOtpResponseEntity(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyOtpUserDataEntity?,
  ));
}

/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyOtpUserDataEntityCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $VerifyOtpUserDataEntityCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$VerifyOtpUserDataEntity {

 int get id; String get name; String get email; String? get phone; String? get avatar; String? get type;
/// Create a copy of VerifyOtpUserDataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpUserDataEntityCopyWith<VerifyOtpUserDataEntity> get copyWith => _$VerifyOtpUserDataEntityCopyWithImpl<VerifyOtpUserDataEntity>(this as VerifyOtpUserDataEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as VerifyOtpUserDataEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpUserDataEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.type, _this.type) || other.type == _this.type));
}


@override
int get hashCode {
  final _this = this as VerifyOtpUserDataEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.email,_this.phone,_this.avatar,_this.type);
}

@override
String toString() {
  final _this = this as VerifyOtpUserDataEntity;
  return 'VerifyOtpUserDataEntity(id: ${_this.id}, name: ${_this.name}, email: ${_this.email}, phone: ${_this.phone}, avatar: ${_this.avatar}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $VerifyOtpUserDataEntityCopyWith<$Res>  {
  factory $VerifyOtpUserDataEntityCopyWith(VerifyOtpUserDataEntity value, $Res Function(VerifyOtpUserDataEntity) _then) = _$VerifyOtpUserDataEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email, String? phone, String? avatar, String? type
});




}
/// @nodoc
class _$VerifyOtpUserDataEntityCopyWithImpl<$Res>
    implements $VerifyOtpUserDataEntityCopyWith<$Res> {
  _$VerifyOtpUserDataEntityCopyWithImpl(this._self, this._then);

  final VerifyOtpUserDataEntity _self;
  final $Res Function(VerifyOtpUserDataEntity) _then;

/// Create a copy of VerifyOtpUserDataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? avatar = freezed,Object? type = freezed,}) {
  return _then(VerifyOtpUserDataEntity(
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


/// Adds pattern-matching-related methods to [VerifyOtpUserDataEntity].
extension VerifyOtpUserDataEntityPatterns on VerifyOtpUserDataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyOtpUserDataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyOtpUserDataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyOtpUserDataEntity value)  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpUserDataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyOtpUserDataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpUserDataEntity() when $default != null:
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
case _VerifyOtpUserDataEntity() when $default != null:
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
case _VerifyOtpUserDataEntity():
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
case _VerifyOtpUserDataEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyOtpUserDataEntity implements VerifyOtpUserDataEntity {
  const _VerifyOtpUserDataEntity({required this.id, required this.name, required this.email, this.phone, this.avatar, this.type});
  

@override final  int id;
@override final  String name;
@override final  String email;
@override final  String? phone;
@override final  String? avatar;
@override final  String? type;

/// Create a copy of VerifyOtpUserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpUserDataEntityCopyWith<_VerifyOtpUserDataEntity> get copyWith => __$VerifyOtpUserDataEntityCopyWithImpl<_VerifyOtpUserDataEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpUserDataEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,email,phone,avatar,type);
}

@override
String toString() {
    return 'VerifyOtpUserDataEntity(id: $id, name: $name, email: $email, phone: $phone, avatar: $avatar, type: $type)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpUserDataEntityCopyWith<$Res> implements $VerifyOtpUserDataEntityCopyWith<$Res> {
  factory _$VerifyOtpUserDataEntityCopyWith(_VerifyOtpUserDataEntity value, $Res Function(_VerifyOtpUserDataEntity) _then) = __$VerifyOtpUserDataEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String email, String? phone, String? avatar, String? type
});




}
/// @nodoc
class __$VerifyOtpUserDataEntityCopyWithImpl<$Res>
    implements _$VerifyOtpUserDataEntityCopyWith<$Res> {
  __$VerifyOtpUserDataEntityCopyWithImpl(this._self, this._then);

  final _VerifyOtpUserDataEntity _self;
  final $Res Function(_VerifyOtpUserDataEntity) _then;

/// Create a copy of VerifyOtpUserDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = freezed,Object? avatar = freezed,Object? type = freezed,}) {
  return _then(_VerifyOtpUserDataEntity(
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
