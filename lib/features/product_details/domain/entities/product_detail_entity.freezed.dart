// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductSpecificationEntity {

 int get id; String get key; String get value; String get icon;
/// Create a copy of ProductSpecificationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductSpecificationEntityCopyWith<ProductSpecificationEntity> get copyWith => _$ProductSpecificationEntityCopyWithImpl<ProductSpecificationEntity>(this as ProductSpecificationEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductSpecificationEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductSpecificationEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.key, _this.key) || other.key == _this.key)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.icon, _this.icon) || other.icon == _this.icon));
}


@override
int get hashCode {
  final _this = this as ProductSpecificationEntity;
  return Object.hash(runtimeType,_this.id,_this.key,_this.value,_this.icon);
}

@override
String toString() {
  final _this = this as ProductSpecificationEntity;
  return 'ProductSpecificationEntity(id: ${_this.id}, key: ${_this.key}, value: ${_this.value}, icon: ${_this.icon})';
}


}

/// @nodoc
abstract mixin class $ProductSpecificationEntityCopyWith<$Res>  {
  factory $ProductSpecificationEntityCopyWith(ProductSpecificationEntity value, $Res Function(ProductSpecificationEntity) _then) = _$ProductSpecificationEntityCopyWithImpl;
@useResult
$Res call({
 int id, String key, String value, String icon
});




}
/// @nodoc
class _$ProductSpecificationEntityCopyWithImpl<$Res>
    implements $ProductSpecificationEntityCopyWith<$Res> {
  _$ProductSpecificationEntityCopyWithImpl(this._self, this._then);

  final ProductSpecificationEntity _self;
  final $Res Function(ProductSpecificationEntity) _then;

/// Create a copy of ProductSpecificationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? key = null,Object? value = null,Object? icon = null,}) {
  return _then(ProductSpecificationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductSpecificationEntity].
extension ProductSpecificationEntityPatterns on ProductSpecificationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductSpecificationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductSpecificationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductSpecificationEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductSpecificationEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductSpecificationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductSpecificationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String key,  String value,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductSpecificationEntity() when $default != null:
return $default(_that.id,_that.key,_that.value,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String key,  String value,  String icon)  $default,) {final _that = this;
switch (_that) {
case _ProductSpecificationEntity():
return $default(_that.id,_that.key,_that.value,_that.icon);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String key,  String value,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _ProductSpecificationEntity() when $default != null:
return $default(_that.id,_that.key,_that.value,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _ProductSpecificationEntity implements ProductSpecificationEntity {
  const _ProductSpecificationEntity({required this.id, required this.key, required this.value, required this.icon});
  

@override final  int id;
@override final  String key;
@override final  String value;
@override final  String icon;

/// Create a copy of ProductSpecificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductSpecificationEntityCopyWith<_ProductSpecificationEntity> get copyWith => __$ProductSpecificationEntityCopyWithImpl<_ProductSpecificationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductSpecificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,key,value,icon);
}

@override
String toString() {
    return 'ProductSpecificationEntity(id: $id, key: $key, value: $value, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$ProductSpecificationEntityCopyWith<$Res> implements $ProductSpecificationEntityCopyWith<$Res> {
  factory _$ProductSpecificationEntityCopyWith(_ProductSpecificationEntity value, $Res Function(_ProductSpecificationEntity) _then) = __$ProductSpecificationEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String key, String value, String icon
});




}
/// @nodoc
class __$ProductSpecificationEntityCopyWithImpl<$Res>
    implements _$ProductSpecificationEntityCopyWith<$Res> {
  __$ProductSpecificationEntityCopyWithImpl(this._self, this._then);

  final _ProductSpecificationEntity _self;
  final $Res Function(_ProductSpecificationEntity) _then;

/// Create a copy of ProductSpecificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? key = null,Object? value = null,Object? icon = null,}) {
  return _then(_ProductSpecificationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProductDetailImageEntity {

 int get id; String get image;
/// Create a copy of ProductDetailImageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailImageEntityCopyWith<ProductDetailImageEntity> get copyWith => _$ProductDetailImageEntityCopyWithImpl<ProductDetailImageEntity>(this as ProductDetailImageEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductDetailImageEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailImageEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.image, _this.image) || other.image == _this.image));
}


@override
int get hashCode {
  final _this = this as ProductDetailImageEntity;
  return Object.hash(runtimeType,_this.id,_this.image);
}

@override
String toString() {
  final _this = this as ProductDetailImageEntity;
  return 'ProductDetailImageEntity(id: ${_this.id}, image: ${_this.image})';
}


}

/// @nodoc
abstract mixin class $ProductDetailImageEntityCopyWith<$Res>  {
  factory $ProductDetailImageEntityCopyWith(ProductDetailImageEntity value, $Res Function(ProductDetailImageEntity) _then) = _$ProductDetailImageEntityCopyWithImpl;
@useResult
$Res call({
 int id, String image
});




}
/// @nodoc
class _$ProductDetailImageEntityCopyWithImpl<$Res>
    implements $ProductDetailImageEntityCopyWith<$Res> {
  _$ProductDetailImageEntityCopyWithImpl(this._self, this._then);

  final ProductDetailImageEntity _self;
  final $Res Function(ProductDetailImageEntity) _then;

/// Create a copy of ProductDetailImageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? image = null,}) {
  return _then(ProductDetailImageEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDetailImageEntity].
extension ProductDetailImageEntityPatterns on ProductDetailImageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailImageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailImageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailImageEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailImageEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailImageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailImageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailImageEntity() when $default != null:
return $default(_that.id,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String image)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailImageEntity():
return $default(_that.id,_that.image);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String image)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailImageEntity() when $default != null:
return $default(_that.id,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _ProductDetailImageEntity implements ProductDetailImageEntity {
  const _ProductDetailImageEntity({required this.id, required this.image});
  

@override final  int id;
@override final  String image;

/// Create a copy of ProductDetailImageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailImageEntityCopyWith<_ProductDetailImageEntity> get copyWith => __$ProductDetailImageEntityCopyWithImpl<_ProductDetailImageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailImageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,image);
}

@override
String toString() {
    return 'ProductDetailImageEntity(id: $id, image: $image)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailImageEntityCopyWith<$Res> implements $ProductDetailImageEntityCopyWith<$Res> {
  factory _$ProductDetailImageEntityCopyWith(_ProductDetailImageEntity value, $Res Function(_ProductDetailImageEntity) _then) = __$ProductDetailImageEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String image
});




}
/// @nodoc
class __$ProductDetailImageEntityCopyWithImpl<$Res>
    implements _$ProductDetailImageEntityCopyWith<$Res> {
  __$ProductDetailImageEntityCopyWithImpl(this._self, this._then);

  final _ProductDetailImageEntity _self;
  final $Res Function(_ProductDetailImageEntity) _then;

/// Create a copy of ProductDetailImageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? image = null,}) {
  return _then(_ProductDetailImageEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProductReviewUserEntity {

 int get id; String get name; String? get avatar;
/// Create a copy of ProductReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewUserEntityCopyWith<ProductReviewUserEntity> get copyWith => _$ProductReviewUserEntityCopyWithImpl<ProductReviewUserEntity>(this as ProductReviewUserEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductReviewUserEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewUserEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}


@override
int get hashCode {
  final _this = this as ProductReviewUserEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.avatar);
}

@override
String toString() {
  final _this = this as ProductReviewUserEntity;
  return 'ProductReviewUserEntity(id: ${_this.id}, name: ${_this.name}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $ProductReviewUserEntityCopyWith<$Res>  {
  factory $ProductReviewUserEntityCopyWith(ProductReviewUserEntity value, $Res Function(ProductReviewUserEntity) _then) = _$ProductReviewUserEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? avatar
});




}
/// @nodoc
class _$ProductReviewUserEntityCopyWithImpl<$Res>
    implements $ProductReviewUserEntityCopyWith<$Res> {
  _$ProductReviewUserEntityCopyWithImpl(this._self, this._then);

  final ProductReviewUserEntity _self;
  final $Res Function(ProductReviewUserEntity) _then;

/// Create a copy of ProductReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(ProductReviewUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductReviewUserEntity].
extension ProductReviewUserEntityPatterns on ProductReviewUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewUserEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewUserEntity() when $default != null:
return $default(_that.id,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewUserEntity():
return $default(_that.id,_that.name,_that.avatar);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewUserEntity() when $default != null:
return $default(_that.id,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _ProductReviewUserEntity implements ProductReviewUserEntity {
  const _ProductReviewUserEntity({required this.id, required this.name, required this.avatar});
  

@override final  int id;
@override final  String name;
@override final  String? avatar;

/// Create a copy of ProductReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewUserEntityCopyWith<_ProductReviewUserEntity> get copyWith => __$ProductReviewUserEntityCopyWithImpl<_ProductReviewUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,avatar);
}

@override
String toString() {
    return 'ProductReviewUserEntity(id: $id, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewUserEntityCopyWith<$Res> implements $ProductReviewUserEntityCopyWith<$Res> {
  factory _$ProductReviewUserEntityCopyWith(_ProductReviewUserEntity value, $Res Function(_ProductReviewUserEntity) _then) = __$ProductReviewUserEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? avatar
});




}
/// @nodoc
class __$ProductReviewUserEntityCopyWithImpl<$Res>
    implements _$ProductReviewUserEntityCopyWith<$Res> {
  __$ProductReviewUserEntityCopyWithImpl(this._self, this._then);

  final _ProductReviewUserEntity _self;
  final $Res Function(_ProductReviewUserEntity) _then;

/// Create a copy of ProductReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_ProductReviewUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ProductDetailReviewEntity {

 int get id; int get rating; String get comment; String get createdAt; ProductReviewUserEntity get user;
/// Create a copy of ProductDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailReviewEntityCopyWith<ProductDetailReviewEntity> get copyWith => _$ProductDetailReviewEntityCopyWithImpl<ProductDetailReviewEntity>(this as ProductDetailReviewEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductDetailReviewEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailReviewEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as ProductDetailReviewEntity;
  return Object.hash(runtimeType,_this.id,_this.rating,_this.comment,_this.createdAt,_this.user);
}

@override
String toString() {
  final _this = this as ProductDetailReviewEntity;
  return 'ProductDetailReviewEntity(id: ${_this.id}, rating: ${_this.rating}, comment: ${_this.comment}, createdAt: ${_this.createdAt}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $ProductDetailReviewEntityCopyWith<$Res>  {
  factory $ProductDetailReviewEntityCopyWith(ProductDetailReviewEntity value, $Res Function(ProductDetailReviewEntity) _then) = _$ProductDetailReviewEntityCopyWithImpl;
@useResult
$Res call({
 int id, int rating, String comment, String createdAt, ProductReviewUserEntity user
});


$ProductReviewUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$ProductDetailReviewEntityCopyWithImpl<$Res>
    implements $ProductDetailReviewEntityCopyWith<$Res> {
  _$ProductDetailReviewEntityCopyWithImpl(this._self, this._then);

  final ProductDetailReviewEntity _self;
  final $Res Function(ProductDetailReviewEntity) _then;

/// Create a copy of ProductDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? createdAt = null,Object? user = null,}) {
  return _then(ProductDetailReviewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ProductReviewUserEntity,
  ));
}
/// Create a copy of ProductDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductReviewUserEntityCopyWith<$Res> get user {
  
  return $ProductReviewUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailReviewEntity].
extension ProductDetailReviewEntityPatterns on ProductDetailReviewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailReviewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailReviewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailReviewEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailReviewEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailReviewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailReviewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int rating,  String comment,  String createdAt,  ProductReviewUserEntity user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailReviewEntity() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int rating,  String comment,  String createdAt,  ProductReviewUserEntity user)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailReviewEntity():
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.user);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int rating,  String comment,  String createdAt,  ProductReviewUserEntity user)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailReviewEntity() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _ProductDetailReviewEntity implements ProductDetailReviewEntity {
  const _ProductDetailReviewEntity({required this.id, required this.rating, required this.comment, required this.createdAt, required this.user});
  

@override final  int id;
@override final  int rating;
@override final  String comment;
@override final  String createdAt;
@override final  ProductReviewUserEntity user;

/// Create a copy of ProductDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailReviewEntityCopyWith<_ProductDetailReviewEntity> get copyWith => __$ProductDetailReviewEntityCopyWithImpl<_ProductDetailReviewEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailReviewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,rating,comment,createdAt,user);
}

