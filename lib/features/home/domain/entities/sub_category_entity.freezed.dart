// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubCategoryEntity {

 int get id; String get name; String get image; List<ServiceEntity>? get services;
/// Create a copy of SubCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryEntityCopyWith<SubCategoryEntity> get copyWith => _$SubCategoryEntityCopyWithImpl<SubCategoryEntity>(this as SubCategoryEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubCategoryEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&const DeepCollectionEquality().equals(other.services, _this.services));
}


@override
int get hashCode {
  final _this = this as SubCategoryEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.image,const DeepCollectionEquality().hash(_this.services));
}

@override
String toString() {
  final _this = this as SubCategoryEntity;
  return 'SubCategoryEntity(id: ${_this.id}, name: ${_this.name}, image: ${_this.image}, services: ${_this.services})';
}


}

/// @nodoc
abstract mixin class $SubCategoryEntityCopyWith<$Res>  {
  factory $SubCategoryEntityCopyWith(SubCategoryEntity value, $Res Function(SubCategoryEntity) _then) = _$SubCategoryEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image, List<ServiceEntity>? services
});




}
/// @nodoc
class _$SubCategoryEntityCopyWithImpl<$Res>
    implements $SubCategoryEntityCopyWith<$Res> {
  _$SubCategoryEntityCopyWithImpl(this._self, this._then);

  final SubCategoryEntity _self;
  final $Res Function(SubCategoryEntity) _then;

/// Create a copy of SubCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? services = freezed,}) {
  return _then(SubCategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,services: freezed == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubCategoryEntity].
extension SubCategoryEntityPatterns on SubCategoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image,  List<ServiceEntity>? services)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.services);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image,  List<ServiceEntity>? services)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryEntity():
return $default(_that.id,_that.name,_that.image,_that.services);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image,  List<ServiceEntity>? services)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.services);case _:
  return null;

}
}

}

/// @nodoc


class _SubCategoryEntity implements SubCategoryEntity {
  const _SubCategoryEntity({required this.id, required this.name, required this.image,  List<ServiceEntity>? services}): _services = services;
  

@override final  int id;
@override final  String name;
@override final  String image;
 final  List<ServiceEntity>? _services;
@override List<ServiceEntity>? get services {
  final value = _services;
  if (value == null) return null;
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SubCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryEntityCopyWith<_SubCategoryEntity> get copyWith => __$SubCategoryEntityCopyWithImpl<_SubCategoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.services, _services));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,image,const DeepCollectionEquality().hash(_services));
}

@override
String toString() {
    return 'SubCategoryEntity(id: $id, name: $name, image: $image, services: $services)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryEntityCopyWith<$Res> implements $SubCategoryEntityCopyWith<$Res> {
  factory _$SubCategoryEntityCopyWith(_SubCategoryEntity value, $Res Function(_SubCategoryEntity) _then) = __$SubCategoryEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image, List<ServiceEntity>? services
});




}
/// @nodoc
class __$SubCategoryEntityCopyWithImpl<$Res>
    implements _$SubCategoryEntityCopyWith<$Res> {
  __$SubCategoryEntityCopyWithImpl(this._self, this._then);

  final _SubCategoryEntity _self;
  final $Res Function(_SubCategoryEntity) _then;

/// Create a copy of SubCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? services = freezed,}) {
  return _then(_SubCategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,services: freezed == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>?,
  ));
}


}

// dart format on
