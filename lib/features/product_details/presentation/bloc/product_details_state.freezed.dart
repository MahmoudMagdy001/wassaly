// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductDetailsState {

 ProductDetailsStatus get status; RelatedProductsStatus get relatedProductsStatus; ReviewActionStatus get reviewActionStatus; ProductDetailEntity? get product; List<ProductEntity> get relatedProducts; String get errorMessage; String get reviewActionMessage;
/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailsStateCopyWith<ProductDetailsState> get copyWith => _$ProductDetailsStateCopyWithImpl<ProductDetailsState>(this as ProductDetailsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductDetailsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailsState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.relatedProductsStatus, _this.relatedProductsStatus) || other.relatedProductsStatus == _this.relatedProductsStatus)&&(identical(other.reviewActionStatus, _this.reviewActionStatus) || other.reviewActionStatus == _this.reviewActionStatus)&&(identical(other.product, _this.product) || other.product == _this.product)&&const DeepCollectionEquality().equals(other.relatedProducts, _this.relatedProducts)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.reviewActionMessage, _this.reviewActionMessage) || other.reviewActionMessage == _this.reviewActionMessage));
}


@override
int get hashCode {
  final _this = this as ProductDetailsState;
  return Object.hash(runtimeType,_this.status,_this.relatedProductsStatus,_this.reviewActionStatus,_this.product,const DeepCollectionEquality().hash(_this.relatedProducts),_this.errorMessage,_this.reviewActionMessage);
}

@override
String toString() {
  final _this = this as ProductDetailsState;
  return 'ProductDetailsState(status: ${_this.status}, relatedProductsStatus: ${_this.relatedProductsStatus}, reviewActionStatus: ${_this.reviewActionStatus}, product: ${_this.product}, relatedProducts: ${_this.relatedProducts}, errorMessage: ${_this.errorMessage}, reviewActionMessage: ${_this.reviewActionMessage})';
}


}

/// @nodoc
abstract mixin class $ProductDetailsStateCopyWith<$Res>  {
  factory $ProductDetailsStateCopyWith(ProductDetailsState value, $Res Function(ProductDetailsState) _then) = _$ProductDetailsStateCopyWithImpl;
@useResult
$Res call({
 ProductDetailsStatus status, RelatedProductsStatus relatedProductsStatus, ReviewActionStatus reviewActionStatus, ProductDetailEntity? product, List<ProductEntity> relatedProducts, String errorMessage, String reviewActionMessage
});


$ProductDetailEntityCopyWith<$Res>? get product;

}
/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._self, this._then);

  final ProductDetailsState _self;
  final $Res Function(ProductDetailsState) _then;

