// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubCategoryDetailEntity {

 int get id; String get name; String get image; List<ServiceEntity> get services; PaginatedResponse<ProductEntity> get products;
/// Create a copy of SubCategoryDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryDetailEntityCopyWith<SubCategoryDetailEntity> get copyWith => _$SubCategoryDetailEntityCopyWithImpl<SubCategoryDetailEntity>(this as SubCategoryDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubCategoryDetailEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryDetailEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&const DeepCollectionEquality().equals(other.services, _this.services)&&(identical(other.products, _this.products) || other.products == _this.products));
}


@override
int get hashCode {
  final _this = this as SubCategoryDetailEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.image,const DeepCollectionEquality().hash(_this.services),_this.products);
}

@override
String toString() {
  final _this = this as SubCategoryDetailEntity;
  return 'SubCategoryDetailEntity(id: ${_this.id}, name: ${_this.name}, image: ${_this.image}, services: ${_this.services}, products: ${_this.products})';
}


}

/// @nodoc
abstract mixin class $SubCategoryDetailEntityCopyWith<$Res>  {
  factory $SubCategoryDetailEntityCopyWith(SubCategoryDetailEntity value, $Res Function(SubCategoryDetailEntity) _then) = _$SubCategoryDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image, List<ServiceEntity> services, PaginatedResponse<ProductEntity> products
});


$PaginatedResponseCopyWith<ProductEntity, $Res> get products;

}
/// @nodoc
class _$SubCategoryDetailEntityCopyWithImpl<$Res>
    implements $SubCategoryDetailEntityCopyWith<$Res> {
  _$SubCategoryDetailEntityCopyWithImpl(this._self, this._then);

  final SubCategoryDetailEntity _self;
  final $Res Function(SubCategoryDetailEntity) _then;

/// Create a copy of SubCategoryDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? services = null,Object? products = null,}) {
  return _then(SubCategoryDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,
  ));
}
/// Create a copy of SubCategoryDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductEntity, $Res> get products {
  
  return $PaginatedResponseCopyWith<ProductEntity, $Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubCategoryDetailEntity].
extension SubCategoryDetailEntityPatterns on SubCategoryDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image,  List<ServiceEntity> services,  PaginatedResponse<ProductEntity> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryDetailEntity() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.services,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image,  List<ServiceEntity> services,  PaginatedResponse<ProductEntity> products)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryDetailEntity():
return $default(_that.id,_that.name,_that.image,_that.services,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image,  List<ServiceEntity> services,  PaginatedResponse<ProductEntity> products)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryDetailEntity() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.services,_that.products);case _:
  return null;

}
}

}

/// @nodoc


class _SubCategoryDetailEntity implements SubCategoryDetailEntity {
  const _SubCategoryDetailEntity({required this.id, required this.name, required this.image, required  List<ServiceEntity> services, required this.products}): _services = services;
  

@override final  int id;
@override final  String name;
@override final  String image;
 final  List<ServiceEntity> _services;
@override List<ServiceEntity> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

@override final  PaginatedResponse<ProductEntity> products;

/// Create a copy of SubCategoryDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryDetailEntityCopyWith<_SubCategoryDetailEntity> get copyWith => __$SubCategoryDetailEntityCopyWithImpl<_SubCategoryDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.services, _services)&&(identical(other.products, products) || other.products == products));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,image,const DeepCollectionEquality().hash(_services),products);
}

@override
String toString() {
    return 'SubCategoryDetailEntity(id: $id, name: $name, image: $image, services: $services, products: $products)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryDetailEntityCopyWith<$Res> implements $SubCategoryDetailEntityCopyWith<$Res> {
  factory _$SubCategoryDetailEntityCopyWith(_SubCategoryDetailEntity value, $Res Function(_SubCategoryDetailEntity) _then) = __$SubCategoryDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image, List<ServiceEntity> services, PaginatedResponse<ProductEntity> products
});


@override $PaginatedResponseCopyWith<ProductEntity, $Res> get products;

}
/// @nodoc
class __$SubCategoryDetailEntityCopyWithImpl<$Res>
    implements _$SubCategoryDetailEntityCopyWith<$Res> {
  __$SubCategoryDetailEntityCopyWithImpl(this._self, this._then);

  final _SubCategoryDetailEntity _self;
  final $Res Function(_SubCategoryDetailEntity) _then;

/// Create a copy of SubCategoryDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? services = null,Object? products = null,}) {
  return _then(_SubCategoryDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,
  ));
}

/// Create a copy of SubCategoryDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductEntity, $Res> get products {
  
  return $PaginatedResponseCopyWith<ProductEntity, $Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}

// dart format on
