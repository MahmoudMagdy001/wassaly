// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'center_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CenterEntity {

 String get id; String get name; String get governorateId;
/// Create a copy of CenterEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CenterEntityCopyWith<CenterEntity> get copyWith => _$CenterEntityCopyWithImpl<CenterEntity>(this as CenterEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CenterEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CenterEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.governorateId, _this.governorateId) || other.governorateId == _this.governorateId));
}


@override
int get hashCode {
  final _this = this as CenterEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.governorateId);
}

@override
String toString() {
  final _this = this as CenterEntity;
  return 'CenterEntity(id: ${_this.id}, name: ${_this.name}, governorateId: ${_this.governorateId})';
}


}

/// @nodoc
abstract mixin class $CenterEntityCopyWith<$Res>  {
  factory $CenterEntityCopyWith(CenterEntity value, $Res Function(CenterEntity) _then) = _$CenterEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String governorateId
});




}
/// @nodoc
class _$CenterEntityCopyWithImpl<$Res>
    implements $CenterEntityCopyWith<$Res> {
  _$CenterEntityCopyWithImpl(this._self, this._then);

  final CenterEntity _self;
  final $Res Function(CenterEntity) _then;

/// Create a copy of CenterEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? governorateId = null,}) {
  return _then(CenterEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CenterEntity].
extension CenterEntityPatterns on CenterEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CenterEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CenterEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CenterEntity value)  $default,){
final _that = this;
switch (_that) {
case _CenterEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CenterEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CenterEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String governorateId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CenterEntity() when $default != null:
return $default(_that.id,_that.name,_that.governorateId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String governorateId)  $default,) {final _that = this;
switch (_that) {
case _CenterEntity():
return $default(_that.id,_that.name,_that.governorateId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String governorateId)?  $default,) {final _that = this;
switch (_that) {
case _CenterEntity() when $default != null:
return $default(_that.id,_that.name,_that.governorateId);case _:
  return null;

}
}

}

/// @nodoc


class _CenterEntity implements CenterEntity {
  const _CenterEntity({required this.id, required this.name, required this.governorateId});
  

@override final  String id;
@override final  String name;
@override final  String governorateId;

/// Create a copy of CenterEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CenterEntityCopyWith<_CenterEntity> get copyWith => __$CenterEntityCopyWithImpl<_CenterEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CenterEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.governorateId, governorateId) || other.governorateId == governorateId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,governorateId);
}

@override
String toString() {
    return 'CenterEntity(id: $id, name: $name, governorateId: $governorateId)';
}


}

/// @nodoc
abstract mixin class _$CenterEntityCopyWith<$Res> implements $CenterEntityCopyWith<$Res> {
  factory _$CenterEntityCopyWith(_CenterEntity value, $Res Function(_CenterEntity) _then) = __$CenterEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String governorateId
});




}
/// @nodoc
class __$CenterEntityCopyWithImpl<$Res>
    implements _$CenterEntityCopyWith<$Res> {
  __$CenterEntityCopyWithImpl(this._self, this._then);

  final _CenterEntity _self;
  final $Res Function(_CenterEntity) _then;

/// Create a copy of CenterEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? governorateId = null,}) {
  return _then(_CenterEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
