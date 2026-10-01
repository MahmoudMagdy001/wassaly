// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartItemEntity {

 int get id; int get productId; String get productName; String get productImage; String get price; int get quantity; String? get productDescription; List<OfferEntity>? get offers; double get unitPrice; double get totalPrice;
/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemEntityCopyWith<CartItemEntity> get copyWith => _$CartItemEntityCopyWithImpl<CartItemEntity>(this as CartItemEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CartItemEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.productName, _this.productName) || other.productName == _this.productName)&&(identical(other.productImage, _this.productImage) || other.productImage == _this.productImage)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.productDescription, _this.productDescription) || other.productDescription == _this.productDescription)&&const DeepCollectionEquality().equals(other.offers, _this.offers)&&(identical(other.unitPrice, _this.unitPrice) || other.unitPrice == _this.unitPrice)&&(identical(other.totalPrice, _this.totalPrice) || other.totalPrice == _this.totalPrice));
}


@override
int get hashCode {
  final _this = this as CartItemEntity;
  return Object.hash(runtimeType,_this.id,_this.productId,_this.productName,_this.productImage,_this.price,_this.quantity,_this.productDescription,const DeepCollectionEquality().hash(_this.offers),_this.unitPrice,_this.totalPrice);
}

@override
String toString() {
  final _this = this as CartItemEntity;
  return 'CartItemEntity(id: ${_this.id}, productId: ${_this.productId}, productName: ${_this.productName}, productImage: ${_this.productImage}, price: ${_this.price}, quantity: ${_this.quantity}, productDescription: ${_this.productDescription}, offers: ${_this.offers}, unitPrice: ${_this.unitPrice}, totalPrice: ${_this.totalPrice})';
}


}

/// @nodoc
abstract mixin class $CartItemEntityCopyWith<$Res>  {
  factory $CartItemEntityCopyWith(CartItemEntity value, $Res Function(CartItemEntity) _then) = _$CartItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, int productId, String productName, String productImage, String price, int quantity, String? productDescription, List<OfferEntity>? offers, double unitPrice, double totalPrice
});




}
/// @nodoc
class _$CartItemEntityCopyWithImpl<$Res>
    implements $CartItemEntityCopyWith<$Res> {
  _$CartItemEntityCopyWithImpl(this._self, this._then);

  final CartItemEntity _self;
  final $Res Function(CartItemEntity) _then;

/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? productImage = null,Object? price = null,Object? quantity = null,Object? productDescription = freezed,Object? offers = freezed,Object? unitPrice = null,Object? totalPrice = null,}) {
  return _then(CartItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productImage: null == productImage ? _self.productImage : productImage // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,productDescription: freezed == productDescription ? _self.productDescription : productDescription // ignore: cast_nullable_to_non_nullable
as String?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<OfferEntity>?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItemEntity].
extension CartItemEntityPatterns on CartItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _CartItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int productId,  String productName,  String productImage,  String price,  int quantity,  String? productDescription,  List<OfferEntity>? offers,  double unitPrice,  double totalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemEntity() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.productImage,_that.price,_that.quantity,_that.productDescription,_that.offers,_that.unitPrice,_that.totalPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int productId,  String productName,  String productImage,  String price,  int quantity,  String? productDescription,  List<OfferEntity>? offers,  double unitPrice,  double totalPrice)  $default,) {final _that = this;
switch (_that) {
case _CartItemEntity():
return $default(_that.id,_that.productId,_that.productName,_that.productImage,_that.price,_that.quantity,_that.productDescription,_that.offers,_that.unitPrice,_that.totalPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int productId,  String productName,  String productImage,  String price,  int quantity,  String? productDescription,  List<OfferEntity>? offers,  double unitPrice,  double totalPrice)?  $default,) {final _that = this;
switch (_that) {
case _CartItemEntity() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.productImage,_that.price,_that.quantity,_that.productDescription,_that.offers,_that.unitPrice,_that.totalPrice);case _:
  return null;

}
}

}

/// @nodoc


class _CartItemEntity implements CartItemEntity {
  const _CartItemEntity({required this.id, required this.productId, required this.productName, required this.productImage, required this.price, required this.quantity, this.productDescription,  List<OfferEntity>? offers, this.unitPrice = 0.0, this.totalPrice = 0.0}): _offers = offers;
  

@override final  int id;
@override final  int productId;
@override final  String productName;
@override final  String productImage;
@override final  String price;
@override final  int quantity;
@override final  String? productDescription;
 final  List<OfferEntity>? _offers;
@override List<OfferEntity>? get offers {
  final value = _offers;
  if (value == null) return null;
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  double unitPrice;
@override@JsonKey() final  double totalPrice;

/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemEntityCopyWith<_CartItemEntity> get copyWith => __$CartItemEntityCopyWithImpl<_CartItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productImage, productImage) || other.productImage == productImage)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.productDescription, productDescription) || other.productDescription == productDescription)&&const DeepCollectionEquality().equals(other.offers, _offers)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,productId,productName,productImage,price,quantity,productDescription,const DeepCollectionEquality().hash(_offers),unitPrice,totalPrice);
}

@override
String toString() {
    return 'CartItemEntity(id: $id, productId: $productId, productName: $productName, productImage: $productImage, price: $price, quantity: $quantity, productDescription: $productDescription, offers: $offers, unitPrice: $unitPrice, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$CartItemEntityCopyWith<$Res> implements $CartItemEntityCopyWith<$Res> {
  factory _$CartItemEntityCopyWith(_CartItemEntity value, $Res Function(_CartItemEntity) _then) = __$CartItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int productId, String productName, String productImage, String price, int quantity, String? productDescription, List<OfferEntity>? offers, double unitPrice, double totalPrice
});




}
/// @nodoc
class __$CartItemEntityCopyWithImpl<$Res>
    implements _$CartItemEntityCopyWith<$Res> {
  __$CartItemEntityCopyWithImpl(this._self, this._then);

  final _CartItemEntity _self;
  final $Res Function(_CartItemEntity) _then;

/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? productImage = null,Object? price = null,Object? quantity = null,Object? productDescription = freezed,Object? offers = freezed,Object? unitPrice = null,Object? totalPrice = null,}) {
  return _then(_CartItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productImage: null == productImage ? _self.productImage : productImage // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,productDescription: freezed == productDescription ? _self.productDescription : productDescription // ignore: cast_nullable_to_non_nullable
as String?,offers: freezed == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<OfferEntity>?,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
