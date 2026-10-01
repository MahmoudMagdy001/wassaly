// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_review_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateProductReviewParams {

 int get productId; int get rating; String get comment;
/// Create a copy of CreateProductReviewParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateProductReviewParamsCopyWith<CreateProductReviewParams> get copyWith => _$CreateProductReviewParamsCopyWithImpl<CreateProductReviewParams>(this as CreateProductReviewParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateProductReviewParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateProductReviewParams&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment));
}


@override
int get hashCode {
  final _this = this as CreateProductReviewParams;
  return Object.hash(runtimeType,_this.productId,_this.rating,_this.comment);
}

@override
String toString() {
  final _this = this as CreateProductReviewParams;
  return 'CreateProductReviewParams(productId: ${_this.productId}, rating: ${_this.rating}, comment: ${_this.comment})';
}


}

/// @nodoc
abstract mixin class $CreateProductReviewParamsCopyWith<$Res>  {
  factory $CreateProductReviewParamsCopyWith(CreateProductReviewParams value, $Res Function(CreateProductReviewParams) _then) = _$CreateProductReviewParamsCopyWithImpl;
@useResult
$Res call({
 int productId, int rating, String comment
});




}
/// @nodoc
class _$CreateProductReviewParamsCopyWithImpl<$Res>
    implements $CreateProductReviewParamsCopyWith<$Res> {
  _$CreateProductReviewParamsCopyWithImpl(this._self, this._then);

  final CreateProductReviewParams _self;
  final $Res Function(CreateProductReviewParams) _then;

/// Create a copy of CreateProductReviewParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? rating = null,Object? comment = null,}) {
  return _then(CreateProductReviewParams(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateProductReviewParams].
extension CreateProductReviewParamsPatterns on CreateProductReviewParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateProductReviewParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateProductReviewParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateProductReviewParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateProductReviewParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateProductReviewParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateProductReviewParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int productId,  int rating,  String comment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateProductReviewParams() when $default != null:
return $default(_that.productId,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int productId,  int rating,  String comment)  $default,) {final _that = this;
switch (_that) {
case _CreateProductReviewParams():
return $default(_that.productId,_that.rating,_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int productId,  int rating,  String comment)?  $default,) {final _that = this;
switch (_that) {
case _CreateProductReviewParams() when $default != null:
return $default(_that.productId,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _CreateProductReviewParams implements CreateProductReviewParams {
  const _CreateProductReviewParams({required this.productId, required this.rating, required this.comment});
  

@override final  int productId;
@override final  int rating;
@override final  String comment;

/// Create a copy of CreateProductReviewParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateProductReviewParamsCopyWith<_CreateProductReviewParams> get copyWith => __$CreateProductReviewParamsCopyWithImpl<_CreateProductReviewParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateProductReviewParams&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,productId,rating,comment);
}

@override
String toString() {
    return 'CreateProductReviewParams(productId: $productId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$CreateProductReviewParamsCopyWith<$Res> implements $CreateProductReviewParamsCopyWith<$Res> {
  factory _$CreateProductReviewParamsCopyWith(_CreateProductReviewParams value, $Res Function(_CreateProductReviewParams) _then) = __$CreateProductReviewParamsCopyWithImpl;
@override @useResult
$Res call({
 int productId, int rating, String comment
});




}
/// @nodoc
class __$CreateProductReviewParamsCopyWithImpl<$Res>
    implements _$CreateProductReviewParamsCopyWith<$Res> {
  __$CreateProductReviewParamsCopyWithImpl(this._self, this._then);

  final _CreateProductReviewParams _self;
  final $Res Function(_CreateProductReviewParams) _then;

/// Create a copy of CreateProductReviewParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? rating = null,Object? comment = null,}) {
  return _then(_CreateProductReviewParams(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