/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? relatedProductsStatus = null,Object? reviewActionStatus = null,Object? product = freezed,Object? relatedProducts = null,Object? errorMessage = null,Object? reviewActionMessage = null,}) {
  return _then(ProductDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductDetailsStatus,relatedProductsStatus: null == relatedProductsStatus ? _self.relatedProductsStatus : relatedProductsStatus // ignore: cast_nullable_to_non_nullable
as RelatedProductsStatus,reviewActionStatus: null == reviewActionStatus ? _self.reviewActionStatus : reviewActionStatus // ignore: cast_nullable_to_non_nullable
as ReviewActionStatus,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductDetailEntity?,relatedProducts: null == relatedProducts ? _self.relatedProducts : relatedProducts // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,reviewActionMessage: null == reviewActionMessage ? _self.reviewActionMessage : reviewActionMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailEntityCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductDetailEntityCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailsState].
extension ProductDetailsStatePatterns on ProductDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductDetailsStatus status,  RelatedProductsStatus relatedProductsStatus,  ReviewActionStatus reviewActionStatus,  ProductDetailEntity? product,  List<ProductEntity> relatedProducts,  String errorMessage,  String reviewActionMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailsState() when $default != null:
return $default(_that.status,_that.relatedProductsStatus,_that.reviewActionStatus,_that.product,_that.relatedProducts,_that.errorMessage,_that.reviewActionMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductDetailsStatus status,  RelatedProductsStatus relatedProductsStatus,  ReviewActionStatus reviewActionStatus,  ProductDetailEntity? product,  List<ProductEntity> relatedProducts,  String errorMessage,  String reviewActionMessage)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsState():
return $default(_that.status,_that.relatedProductsStatus,_that.reviewActionStatus,_that.product,_that.relatedProducts,_that.errorMessage,_that.reviewActionMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductDetailsStatus status,  RelatedProductsStatus relatedProductsStatus,  ReviewActionStatus reviewActionStatus,  ProductDetailEntity? product,  List<ProductEntity> relatedProducts,  String errorMessage,  String reviewActionMessage)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsState() when $default != null:
return $default(_that.status,_that.relatedProductsStatus,_that.reviewActionStatus,_that.product,_that.relatedProducts,_that.errorMessage,_that.reviewActionMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProductDetailsState implements ProductDetailsState {
  const _ProductDetailsState({this.status = ProductDetailsStatus.initial, this.relatedProductsStatus = RelatedProductsStatus.initial, this.reviewActionStatus = ReviewActionStatus.initial, this.product,  List<ProductEntity> relatedProducts = const [], this.errorMessage = '', this.reviewActionMessage = ''}): _relatedProducts = relatedProducts;
  

@override@JsonKey() final  ProductDetailsStatus status;
@override@JsonKey() final  RelatedProductsStatus relatedProductsStatus;
@override@JsonKey() final  ReviewActionStatus reviewActionStatus;
@override final  ProductDetailEntity? product;
 final  List<ProductEntity> _relatedProducts;
@override@JsonKey() List<ProductEntity> get relatedProducts {
  if (_relatedProducts is EqualUnmodifiableListView) return _relatedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedProducts);
}

@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  String reviewActionMessage;

/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailsStateCopyWith<_ProductDetailsState> get copyWith => __$ProductDetailsStateCopyWithImpl<_ProductDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.relatedProductsStatus, relatedProductsStatus) || other.relatedProductsStatus == relatedProductsStatus)&&(identical(other.reviewActionStatus, reviewActionStatus) || other.reviewActionStatus == reviewActionStatus)&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other.relatedProducts, _relatedProducts)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.reviewActionMessage, reviewActionMessage) || other.reviewActionMessage == reviewActionMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,relatedProductsStatus,reviewActionStatus,product,const DeepCollectionEquality().hash(_relatedProducts),errorMessage,reviewActionMessage);
}

@override
String toString() {
    return 'ProductDetailsState(status: $status, relatedProductsStatus: $relatedProductsStatus, reviewActionStatus: $reviewActionStatus, product: $product, relatedProducts: $relatedProducts, errorMessage: $errorMessage, reviewActionMessage: $reviewActionMessage)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailsStateCopyWith<$Res> implements $ProductDetailsStateCopyWith<$Res> {
  factory _$ProductDetailsStateCopyWith(_ProductDetailsState value, $Res Function(_ProductDetailsState) _then) = __$ProductDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 ProductDetailsStatus status, RelatedProductsStatus relatedProductsStatus, ReviewActionStatus reviewActionStatus, ProductDetailEntity? product, List<ProductEntity> relatedProducts, String errorMessage, String reviewActionMessage
});


@override $ProductDetailEntityCopyWith<$Res>? get product;

}
/// @nodoc
class __$ProductDetailsStateCopyWithImpl<$Res>
    implements _$ProductDetailsStateCopyWith<$Res> {
  __$ProductDetailsStateCopyWithImpl(this._self, this._then);

  final _ProductDetailsState _self;
  final $Res Function(_ProductDetailsState) _then;

/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? relatedProductsStatus = null,Object? reviewActionStatus = null,Object? product = freezed,Object? relatedProducts = null,Object? errorMessage = null,Object? reviewActionMessage = null,}) {
  return _then(_ProductDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductDetailsStatus,relatedProductsStatus: null == relatedProductsStatus ? _self.relatedProductsStatus : relatedProductsStatus // ignore: cast_nullable_to_non_nullable
as RelatedProductsStatus,reviewActionStatus: null == reviewActionStatus ? _self.reviewActionStatus : reviewActionStatus // ignore: cast_nullable_to_non_nullable
as ReviewActionStatus,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductDetailEntity?,relatedProducts: null == relatedProducts ? _self._relatedProducts : relatedProducts // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,reviewActionMessage: null == reviewActionMessage ? _self.reviewActionMessage : reviewActionMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProductDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailEntityCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductDetailEntityCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