@override
String toString() {
    return 'ProductDetailReviewEntity(id: $id, rating: $rating, comment: $comment, createdAt: $createdAt, user: $user)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailReviewEntityCopyWith<$Res> implements $ProductDetailReviewEntityCopyWith<$Res> {
  factory _$ProductDetailReviewEntityCopyWith(_ProductDetailReviewEntity value, $Res Function(_ProductDetailReviewEntity) _then) = __$ProductDetailReviewEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int rating, String comment, String createdAt, ProductReviewUserEntity user
});


@override $ProductReviewUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$ProductDetailReviewEntityCopyWithImpl<$Res>
    implements _$ProductDetailReviewEntityCopyWith<$Res> {
  __$ProductDetailReviewEntityCopyWithImpl(this._self, this._then);

  final _ProductDetailReviewEntity _self;
  final $Res Function(_ProductDetailReviewEntity) _then;

/// Create a copy of ProductDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? createdAt = null,Object? user = null,}) {
  return _then(_ProductDetailReviewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ProductReviewUserEntity,
  ));
}

/// Create a copy of ProductDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductReviewUserEntityCopyWith<$Res> get user {
  
  return $ProductReviewUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
mixin _$ProductMetaEntity {

 int get id; String get name; String get image;
/// Create a copy of ProductMetaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductMetaEntityCopyWith<ProductMetaEntity> get copyWith => _$ProductMetaEntityCopyWithImpl<ProductMetaEntity>(this as ProductMetaEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductMetaEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductMetaEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image));
}


