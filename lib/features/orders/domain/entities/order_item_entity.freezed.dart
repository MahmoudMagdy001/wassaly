// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderItemEntity {

 int get id; double get price; int get quantity; double get totalPrice; ProductEntity? get product;
/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemEntityCopyWith<OrderItemEntity> get copyWith => _$OrderItemEntityCopyWithImpl<OrderItemEntity>(this as OrderItemEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderItemEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.totalPrice, _this.totalPrice) || other.totalPrice == _this.totalPrice)&&(identical(other.product, _this.product) || other.product == _this.product));
}


@override
int get hashCode {
  final _this = this as OrderItemEntity;
  return Object.hash(runtimeType,_this.id,_this.price,_this.quantity,_this.totalPrice,_this.product);
}

@override
String toString() {
  final _this = this as OrderItemEntity;
  return 'OrderItemEntity(id: ${_this.id}, price: ${_this.price}, quantity: ${_this.quantity}, totalPrice: ${_this.totalPrice}, product: ${_this.product})';
}


}

/// @nodoc
abstract mixin class $OrderItemEntityCopyWith<$Res>  {
  factory $OrderItemEntityCopyWith(OrderItemEntity value, $Res Function(OrderItemEntity) _then) = _$OrderItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, double price, int quantity, double totalPrice, ProductEntity? product
});


$ProductEntityCopyWith<$Res>? get product;

}
/// @nodoc
class _$OrderItemEntityCopyWithImpl<$Res>
    implements $OrderItemEntityCopyWith<$Res> {
  _$OrderItemEntityCopyWithImpl(this._self, this._then);

  final OrderItemEntity _self;
  final $Res Function(OrderItemEntity) _then;

/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? price = null,Object? quantity = null,Object? totalPrice = null,Object? product = freezed,}) {
  return _then(OrderItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity?,
  ));
}
/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductEntityCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderItemEntity].
extension OrderItemEntityPatterns on OrderItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  double price,  int quantity,  double totalPrice,  ProductEntity? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemEntity() when $default != null:
return $default(_that.id,_that.price,_that.quantity,_that.totalPrice,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  double price,  int quantity,  double totalPrice,  ProductEntity? product)  $default,) {final _that = this;
switch (_that) {
case _OrderItemEntity():
return $default(_that.id,_that.price,_that.quantity,_that.totalPrice,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  double price,  int quantity,  double totalPrice,  ProductEntity? product)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemEntity() when $default != null:
return $default(_that.id,_that.price,_that.quantity,_that.totalPrice,_that.product);case _:
  return null;

}
}

}

/// @nodoc


class _OrderItemEntity implements OrderItemEntity {
  const _OrderItemEntity({required this.id, required this.price, required this.quantity, required this.totalPrice, this.product});
  

@override final  int id;
@override final  double price;
@override final  int quantity;
@override final  double totalPrice;
@override final  ProductEntity? product;

/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemEntityCopyWith<_OrderItemEntity> get copyWith => __$OrderItemEntityCopyWithImpl<_OrderItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,price,quantity,totalPrice,product);
}

@override
String toString() {
    return 'OrderItemEntity(id: $id, price: $price, quantity: $quantity, totalPrice: $totalPrice, product: $product)';
}


}

/// @nodoc
abstract mixin class _$OrderItemEntityCopyWith<$Res> implements $OrderItemEntityCopyWith<$Res> {
  factory _$OrderItemEntityCopyWith(_OrderItemEntity value, $Res Function(_OrderItemEntity) _then) = __$OrderItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, double price, int quantity, double totalPrice, ProductEntity? product
});


@override $ProductEntityCopyWith<$Res>? get product;

}
/// @nodoc
class __$OrderItemEntityCopyWithImpl<$Res>
    implements _$OrderItemEntityCopyWith<$Res> {
  __$OrderItemEntityCopyWithImpl(this._self, this._then);

  final _OrderItemEntity _self;
  final $Res Function(_OrderItemEntity) _then;

/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? price = null,Object? quantity = null,Object? totalPrice = null,Object? product = freezed,}) {
  return _then(_OrderItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity?,
  ));
}

/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductEntityCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
