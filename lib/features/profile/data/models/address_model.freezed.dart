// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressModel {

 String get id; String get title; String get address;@JsonKey(name: 'governorate_id') String get governorateId;@JsonKey(name: 'governorate_name') String get governorateName;@JsonKey(name: 'center_id') String get centerId;@JsonKey(name: 'center_name') String get centerName;
/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressModelCopyWith<AddressModel> get copyWith => _$AddressModelCopyWithImpl<AddressModel>(this as AddressModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AddressModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.governorateId, _this.governorateId) || other.governorateId == _this.governorateId)&&(identical(other.governorateName, _this.governorateName) || other.governorateName == _this.governorateName)&&(identical(other.centerId, _this.centerId) || other.centerId == _this.centerId)&&(identical(other.centerName, _this.centerName) || other.centerName == _this.centerName));
}


@override
int get hashCode {
  final _this = this as AddressModel;
  return Object.hash(runtimeType,_this.id,_this.title,_this.address,_this.governorateId,_this.governorateName,_this.centerId,_this.centerName);
}

@override
String toString() {
  final _this = this as AddressModel;
  return 'AddressModel(id: ${_this.id}, title: ${_this.title}, address: ${_this.address}, governorateId: ${_this.governorateId}, governorateName: ${_this.governorateName}, centerId: ${_this.centerId}, centerName: ${_this.centerName})';
}


}

/// @nodoc
abstract mixin class $AddressModelCopyWith<$Res>  {
  factory $AddressModelCopyWith(AddressModel value, $Res Function(AddressModel) _then) = _$AddressModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String address,@JsonKey(name: 'governorate_id') String governorateId,@JsonKey(name: 'governorate_name') String governorateName,@JsonKey(name: 'center_id') String centerId,@JsonKey(name: 'center_name') String centerName
});




}
/// @nodoc
class _$AddressModelCopyWithImpl<$Res>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._self, this._then);

  final AddressModel _self;
  final $Res Function(AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? address = null,Object? governorateId = null,Object? governorateName = null,Object? centerId = null,Object? centerName = null,}) {
  return _then(AddressModel(
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


/// Adds pattern-matching-related methods to [AddressModel].
extension AddressModelPatterns on AddressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressModel value)  $default,){
final _that = this;
switch (_that) {
case _AddressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String address, @JsonKey(name: 'governorate_id')  String governorateId, @JsonKey(name: 'governorate_name')  String governorateName, @JsonKey(name: 'center_id')  String centerId, @JsonKey(name: 'center_name')  String centerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String address, @JsonKey(name: 'governorate_id')  String governorateId, @JsonKey(name: 'governorate_name')  String governorateName, @JsonKey(name: 'center_id')  String centerId, @JsonKey(name: 'center_name')  String centerName)  $default,) {final _that = this;
switch (_that) {
case _AddressModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String address, @JsonKey(name: 'governorate_id')  String governorateId, @JsonKey(name: 'governorate_name')  String governorateName, @JsonKey(name: 'center_id')  String centerId, @JsonKey(name: 'center_name')  String centerName)?  $default,) {final _that = this;
switch (_that) {
case _AddressModel() when $default != null:
return $default(_that.id,_that.title,_that.address,_that.governorateId,_that.governorateName,_that.centerId,_that.centerName);case _:
  return null;

}
}

}

/// @nodoc


class _AddressModel extends AddressModel {
  const _AddressModel({this.id = '', this.title = '', this.address = '', @JsonKey(name: 'governorate_id') this.governorateId = '', @JsonKey(name: 'governorate_name') this.governorateName = '', @JsonKey(name: 'center_id') this.centerId = '', @JsonKey(name: 'center_name') this.centerName = ''}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String address;
@override@JsonKey(name: 'governorate_id') final  String governorateId;
@override@JsonKey(name: 'governorate_name') final  String governorateName;
@override@JsonKey(name: 'center_id') final  String centerId;
@override@JsonKey(name: 'center_name') final  String centerName;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressModelCopyWith<_AddressModel> get copyWith => __$AddressModelCopyWithImpl<_AddressModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.address, address) || other.address == address)&&(identical(other.governorateId, governorateId) || other.governorateId == governorateId)&&(identical(other.governorateName, governorateName) || other.governorateName == governorateName)&&(identical(other.centerId, centerId) || other.centerId == centerId)&&(identical(other.centerName, centerName) || other.centerName == centerName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,title,address,governorateId,governorateName,centerId,centerName);
}

@override
String toString() {
    return 'AddressModel(id: $id, title: $title, address: $address, governorateId: $governorateId, governorateName: $governorateName, centerId: $centerId, centerName: $centerName)';
}


}

/// @nodoc
abstract mixin class _$AddressModelCopyWith<$Res> implements $AddressModelCopyWith<$Res> {
  factory _$AddressModelCopyWith(_AddressModel value, $Res Function(_AddressModel) _then) = __$AddressModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String address,@JsonKey(name: 'governorate_id') String governorateId,@JsonKey(name: 'governorate_name') String governorateName,@JsonKey(name: 'center_id') String centerId,@JsonKey(name: 'center_name') String centerName
});




}
/// @nodoc
class __$AddressModelCopyWithImpl<$Res>
    implements _$AddressModelCopyWith<$Res> {
  __$AddressModelCopyWithImpl(this._self, this._then);

  final _AddressModel _self;
  final $Res Function(_AddressModel) _then;

/// Create a copy of AddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? address = null,Object? governorateId = null,Object? governorateName = null,Object? centerId = null,Object? centerName = null,}) {
  return _then(_AddressModel(
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