@override
int get hashCode {
  final _this = this as ProductMetaEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.image);
}

@override
String toString() {
  final _this = this as ProductMetaEntity;
  return 'ProductMetaEntity(id: ${_this.id}, name: ${_this.name}, image: ${_this.image})';
}


}

/// @nodoc
abstract mixin class $ProductMetaEntityCopyWith<$Res>  {
  factory $ProductMetaEntityCopyWith(ProductMetaEntity value, $Res Function(ProductMetaEntity) _then) = _$ProductMetaEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image
});




}
/// @nodoc
class _$ProductMetaEntityCopyWithImpl<$Res>
    implements $ProductMetaEntityCopyWith<$Res> {
  _$ProductMetaEntityCopyWithImpl(this._self, this._then);

  final ProductMetaEntity _self;
  final $Res Function(ProductMetaEntity) _then;

/// Create a copy of ProductMetaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(ProductMetaEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductMetaEntity].
extension ProductMetaEntityPatterns on ProductMetaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductMetaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductMetaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductMetaEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductMetaEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductMetaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductMetaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductMetaEntity() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image)  $default,) {final _that = this;
switch (_that) {
case _ProductMetaEntity():
return $default(_that.id,_that.name,_that.image);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image)?  $default,) {final _that = this;
switch (_that) {
case _ProductMetaEntity() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _ProductMetaEntity implements ProductMetaEntity {
  const _ProductMetaEntity({required this.id, required this.name, required this.image});
  

@override final  int id;
@override final  String name;
@override final  String image;

/// Create a copy of ProductMetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductMetaEntityCopyWith<_ProductMetaEntity> get copyWith => __$ProductMetaEntityCopyWithImpl<_ProductMetaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductMetaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,image);
}

@override
String toString() {
    return 'ProductMetaEntity(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$ProductMetaEntityCopyWith<$Res> implements $ProductMetaEntityCopyWith<$Res> {
  factory _$ProductMetaEntityCopyWith(_ProductMetaEntity value, $Res Function(_ProductMetaEntity) _then) = __$ProductMetaEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image
});




}
/// @nodoc
class __$ProductMetaEntityCopyWithImpl<$Res>
    implements _$ProductMetaEntityCopyWith<$Res> {
  __$ProductMetaEntityCopyWithImpl(this._self, this._then);

  final _ProductMetaEntity _self;
  final $Res Function(_ProductMetaEntity) _then;

/// Create a copy of ProductMetaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(_ProductMetaEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProductDetailEntity {

 int get id; String get name; String get image; String get price; String get description; List<ProductSpecificationEntity> get specifications; List<ProductDetailImageEntity> get images; ProductMetaEntity? get subCategory; ProductMetaEntity? get brand; List<ProductDetailReviewEntity> get reviews; List<int> get offerPercentages; bool get isFavorite; ServiceProviderEntity? get provider;
/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailEntityCopyWith<ProductDetailEntity> get copyWith => _$ProductDetailEntityCopyWithImpl<ProductDetailEntity>(this as ProductDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductDetailEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.specifications, _this.specifications)&&const DeepCollectionEquality().equals(other.images, _this.images)&&(identical(other.subCategory, _this.subCategory) || other.subCategory == _this.subCategory)&&(identical(other.brand, _this.brand) || other.brand == _this.brand)&&const DeepCollectionEquality().equals(other.reviews, _this.reviews)&&const DeepCollectionEquality().equals(other.offerPercentages, _this.offerPercentages)&&(identical(other.isFavorite, _this.isFavorite) || other.isFavorite == _this.isFavorite)&&(identical(other.provider, _this.provider) || other.provider == _this.provider));
}


