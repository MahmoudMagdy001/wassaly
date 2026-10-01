// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressEntity {

 String get id; String get title; String get address; String get governorateId; String get governorateName; String get centerId; String get centerName;
/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressEntityCopyWith<AddressEntity> get copyWith => _$AddressEntityCopyWithImpl<AddressEntity>(this as AddressEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AddressEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.governorateId, _this.governorateId) || other.governorateId == _this.governorateId)&&(identical(other.governorateName, _this.governorateName) || other.governorateName == _this.governorateName)&&(identical(other.centerId, _this.centerId) || other.centerId == _this.centerId)&&(identical(other.centerName, _this.centerName) || other.centerName == _this.centerName));
}


@override
int get hashCode {
  final _this = this as AddressEntity;
  return Object.hash(runtimeType,_this.id,_this.title,_this.address,_this.governorateId,_this.governorateName,_this.centerId,_this.centerName);
}

@override
String toString() {
  final _this = this as AddressEntity;
  return 'AddressEntity(id: ${_this.id}, title: ${_this.title}, address: ${_this.address}, governorateId: ${_this.governorateId}, governorateName: ${_this.governorateName}, centerId: ${_this.centerId}, centerName: ${_this.centerName})';
}


}

/// @nodoc
abstract mixin class $AddressEntityCopyWith<$Res>  {
  factory $AddressEntityCopyWith(AddressEntity value, $Res Function(AddressEntity) _then) = _$AddressEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String address, String governorateId, String governorateName, String centerId, String centerName
});




}
/// @nodoc
class _$AddressEntityCopyWithImpl<$Res>
    implements $AddressEntityCopyWith<$Res> {
  _$AddressEntityCopyWithImpl(this._self, this._then);

  final AddressEntity _self;
  final $Res Function(AddressEntity) _then;

/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? address = null,Object? governorateId = null,Object? governorateName = null,Object? centerId = null,Object? centerName = null,}) {
  return _then(AddressEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,governorateName: null == governorateName ? _self.governorateName : governorateName // ignore: cast_nullable_to_non_nullable
as String,centerId: null == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String,centerName: null == centerName ? _self.centerName : centerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressEntity].
extension AddressEntityPatterns on AddressEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressEntity value)  $default,){
final _that = this;
switch (_that) {
case _AddressEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String address,  String governorateId,  String governorateName,  String centerId,  String centerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
return $default(_that.id,_that.title,_that.address,_that.governorateId,_that.governorateName,_that.centerId,_that.centerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String address,  String governorateId,  String governorateName,  String centerId,  String centerName)  $default,) {final _that = this;
switch (_that) {
case _AddressEntity():
return $default(_that.id,_that.title,_that.address,_that.governorateId,_that.governorateName,_that.centerId,_that.centerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String address,  String governorateId,  String governorateName,  String centerId,  String centerName)?  $default,) {final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
return $default(_that.id,_that.title,_that.address,_that.governorateId,_that.governorateName,_that.centerId,_that.centerName);case _:
  return null;

}
}

}

/// @nodoc


class _AddressEntity implements AddressEntity {
  const _AddressEntity({required this.id, required this.title, required this.address, required this.governorateId, required this.governorateName, required this.centerId, required this.centerName});
  

@override final  String id;
@override final  String title;
@override final  String address;
@override final  String governorateId;
@override final  String governorateName;
@override final  String centerId;
@override final  String centerName;

/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressEntityCopyWith<_AddressEntity> get copyWith => __$AddressEntityCopyWithImpl<_AddressEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.governorateId, governorateId) || other.governorateId == governorateId)&&(identical(other.governorateName, governorateName) || other.governorateName == governorateName)&&(identical(other.centerId, centerId) || other.centerId == centerId)&&(identical(other.centerName, centerName) || other.centerName == centerName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,title,address,governorateId,governorateName,centerId,centerName);
}

@override
String toString() {
    return 'AddressEntity(id: $id, title: $title, address: $address, governorateId: $governorateId, governorateName: $governorateName, centerId: $centerId, centerName: $centerName)';
}


}

/// @nodoc
abstract mixin class _$AddressEntityCopyWith<$Res> implements $AddressEntityCopyWith<$Res> {
  factory _$AddressEntityCopyWith(_AddressEntity value, $Res Function(_AddressEntity) _then) = __$AddressEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String address, String governorateId, String governorateName, String centerId, String centerName
});




}
/// @nodoc
class __$AddressEntityCopyWithImpl<$Res>
    implements _$AddressEntityCopyWith<$Res> {
  __$AddressEntityCopyWithImpl(this._self, this._then);

  final _AddressEntity _self;
  final $Res Function(_AddressEntity) _then;

/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? address = null,Object? governorateId = null,Object? governorateName = null,Object? centerId = null,Object? centerName = null,}) {
  return _then(_AddressEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,governorateName: null == governorateName ? _self.governorateName : governorateName // ignore: cast_nullable_to_non_nullable
as String,centerId: null == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String,centerName: null == centerName ? _self.centerName : centerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
