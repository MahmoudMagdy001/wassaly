// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModel {

 int get id; String get name; String get image; String get price; String get description; List<OfferModel> get offers; List<ReviewModel> get reviews;@JsonKey(name: 'is_favorite') bool get isFavorite;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.offers, _this.offers)&&const DeepCollectionEquality().equals(other.reviews, _this.reviews)&&(identical(other.isFavorite, _this.isFavorite) || other.isFavorite == _this.isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.image,_this.price,_this.description,const DeepCollectionEquality().hash(_this.offers),const DeepCollectionEquality().hash(_this.reviews),_this.isFavorite);
}

@override
String toString() {
  final _this = this as ProductModel;
  return 'ProductModel(id: ${_this.id}, name: ${_this.name}, image: ${_this.image}, price: ${_this.price}, description: ${_this.description}, offers: ${_this.offers}, reviews: ${_this.reviews}, isFavorite: ${_this.isFavorite})';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image, String price, String description, List<OfferModel> offers, List<ReviewModel> reviews,@JsonKey(name: 'is_favorite') bool isFavorite
});




}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? price = null,Object? description = null,Object? offers = null,Object? reviews = null,Object? isFavorite = null,}) {
  return _then(ProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,offers: null == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<OfferModel>,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image,  String price,  String description,  List<OfferModel> offers,  List<ReviewModel> reviews, @JsonKey(name: 'is_favorite')  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image,  String price,  String description,  List<OfferModel> offers,  List<ReviewModel> reviews, @JsonKey(name: 'is_favorite')  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image,  String price,  String description,  List<OfferModel> offers,  List<ReviewModel> reviews, @JsonKey(name: 'is_favorite')  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.price,_that.description,_that.offers,_that.reviews,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel extends ProductModel {
  const _ProductModel({this.id = 0, this.name = '', this.image = '', this.price = '0', this.description = '',  List<OfferModel> offers = const [],  List<ReviewModel> reviews = const [], @JsonKey(name: 'is_favorite') this.isFavorite = false}): _offers = offers,_reviews = reviews,super._();
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String image;
@override@JsonKey() final  String price;
@override@JsonKey() final  String description;
 final  List<OfferModel> _offers;
@override@JsonKey() List<OfferModel> get offers {
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_offers);
}

 final  List<ReviewModel> _reviews;
@override@JsonKey() List<ReviewModel> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override@JsonKey(name: 'is_favorite') final  bool isFavorite;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.offers, _offers)&&const DeepCollectionEquality().equals(other.reviews, _reviews)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,image,price,description,const DeepCollectionEquality().hash(_offers),const DeepCollectionEquality().hash(_reviews),isFavorite);
}

@override
String toString() {
    return 'ProductModel(id: $id, name: $name, image: $image, price: $price, description: $description, offers: $offers, reviews: $reviews, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image, String price, String description, List<OfferModel> offers, List<ReviewModel> reviews,@JsonKey(name: 'is_favorite') bool isFavorite
});




}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? price = null,Object? description = null,Object? offers = null,Object? reviews = null,Object? isFavorite = null,}) {
  return _then(_ProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,offers: null == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<OfferModel>,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