@override
int get hashCode {
  final _this = this as ProductDetailEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.image,_this.price,_this.description,const DeepCollectionEquality().hash(_this.specifications),const DeepCollectionEquality().hash(_this.images),_this.subCategory,_this.brand,const DeepCollectionEquality().hash(_this.reviews),const DeepCollectionEquality().hash(_this.offerPercentages),_this.isFavorite,_this.provider);
}

@override
String toString() {
  final _this = this as ProductDetailEntity;
  return 'ProductDetailEntity(id: ${_this.id}, name: ${_this.name}, image: ${_this.image}, price: ${_this.price}, description: ${_this.description}, specifications: ${_this.specifications}, images: ${_this.images}, subCategory: ${_this.subCategory}, brand: ${_this.brand}, reviews: ${_this.reviews}, offerPercentages: ${_this.offerPercentages}, isFavorite: ${_this.isFavorite}, provider: ${_this.provider})';
}


}

/// @nodoc
abstract mixin class $ProductDetailEntityCopyWith<$Res>  {
  factory $ProductDetailEntityCopyWith(ProductDetailEntity value, $Res Function(ProductDetailEntity) _then) = _$ProductDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image, String price, String description, List<ProductSpecificationEntity> specifications, List<ProductDetailImageEntity> images, ProductMetaEntity? subCategory, ProductMetaEntity? brand, List<ProductDetailReviewEntity> reviews, List<int> offerPercentages, bool isFavorite, ServiceProviderEntity? provider
});


