// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_review_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateProductReviewParams {

 int get reviewId; int get rating; String get comment;
/// Create a copy of UpdateProductReviewParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProductReviewParamsCopyWith<UpdateProductReviewParams> get copyWith => _$UpdateProductReviewParamsCopyWithImpl<UpdateProductReviewParams>(this as UpdateProductReviewParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateProductReviewParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProductReviewParams&&(identical(other.reviewId, _this.reviewId) || other.reviewId == _this.reviewId)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment));
}


@override
int get hashCode {
  final _this = this as UpdateProductReviewParams;
  return Object.hash(runtimeType,_this.reviewId,_this.rating,_this.comment);
}

@override
String toString() {
  final _this = this as UpdateProductReviewParams;
  return 'UpdateProductReviewParams(reviewId: ${_this.reviewId}, rating: ${_this.rating}, comment: ${_this.comment})';
}


}

/// @nodoc
abstract mixin class $UpdateProductReviewParamsCopyWith<$Res>  {
  factory $UpdateProductReviewParamsCopyWith(UpdateProductReviewParams value, $Res Function(UpdateProductReviewParams) _then) = _$UpdateProductReviewParamsCopyWithImpl;
@useResult
$Res call({
 int reviewId, int rating, String comment
});




}
/// @nodoc
class _$UpdateProductReviewParamsCopyWithImpl<$Res>
    implements $UpdateProductReviewParamsCopyWith<$Res> {
  _$UpdateProductReviewParamsCopyWithImpl(this._self, this._then);

  final UpdateProductReviewParams _self;
  final $Res Function(UpdateProductReviewParams) _then;

/// Create a copy of UpdateProductReviewParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewId = null,Object? rating = null,Object? comment = null,}) {
  return _then(UpdateProductReviewParams(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProductReviewParams].
extension UpdateProductReviewParamsPatterns on UpdateProductReviewParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProductReviewParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProductReviewParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProductReviewParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProductReviewParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProductReviewParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProductReviewParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int reviewId,  int rating,  String comment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProductReviewParams() when $default != null:
return $default(_that.reviewId,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int reviewId,  int rating,  String comment)  $default,) {final _that = this;
switch (_that) {
case _UpdateProductReviewParams():
return $default(_that.reviewId,_that.rating,_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int reviewId,  int rating,  String comment)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProductReviewParams() when $default != null:
return $default(_that.reviewId,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateProductReviewParams implements UpdateProductReviewParams {
  const _UpdateProductReviewParams({required this.reviewId, required this.rating, required this.comment});
  

@override final  int reviewId;
@override final  int rating;
@override final  String comment;

/// Create a copy of UpdateProductReviewParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProductReviewParamsCopyWith<_UpdateProductReviewParams> get copyWith => __$UpdateProductReviewParamsCopyWithImpl<_UpdateProductReviewParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProductReviewParams&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reviewId,rating,comment);
}

@override
String toString() {
    return 'UpdateProductReviewParams(reviewId: $reviewId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$UpdateProductReviewParamsCopyWith<$Res> implements $UpdateProductReviewParamsCopyWith<$Res> {
  factory _$UpdateProductReviewParamsCopyWith(_UpdateProductReviewParams value, $Res Function(_UpdateProductReviewParams) _then) = __$UpdateProductReviewParamsCopyWithImpl;
@override @useResult
$Res call({
 int reviewId, int rating, String comment
});




}
/// @nodoc
class __$UpdateProductReviewParamsCopyWithImpl<$Res>
    implements _$UpdateProductReviewParamsCopyWith<$Res> {
  __$UpdateProductReviewParamsCopyWithImpl(this._self, this._then);

  final _UpdateProductReviewParams _self;
  final $Res Function(_UpdateProductReviewParams) _then;

/// Create a copy of UpdateProductReviewParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewId = null,Object? rating = null,Object? comment = null,}) {
  return _then(_UpdateProductReviewParams(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
