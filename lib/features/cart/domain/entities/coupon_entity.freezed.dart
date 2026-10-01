// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CouponEntity {

 int get id; String get code; String get title; String get description; dynamic get value; String get type; bool get isValid; int? get userUsageLimit;
/// Create a copy of CouponEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CouponEntityCopyWith<CouponEntity> get copyWith => _$CouponEntityCopyWithImpl<CouponEntity>(this as CouponEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CouponEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.value, _this.value)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.isValid, _this.isValid) || other.isValid == _this.isValid)&&(identical(other.userUsageLimit, _this.userUsageLimit) || other.userUsageLimit == _this.userUsageLimit));
}


@override
int get hashCode {
  final _this = this as CouponEntity;
  return Object.hash(runtimeType,_this.id,_this.code,_this.title,_this.description,const DeepCollectionEquality().hash(_this.value),_this.type,_this.isValid,_this.userUsageLimit);
}

@override
String toString() {
  final _this = this as CouponEntity;
  return 'CouponEntity(id: ${_this.id}, code: ${_this.code}, title: ${_this.title}, description: ${_this.description}, value: ${_this.value}, type: ${_this.type}, isValid: ${_this.isValid}, userUsageLimit: ${_this.userUsageLimit})';
}


}

/// @nodoc
abstract mixin class $CouponEntityCopyWith<$Res>  {
  factory $CouponEntityCopyWith(CouponEntity value, $Res Function(CouponEntity) _then) = _$CouponEntityCopyWithImpl;
@useResult
$Res call({
 int id, String code, String title, String description, dynamic value, String type, bool isValid, int? userUsageLimit
});




}
/// @nodoc
class _$CouponEntityCopyWithImpl<$Res>
    implements $CouponEntityCopyWith<$Res> {
  _$CouponEntityCopyWithImpl(this._self, this._then);

  final CouponEntity _self;
  final $Res Function(CouponEntity) _then;

/// Create a copy of CouponEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? title = null,Object? description = null,Object? value = freezed,Object? type = null,Object? isValid = null,Object? userUsageLimit = freezed,}) {
  return _then(CouponEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,userUsageLimit: freezed == userUsageLimit ? _self.userUsageLimit : userUsageLimit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CouponEntity].
extension CouponEntityPatterns on CouponEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CouponEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CouponEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CouponEntity value)  $default,){
final _that = this;
switch (_that) {
case _CouponEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CouponEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CouponEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code,  String title,  String description,  dynamic value,  String type,  bool isValid,  int? userUsageLimit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CouponEntity() when $default != null:
return $default(_that.id,_that.code,_that.title,_that.description,_that.value,_that.type,_that.isValid,_that.userUsageLimit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code,  String title,  String description,  dynamic value,  String type,  bool isValid,  int? userUsageLimit)  $default,) {final _that = this;
switch (_that) {
case _CouponEntity():
return $default(_that.id,_that.code,_that.title,_that.description,_that.value,_that.type,_that.isValid,_that.userUsageLimit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code,  String title,  String description,  dynamic value,  String type,  bool isValid,  int? userUsageLimit)?  $default,) {final _that = this;
switch (_that) {
case _CouponEntity() when $default != null:
return $default(_that.id,_that.code,_that.title,_that.description,_that.value,_that.type,_that.isValid,_that.userUsageLimit);case _:
  return null;

}
}

}

/// @nodoc


class _CouponEntity implements CouponEntity {
  const _CouponEntity({required this.id, required this.code, required this.title, required this.description, required this.value, required this.type, required this.isValid, this.userUsageLimit});
  

@override final  int id;
@override final  String code;
@override final  String title;
@override final  String description;
@override final  dynamic value;
@override final  String type;
@override final  bool isValid;
@override final  int? userUsageLimit;

/// Create a copy of CouponEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponEntityCopyWith<_CouponEntity> get copyWith => __$CouponEntityCopyWithImpl<_CouponEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.type, type) || other.type == type)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.userUsageLimit, userUsageLimit) || other.userUsageLimit == userUsageLimit));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,code,title,description,const DeepCollectionEquality().hash(value),type,isValid,userUsageLimit);
}

@override
String toString() {
    return 'CouponEntity(id: $id, code: $code, title: $title, description: $description, value: $value, type: $type, isValid: $isValid, userUsageLimit: $userUsageLimit)';
}


}

/// @nodoc
abstract mixin class _$CouponEntityCopyWith<$Res> implements $CouponEntityCopyWith<$Res> {
  factory _$CouponEntityCopyWith(_CouponEntity value, $Res Function(_CouponEntity) _then) = __$CouponEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String title, String description, dynamic value, String type, bool isValid, int? userUsageLimit
});




}
/// @nodoc
class __$CouponEntityCopyWithImpl<$Res>
    implements _$CouponEntityCopyWith<$Res> {
  __$CouponEntityCopyWithImpl(this._self, this._then);

  final _CouponEntity _self;
  final $Res Function(_CouponEntity) _then;

/// Create a copy of CouponEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? title = null,Object? description = null,Object? value = freezed,Object? type = null,Object? isValid = null,Object? userUsageLimit = freezed,}) {
  return _then(_CouponEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,userUsageLimit: freezed == userUsageLimit ? _self.userUsageLimit : userUsageLimit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