$ProductMetaEntityCopyWith<$Res>? get subCategory;$ProductMetaEntityCopyWith<$Res>? get brand;$ServiceProviderEntityCopyWith<$Res>? get provider;

}
/// @nodoc
class _$ProductDetailEntityCopyWithImpl<$Res>
    implements $ProductDetailEntityCopyWith<$Res> {
  _$ProductDetailEntityCopyWithImpl(this._self, this._then);

  final ProductDetailEntity _self;
  final $Res Function(ProductDetailEntity) _then;

/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? price = null,Object? description = null,Object? specifications = null,Object? images = null,Object? subCategory = freezed,Object? brand = freezed,Object? reviews = null,Object? offerPercentages = null,Object? isFavorite = null,Object? provider = freezed,}) {
  return _then(ProductDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,specifications: null == specifications ? _self.specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<ProductSpecificationEntity>,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ProductDetailImageEntity>,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as ProductMetaEntity?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as ProductMetaEntity?,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ProductDetailReviewEntity>,offerPercentages: null == offerPercentages ? _self.offerPercentages : offerPercentages // ignore: cast_nullable_to_non_nullable
as List<int>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ServiceProviderEntity?,
  ));
}
/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductMetaEntityCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $ProductMetaEntityCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductMetaEntityCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $ProductMetaEntityCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceProviderEntityCopyWith<$Res>? get provider {
    if (_self.provider == null) {
    return null;
  }

  return $ServiceProviderEntityCopyWith<$Res>(_self.provider!, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailEntity].
extension ProductDetailEntityPatterns on ProductDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image,  String price,  String description,  List<ProductSpecificationEntity> specifications,  List<ProductDetailImageEntity> images,  ProductMetaEntity? subCategory,  ProductMetaEntity? brand,  List<ProductDetailReviewEntity> reviews,  List<int> offerPercentages,  bool isFavorite,  ServiceProviderEntity? provider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailEntity() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.price,_that.description,_that.specifications,_that.images,_that.subCategory,_that.brand,_that.reviews,_that.offerPercentages,_that.isFavorite,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image,  String price,  String description,  List<ProductSpecificationEntity> specifications,  List<ProductDetailImageEntity> images,  ProductMetaEntity? subCategory,  ProductMetaEntity? brand,  List<ProductDetailReviewEntity> reviews,  List<int> offerPercentages,  bool isFavorite,  ServiceProviderEntity? provider)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailEntity():
return $default(_that.id,_that.name,_that.image,_that.price,_that.description,_that.specifications,_that.images,_that.subCategory,_that.brand,_that.reviews,_that.offerPercentages,_that.isFavorite,_that.provider);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image,  String price,  String description,  List<ProductSpecificationEntity> specifications,  List<ProductDetailImageEntity> images,  ProductMetaEntity? subCategory,  ProductMetaEntity? brand,  List<ProductDetailReviewEntity> reviews,  List<int> offerPercentages,  bool isFavorite,  ServiceProviderEntity? provider)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailEntity() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.price,_that.description,_that.specifications,_that.images,_that.subCategory,_that.brand,_that.reviews,_that.offerPercentages,_that.isFavorite,_that.provider);case _:
  return null;

}
}

}

