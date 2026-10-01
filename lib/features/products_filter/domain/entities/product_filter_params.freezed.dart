// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_filter_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductFilterParams {

 int? get categoryId; double? get minPrice; double? get maxPrice; bool? get specialOffers; List<int>? get ratings; String? get sort;
/// Create a copy of ProductFilterParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterParamsCopyWith<ProductFilterParams> get copyWith => _$ProductFilterParamsCopyWithImpl<ProductFilterParams>(this as ProductFilterParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductFilterParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterParams&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.minPrice, _this.minPrice) || other.minPrice == _this.minPrice)&&(identical(other.maxPrice, _this.maxPrice) || other.maxPrice == _this.maxPrice)&&(identical(other.specialOffers, _this.specialOffers) || other.specialOffers == _this.specialOffers)&&const DeepCollectionEquality().equals(other.ratings, _this.ratings)&&(identical(other.sort, _this.sort) || other.sort == _this.sort));
}


@override
int get hashCode {
  final _this = this as ProductFilterParams;
  return Object.hash(runtimeType,_this.categoryId,_this.minPrice,_this.maxPrice,_this.specialOffers,const DeepCollectionEquality().hash(_this.ratings),_this.sort);
}

@override
String toString() {
  final _this = this as ProductFilterParams;
  return 'ProductFilterParams(categoryId: ${_this.categoryId}, minPrice: ${_this.minPrice}, maxPrice: ${_this.maxPrice}, specialOffers: ${_this.specialOffers}, ratings: ${_this.ratings}, sort: ${_this.sort})';
}


}

/// @nodoc
abstract mixin class $ProductFilterParamsCopyWith<$Res>  {
  factory $ProductFilterParamsCopyWith(ProductFilterParams value, $Res Function(ProductFilterParams) _then) = _$ProductFilterParamsCopyWithImpl;
@useResult
$Res call({
 int? categoryId, double? minPrice, double? maxPrice, bool? specialOffers, List<int>? ratings, String? sort
});




}
/// @nodoc
class _$ProductFilterParamsCopyWithImpl<$Res>
    implements $ProductFilterParamsCopyWith<$Res> {
  _$ProductFilterParamsCopyWithImpl(this._self, this._then);

  final ProductFilterParams _self;
  final $Res Function(ProductFilterParams) _then;

/// Create a copy of ProductFilterParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? specialOffers = freezed,Object? ratings = freezed,Object? sort = freezed,}) {
  return _then(ProductFilterParams(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,specialOffers: freezed == specialOffers ? _self.specialOffers : specialOffers // ignore: cast_nullable_to_non_nullable
as bool?,ratings: freezed == ratings ? _self.ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<int>?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterParams].
extension ProductFilterParamsPatterns on ProductFilterParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterParams value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterParams value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? categoryId,  double? minPrice,  double? maxPrice,  bool? specialOffers,  List<int>? ratings,  String? sort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterParams() when $default != null:
return $default(_that.categoryId,_that.minPrice,_that.maxPrice,_that.specialOffers,_that.ratings,_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? categoryId,  double? minPrice,  double? maxPrice,  bool? specialOffers,  List<int>? ratings,  String? sort)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterParams():
return $default(_that.categoryId,_that.minPrice,_that.maxPrice,_that.specialOffers,_that.ratings,_that.sort);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? categoryId,  double? minPrice,  double? maxPrice,  bool? specialOffers,  List<int>? ratings,  String? sort)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterParams() when $default != null:
return $default(_that.categoryId,_that.minPrice,_that.maxPrice,_that.specialOffers,_that.ratings,_that.sort);case _:
  return null;

}
}

}

/// @nodoc


class _ProductFilterParams extends ProductFilterParams {
  const _ProductFilterParams({this.categoryId, this.minPrice, this.maxPrice, this.specialOffers,  List<int>? ratings, this.sort}): _ratings = ratings,super._();
  

@override final  int? categoryId;
@override final  double? minPrice;
@override final  double? maxPrice;
@override final  bool? specialOffers;
 final  List<int>? _ratings;
@override List<int>? get ratings {
  final value = _ratings;
  if (value == null) return null;
  if (_ratings is EqualUnmodifiableListView) return _ratings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? sort;

/// Create a copy of ProductFilterParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterParamsCopyWith<_ProductFilterParams> get copyWith => __$ProductFilterParamsCopyWithImpl<_ProductFilterParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterParams&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.specialOffers, specialOffers) || other.specialOffers == specialOffers)&&const DeepCollectionEquality().equals(other.ratings, _ratings)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode {
    return Object.hash(runtimeType,categoryId,minPrice,maxPrice,specialOffers,const DeepCollectionEquality().hash(_ratings),sort);
}

@override
String toString() {
    return 'ProductFilterParams(categoryId: $categoryId, minPrice: $minPrice, maxPrice: $maxPrice, specialOffers: $specialOffers, ratings: $ratings, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterParamsCopyWith<$Res> implements $ProductFilterParamsCopyWith<$Res> {
  factory _$ProductFilterParamsCopyWith(_ProductFilterParams value, $Res Function(_ProductFilterParams) _then) = __$ProductFilterParamsCopyWithImpl;
@override @useResult
$Res call({
 int? categoryId, double? minPrice, double? maxPrice, bool? specialOffers, List<int>? ratings, String? sort
});




}
/// @nodoc
class __$ProductFilterParamsCopyWithImpl<$Res>
    implements _$ProductFilterParamsCopyWith<$Res> {
  __$ProductFilterParamsCopyWithImpl(this._self, this._then);

  final _ProductFilterParams _self;
  final $Res Function(_ProductFilterParams) _then;

/// Create a copy of ProductFilterParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? specialOffers = freezed,Object? ratings = freezed,Object? sort = freezed,}) {
  return _then(_ProductFilterParams(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,specialOffers: freezed == specialOffers ? _self.specialOffers : specialOffers // ignore: cast_nullable_to_non_nullable
as bool?,ratings: freezed == ratings ? _self._ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<int>?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
