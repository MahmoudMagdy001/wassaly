// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_service_review_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateServiceReviewParams {

 int get reviewId; int get rating; String get comment;
/// Create a copy of UpdateServiceReviewParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateServiceReviewParamsCopyWith<UpdateServiceReviewParams> get copyWith => _$UpdateServiceReviewParamsCopyWithImpl<UpdateServiceReviewParams>(this as UpdateServiceReviewParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateServiceReviewParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateServiceReviewParams&&(identical(other.reviewId, _this.reviewId) || other.reviewId == _this.reviewId)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment));
}


@override
int get hashCode {
  final _this = this as UpdateServiceReviewParams;
  return Object.hash(runtimeType,_this.reviewId,_this.rating,_this.comment);
}

@override
String toString() {
  final _this = this as UpdateServiceReviewParams;
  return 'UpdateServiceReviewParams(reviewId: ${_this.reviewId}, rating: ${_this.rating}, comment: ${_this.comment})';
}


}

/// @nodoc
abstract mixin class $UpdateServiceReviewParamsCopyWith<$Res>  {
  factory $UpdateServiceReviewParamsCopyWith(UpdateServiceReviewParams value, $Res Function(UpdateServiceReviewParams) _then) = _$UpdateServiceReviewParamsCopyWithImpl;
@useResult
$Res call({
 int reviewId, int rating, String comment
});




}
/// @nodoc
class _$UpdateServiceReviewParamsCopyWithImpl<$Res>
    implements $UpdateServiceReviewParamsCopyWith<$Res> {
  _$UpdateServiceReviewParamsCopyWithImpl(this._self, this._then);

  final UpdateServiceReviewParams _self;
  final $Res Function(UpdateServiceReviewParams) _then;

/// Create a copy of UpdateServiceReviewParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewId = null,Object? rating = null,Object? comment = null,}) {
  return _then(UpdateServiceReviewParams(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateServiceReviewParams].
extension UpdateServiceReviewParamsPatterns on UpdateServiceReviewParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateServiceReviewParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateServiceReviewParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateServiceReviewParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateServiceReviewParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateServiceReviewParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateServiceReviewParams() when $default != null:
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
case _UpdateServiceReviewParams() when $default != null:
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
case _UpdateServiceReviewParams():
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
case _UpdateServiceReviewParams() when $default != null:
return $default(_that.reviewId,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateServiceReviewParams implements UpdateServiceReviewParams {
  const _UpdateServiceReviewParams({required this.reviewId, required this.rating, required this.comment});
  

@override final  int reviewId;
@override final  int rating;
@override final  String comment;

/// Create a copy of UpdateServiceReviewParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateServiceReviewParamsCopyWith<_UpdateServiceReviewParams> get copyWith => __$UpdateServiceReviewParamsCopyWithImpl<_UpdateServiceReviewParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateServiceReviewParams&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reviewId,rating,comment);
}

@override
String toString() {
    return 'UpdateServiceReviewParams(reviewId: $reviewId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$UpdateServiceReviewParamsCopyWith<$Res> implements $UpdateServiceReviewParamsCopyWith<$Res> {
  factory _$UpdateServiceReviewParamsCopyWith(_UpdateServiceReviewParams value, $Res Function(_UpdateServiceReviewParams) _then) = __$UpdateServiceReviewParamsCopyWithImpl;
@override @useResult
$Res call({
 int reviewId, int rating, String comment
});




}
/// @nodoc
class __$UpdateServiceReviewParamsCopyWithImpl<$Res>
    implements _$UpdateServiceReviewParamsCopyWith<$Res> {
  __$UpdateServiceReviewParamsCopyWithImpl(this._self, this._then);

  final _UpdateServiceReviewParams _self;
  final $Res Function(_UpdateServiceReviewParams) _then;

/// Create a copy of UpdateServiceReviewParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewId = null,Object? rating = null,Object? comment = null,}) {
  return _then(_UpdateServiceReviewParams(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