/// @nodoc


class _ProductDetailEntity extends ProductDetailEntity {
  const _ProductDetailEntity({required this.id, required this.name, required this.image, required this.price, required this.description, required  List<ProductSpecificationEntity> specifications, required  List<ProductDetailImageEntity> images, required this.subCategory, required this.brand, required  List<ProductDetailReviewEntity> reviews, required  List<int> offerPercentages, required this.isFavorite, required this.provider}): _specifications = specifications,_images = images,_reviews = reviews,_offerPercentages = offerPercentages,super._();
  

@override final  int id;
@override final  String name;
@override final  String image;
@override final  String price;
@override final  String description;
 final  List<ProductSpecificationEntity> _specifications;
@override List<ProductSpecificationEntity> get specifications {
  if (_specifications is EqualUnmodifiableListView) return _specifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specifications);
}

 final  List<ProductDetailImageEntity> _images;
@override List<ProductDetailImageEntity> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  ProductMetaEntity? subCategory;
@override final  ProductMetaEntity? brand;
 final  List<ProductDetailReviewEntity> _reviews;
@override List<ProductDetailReviewEntity> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

 final  List<int> _offerPercentages;
@override List<int> get offerPercentages {
  if (_offerPercentages is EqualUnmodifiableListView) return _offerPercentages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_offerPercentages);
}

@override final  bool isFavorite;
@override final  ServiceProviderEntity? provider;

/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailEntityCopyWith<_ProductDetailEntity> get copyWith => __$ProductDetailEntityCopyWithImpl<_ProductDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.specifications, _specifications)&&const DeepCollectionEquality().equals(other.images, _images)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.brand, brand) || other.brand == brand)&&const DeepCollectionEquality().equals(other.reviews, _reviews)&&const DeepCollectionEquality().equals(other.offerPercentages, _offerPercentages)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,image,price,description,const DeepCollectionEquality().hash(_specifications),const DeepCollectionEquality().hash(_images),subCategory,brand,const DeepCollectionEquality().hash(_reviews),const DeepCollectionEquality().hash(_offerPercentages),isFavorite,provider);
}

@override
String toString() {
    return 'ProductDetailEntity(id: $id, name: $name, image: $image, price: $price, description: $description, specifications: $specifications, images: $images, subCategory: $subCategory, brand: $brand, reviews: $reviews, offerPercentages: $offerPercentages, isFavorite: $isFavorite, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailEntityCopyWith<$Res> implements $ProductDetailEntityCopyWith<$Res> {
  factory _$ProductDetailEntityCopyWith(_ProductDetailEntity value, $Res Function(_ProductDetailEntity) _then) = __$ProductDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image, String price, String description, List<ProductSpecificationEntity> specifications, List<ProductDetailImageEntity> images, ProductMetaEntity? subCategory, ProductMetaEntity? brand, List<ProductDetailReviewEntity> reviews, List<int> offerPercentages, bool isFavorite, ServiceProviderEntity? provider
});


@override $ProductMetaEntityCopyWith<$Res>? get subCategory;@override $ProductMetaEntityCopyWith<$Res>? get brand;@override $ServiceProviderEntityCopyWith<$Res>? get provider;

}
/// @nodoc
class __$ProductDetailEntityCopyWithImpl<$Res>
    implements _$ProductDetailEntityCopyWith<$Res> {
  __$ProductDetailEntityCopyWithImpl(this._self, this._then);

  final _ProductDetailEntity _self;
  final $Res Function(_ProductDetailEntity) _then;

/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? price = null,Object? description = null,Object? specifications = null,Object? images = null,Object? subCategory = freezed,Object? brand = freezed,Object? reviews = null,Object? offerPercentages = null,Object? isFavorite = null,Object? provider = freezed,}) {
  return _then(_ProductDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,specifications: null == specifications ? _self._specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<ProductSpecificationEntity>,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ProductDetailImageEntity>,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as ProductMetaEntity?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as ProductMetaEntity?,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ProductDetailReviewEntity>,offerPercentages: null == offerPercentages ? _self._offerPercentages : offerPercentages // ignore: cast_nullable_to_non_nullable
as List<int>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ServiceProviderEntity?,
  ));
}

/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductMetaEntityCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $ProductMetaEntityCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductMetaEntityCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $ProductMetaEntityCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of ProductDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceProviderEntityCopyWith<$Res>? get provider {
    if (_self.provider == null) {
    return null;
  }

  return $ServiceProviderEntityCopyWith<$Res>(_self.provider!, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}

// dart format on
