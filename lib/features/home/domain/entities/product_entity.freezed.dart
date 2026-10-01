// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEntity {

 int get id; String get name; String get image; String get price; String get description; List<OfferEntity> get offers; List<ReviewEntity> get reviews; bool get isFavorite;
/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<ProductEntity> get copyWith => _$ProductEntityCopyWithImpl<ProductEntity>(this as ProductEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.offers, _this.offers)&&const DeepCollectionEquality().equals(other.reviews, _this.reviews)&&(identical(other.isFavorite, _this.isFavorite) || other.isFavorite == _this.isFavorite));
}


@override
int get hashCode {
  final _this = this as ProductEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.image,_this.price,_this.description,const DeepCollectionEquality().hash(_this.offers),const DeepCollectionEquality().hash(_this.reviews),_this.isFavorite);
}

@override
String toString() {
  final _this = this as ProductEntity;
  return 'ProductEntity(id: ${_this.id}, name: ${_this.name}, image: ${_this.image}, price: ${_this.price}, description: ${_this.description}, offers: ${_this.offers}, reviews: ${_this.reviews}, isFavorite: ${_this.isFavorite})';
}


}

/// @nodoc
abstract mixin class $ProductEntityCopyWith<$Res>  {
  factory $ProductEntityCopyWith(ProductEntity value, $Res Function(ProductEntity) _then) = _$ProductEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image, String price, String description, List<OfferEntity> offers, List<ReviewEntity> reviews, bool isFavorite
});




}
/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._self, this._then);

  final ProductEntity _self;
  final $Res Function(ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? price = null,Object? description = null,Object? offers = null,Object? reviews = null,Object? isFavorite = null,}) {
  return _then(ProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,offers: null == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<OfferEntity>,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewEntity>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductEntity].
extension ProductEntityPatterns on ProductEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image,  String price,  String description,  List<OfferEntity> offers,  List<ReviewEntity> reviews,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.price,_that.description,_that.offers,_that.reviews,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image,  String price,  String description,  List<OfferEntity> offers,  List<ReviewEntity> reviews,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _ProductEntity():
return $default(_that.id,_that.name,_that.image,_that.price,_that.description,_that.offers,_that.reviews,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image,  String price,  String description,  List<OfferEntity> offers,  List<ReviewEntity> reviews,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.price,_that.description,_that.offers,_that.reviews,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _ProductEntity extends ProductEntity {
  const _ProductEntity({required this.id, required this.name, required this.image, required this.price, required this.description, required  List<OfferEntity> offers, required  List<ReviewEntity> reviews, required this.isFavorite}): _offers = offers,_reviews = reviews,super._();
  

@override final  int id;
@override final  String name;
@override final  String image;
@override final  String price;
@override final  String description;
 final  List<OfferEntity> _offers;
@override List<OfferEntity> get offers {
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_offers);
}

 final  List<ReviewEntity> _reviews;
@override List<ReviewEntity> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override final  bool isFavorite;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductEntityCopyWith<_ProductEntity> get copyWith => __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.offers, _offers)&&const DeepCollectionEquality().equals(other.reviews, _reviews)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,image,price,description,const DeepCollectionEquality().hash(_offers),const DeepCollectionEquality().hash(_reviews),isFavorite);
}

@override
String toString() {
    return 'ProductEntity(id: $id, name: $name, image: $image, price: $price, description: $description, offers: $offers, reviews: $reviews, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$ProductEntityCopyWith<$Res> implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(_ProductEntity value, $Res Function(_ProductEntity) _then) = __$ProductEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image, String price, String description, List<OfferEntity> offers, List<ReviewEntity> reviews, bool isFavorite
});




}
/// @nodoc
class __$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(this._self, this._then);

  final _ProductEntity _self;
  final $Res Function(_ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? price = null,Object? description = null,Object? offers = null,Object? reviews = null,Object? isFavorite = null,}) {
  return _then(_ProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,offers: null == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<OfferEntity>,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewEntity>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
