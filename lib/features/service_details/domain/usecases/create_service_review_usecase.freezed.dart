// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_service_review_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateServiceReviewParams {

 int get serviceId; int get rating; String get comment;
/// Create a copy of CreateServiceReviewParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateServiceReviewParamsCopyWith<CreateServiceReviewParams> get copyWith => _$CreateServiceReviewParamsCopyWithImpl<CreateServiceReviewParams>(this as CreateServiceReviewParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateServiceReviewParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateServiceReviewParams&&(identical(other.serviceId, _this.serviceId) || other.serviceId == _this.serviceId)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment));
}


@override
int get hashCode {
  final _this = this as CreateServiceReviewParams;
  return Object.hash(runtimeType,_this.serviceId,_this.rating,_this.comment);
}

@override
String toString() {
  final _this = this as CreateServiceReviewParams;
  return 'CreateServiceReviewParams(serviceId: ${_this.serviceId}, rating: ${_this.rating}, comment: ${_this.comment})';
}


}

/// @nodoc
abstract mixin class $CreateServiceReviewParamsCopyWith<$Res>  {
  factory $CreateServiceReviewParamsCopyWith(CreateServiceReviewParams value, $Res Function(CreateServiceReviewParams) _then) = _$CreateServiceReviewParamsCopyWithImpl;
@useResult
$Res call({
 int serviceId, int rating, String comment
});




}
/// @nodoc
class _$CreateServiceReviewParamsCopyWithImpl<$Res>
    implements $CreateServiceReviewParamsCopyWith<$Res> {
  _$CreateServiceReviewParamsCopyWithImpl(this._self, this._then);

  final CreateServiceReviewParams _self;
  final $Res Function(CreateServiceReviewParams) _then;

/// Create a copy of CreateServiceReviewParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceId = null,Object? rating = null,Object? comment = null,}) {
  return _then(CreateServiceReviewParams(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateServiceReviewParams].
extension CreateServiceReviewParamsPatterns on CreateServiceReviewParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateServiceReviewParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateServiceReviewParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateServiceReviewParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateServiceReviewParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateServiceReviewParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateServiceReviewParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int serviceId,  int rating,  String comment)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateServiceReviewParams() when $default != null:
return $default(_that.serviceId,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int serviceId,  int rating,  String comment)  $default,) {final _that = this;
switch (_that) {
case _CreateServiceReviewParams():
return $default(_that.serviceId,_that.rating,_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int serviceId,  int rating,  String comment)?  $default,) {final _that = this;
switch (_that) {
case _CreateServiceReviewParams() when $default != null:
return $default(_that.serviceId,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class _CreateServiceReviewParams implements CreateServiceReviewParams {
  const _CreateServiceReviewParams({required this.serviceId, required this.rating, required this.comment});
  

@override final  int serviceId;
@override final  int rating;
@override final  String comment;

/// Create a copy of CreateServiceReviewParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateServiceReviewParamsCopyWith<_CreateServiceReviewParams> get copyWith => __$CreateServiceReviewParamsCopyWithImpl<_CreateServiceReviewParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateServiceReviewParams&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,serviceId,rating,comment);
}

@override
String toString() {
    return 'CreateServiceReviewParams(serviceId: $serviceId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$CreateServiceReviewParamsCopyWith<$Res> implements $CreateServiceReviewParamsCopyWith<$Res> {
  factory _$CreateServiceReviewParamsCopyWith(_CreateServiceReviewParams value, $Res Function(_CreateServiceReviewParams) _then) = __$CreateServiceReviewParamsCopyWithImpl;
@override @useResult
$Res call({
 int serviceId, int rating, String comment
});




}
/// @nodoc
class __$CreateServiceReviewParamsCopyWithImpl<$Res>
    implements _$CreateServiceReviewParamsCopyWith<$Res> {
  __$CreateServiceReviewParamsCopyWithImpl(this._self, this._then);

  final _CreateServiceReviewParams _self;
  final $Res Function(_CreateServiceReviewParams) _then;

/// Create a copy of CreateServiceReviewParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? rating = null,Object? comment = null,}) {
  return _then(_CreateServiceReviewParams(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
