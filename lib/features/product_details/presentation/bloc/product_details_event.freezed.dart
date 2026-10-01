// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductDetailsEvent {

 int get productId;
/// Create a copy of ProductDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailsEventCopyWith<ProductDetailsEvent> get copyWith => _$ProductDetailsEventCopyWithImpl<ProductDetailsEvent>(this as ProductDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductDetailsEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailsEvent&&(identical(other.productId, _this.productId) || other.productId == _this.productId));
}


@override
int get hashCode {
  final _this = this as ProductDetailsEvent;
  return Object.hash(runtimeType,_this.productId);
}

@override
String toString() {
  final _this = this as ProductDetailsEvent;
  return 'ProductDetailsEvent(productId: ${_this.productId})';
}


}

/// @nodoc
abstract mixin class $ProductDetailsEventCopyWith<$Res>  {
  factory $ProductDetailsEventCopyWith(ProductDetailsEvent value, $Res Function(ProductDetailsEvent) _then) = _$ProductDetailsEventCopyWithImpl;
@useResult
$Res call({
 int productId
});




}
/// @nodoc
class _$ProductDetailsEventCopyWithImpl<$Res>
    implements $ProductDetailsEventCopyWith<$Res> {
  _$ProductDetailsEventCopyWithImpl(this._self, this._then);

  final ProductDetailsEvent _self;
  final $Res Function(ProductDetailsEvent) _then;

/// Create a copy of ProductDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductDetailsEvent].
extension ProductDetailsEventPatterns on ProductDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchProductDetailsEvent value)?  fetchProductDetails,TResult Function( CreateProductReviewEvent value)?  createProductReview,TResult Function( UpdateProductReviewEvent value)?  updateProductReview,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchProductDetailsEvent() when fetchProductDetails != null:
return fetchProductDetails(_that);case CreateProductReviewEvent() when createProductReview != null:
return createProductReview(_that);case UpdateProductReviewEvent() when updateProductReview != null:
return updateProductReview(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchProductDetailsEvent value)  fetchProductDetails,required TResult Function( CreateProductReviewEvent value)  createProductReview,required TResult Function( UpdateProductReviewEvent value)  updateProductReview,}){
final _that = this;
switch (_that) {
case FetchProductDetailsEvent():
return fetchProductDetails(_that);case CreateProductReviewEvent():
return createProductReview(_that);case UpdateProductReviewEvent():
return updateProductReview(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchProductDetailsEvent value)?  fetchProductDetails,TResult? Function( CreateProductReviewEvent value)?  createProductReview,TResult? Function( UpdateProductReviewEvent value)?  updateProductReview,}){
final _that = this;
switch (_that) {
case FetchProductDetailsEvent() when fetchProductDetails != null:
return fetchProductDetails(_that);case CreateProductReviewEvent() when createProductReview != null:
return createProductReview(_that);case UpdateProductReviewEvent() when updateProductReview != null:
return updateProductReview(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int productId)?  fetchProductDetails,TResult Function( int productId,  int rating,  String comment)?  createProductReview,TResult Function( int productId,  int reviewId,  int rating,  String comment)?  updateProductReview,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchProductDetailsEvent() when fetchProductDetails != null:
return fetchProductDetails(_that.productId);case CreateProductReviewEvent() when createProductReview != null:
return createProductReview(_that.productId,_that.rating,_that.comment);case UpdateProductReviewEvent() when updateProductReview != null:
return updateProductReview(_that.productId,_that.reviewId,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int productId)  fetchProductDetails,required TResult Function( int productId,  int rating,  String comment)  createProductReview,required TResult Function( int productId,  int reviewId,  int rating,  String comment)  updateProductReview,}) {final _that = this;
switch (_that) {
case FetchProductDetailsEvent():
return fetchProductDetails(_that.productId);case CreateProductReviewEvent():
return createProductReview(_that.productId,_that.rating,_that.comment);case UpdateProductReviewEvent():
return updateProductReview(_that.productId,_that.reviewId,_that.rating,_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int productId)?  fetchProductDetails,TResult? Function( int productId,  int rating,  String comment)?  createProductReview,TResult? Function( int productId,  int reviewId,  int rating,  String comment)?  updateProductReview,}) {final _that = this;
switch (_that) {
case FetchProductDetailsEvent() when fetchProductDetails != null:
return fetchProductDetails(_that.productId);case CreateProductReviewEvent() when createProductReview != null:
return createProductReview(_that.productId,_that.rating,_that.comment);case UpdateProductReviewEvent() when updateProductReview != null:
return updateProductReview(_that.productId,_that.reviewId,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class FetchProductDetailsEvent implements ProductDetailsEvent {
  const FetchProductDetailsEvent(this.productId);
  

@override final  int productId;

/// Create a copy of ProductDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchProductDetailsEventCopyWith<FetchProductDetailsEvent> get copyWith => _$FetchProductDetailsEventCopyWithImpl<FetchProductDetailsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchProductDetailsEvent&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,productId);
}

@override
String toString() {
    return 'ProductDetailsEvent.fetchProductDetails(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $FetchProductDetailsEventCopyWith<$Res> implements $ProductDetailsEventCopyWith<$Res> {
  factory $FetchProductDetailsEventCopyWith(FetchProductDetailsEvent value, $Res Function(FetchProductDetailsEvent) _then) = _$FetchProductDetailsEventCopyWithImpl;
@override @useResult
$Res call({
 int productId
});




}
/// @nodoc
class _$FetchProductDetailsEventCopyWithImpl<$Res>
    implements $FetchProductDetailsEventCopyWith<$Res> {
  _$FetchProductDetailsEventCopyWithImpl(this._self, this._then);

  final FetchProductDetailsEvent _self;
  final $Res Function(FetchProductDetailsEvent) _then;

/// Create a copy of ProductDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(FetchProductDetailsEvent(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateProductReviewEvent implements ProductDetailsEvent {
  const CreateProductReviewEvent({required this.productId, required this.rating, required this.comment});
  

@override final  int productId;
 final  int rating;
 final  String comment;

/// Create a copy of ProductDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProductReviewEventCopyWith<CreateProductReviewEvent> get copyWith => _$CreateProductReviewEventCopyWithImpl<CreateProductReviewEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductReviewEvent&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,productId,rating,comment);
}

@override
String toString() {
    return 'ProductDetailsEvent.createProductReview(productId: $productId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $CreateProductReviewEventCopyWith<$Res> implements $ProductDetailsEventCopyWith<$Res> {
  factory $CreateProductReviewEventCopyWith(CreateProductReviewEvent value, $Res Function(CreateProductReviewEvent) _then) = _$CreateProductReviewEventCopyWithImpl;
@override @useResult
$Res call({
 int productId, int rating, String comment
});




}
/// @nodoc
class _$CreateProductReviewEventCopyWithImpl<$Res>
    implements $CreateProductReviewEventCopyWith<$Res> {
  _$CreateProductReviewEventCopyWithImpl(this._self, this._then);

  final CreateProductReviewEvent _self;
  final $Res Function(CreateProductReviewEvent) _then;

/// Create a copy of ProductDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? rating = null,Object? comment = null,}) {
  return _then(CreateProductReviewEvent(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateProductReviewEvent implements ProductDetailsEvent {
  const UpdateProductReviewEvent({required this.productId, required this.reviewId, required this.rating, required this.comment});
  

@override final  int productId;
 final  int reviewId;
 final  int rating;
 final  String comment;

/// Create a copy of ProductDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProductReviewEventCopyWith<UpdateProductReviewEvent> get copyWith => _$UpdateProductReviewEventCopyWithImpl<UpdateProductReviewEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProductReviewEvent&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,productId,reviewId,rating,comment);
}

@override
String toString() {
    return 'ProductDetailsEvent.updateProductReview(productId: $productId, reviewId: $reviewId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $UpdateProductReviewEventCopyWith<$Res> implements $ProductDetailsEventCopyWith<$Res> {
  factory $UpdateProductReviewEventCopyWith(UpdateProductReviewEvent value, $Res Function(UpdateProductReviewEvent) _then) = _$UpdateProductReviewEventCopyWithImpl;
@override @useResult
$Res call({
 int productId, int reviewId, int rating, String comment
});




}
/// @nodoc
class _$UpdateProductReviewEventCopyWithImpl<$Res>
    implements $UpdateProductReviewEventCopyWith<$Res> {
  _$UpdateProductReviewEventCopyWithImpl(this._self, this._then);

  final UpdateProductReviewEvent _self;
  final $Res Function(UpdateProductReviewEvent) _then;

/// Create a copy of ProductDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? reviewId = null,Object? rating = null,Object? comment = null,}) {
  return _then(UpdateProductReviewEvent(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
