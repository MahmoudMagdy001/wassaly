// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrandsState {

 BrandsStatus get status; List<BrandEntity> get brands; String get errorMessage; BrandProductsStatus get productsStatus; List<ProductEntity> get products; String get productsErrorMessage; int get currentPage; bool get hasReachedMax;
/// Create a copy of BrandsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandsStateCopyWith<BrandsState> get copyWith => _$BrandsStateCopyWithImpl<BrandsState>(this as BrandsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BrandsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsState&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.brands, _this.brands)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.productsStatus, _this.productsStatus) || other.productsStatus == _this.productsStatus)&&const DeepCollectionEquality().equals(other.products, _this.products)&&(identical(other.productsErrorMessage, _this.productsErrorMessage) || other.productsErrorMessage == _this.productsErrorMessage)&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.hasReachedMax, _this.hasReachedMax) || other.hasReachedMax == _this.hasReachedMax));
}


@override
int get hashCode {
  final _this = this as BrandsState;
  return Object.hash(runtimeType,_this.status,const DeepCollectionEquality().hash(_this.brands),_this.errorMessage,_this.productsStatus,const DeepCollectionEquality().hash(_this.products),_this.productsErrorMessage,_this.currentPage,_this.hasReachedMax);
}

@override
String toString() {
  final _this = this as BrandsState;
  return 'BrandsState(status: ${_this.status}, brands: ${_this.brands}, errorMessage: ${_this.errorMessage}, productsStatus: ${_this.productsStatus}, products: ${_this.products}, productsErrorMessage: ${_this.productsErrorMessage}, currentPage: ${_this.currentPage}, hasReachedMax: ${_this.hasReachedMax})';
}


}

/// @nodoc
abstract mixin class $BrandsStateCopyWith<$Res>  {
  factory $BrandsStateCopyWith(BrandsState value, $Res Function(BrandsState) _then) = _$BrandsStateCopyWithImpl;
@useResult
$Res call({
 BrandsStatus status, List<BrandEntity> brands, String errorMessage, BrandProductsStatus productsStatus, List<ProductEntity> products, String productsErrorMessage, int currentPage, bool hasReachedMax
});




}
/// @nodoc
class _$BrandsStateCopyWithImpl<$Res>
    implements $BrandsStateCopyWith<$Res> {
  _$BrandsStateCopyWithImpl(this._self, this._then);

  final BrandsState _self;
  final $Res Function(BrandsState) _then;

/// Create a copy of BrandsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? brands = null,Object? errorMessage = null,Object? productsStatus = null,Object? products = null,Object? productsErrorMessage = null,Object? currentPage = null,Object? hasReachedMax = null,}) {
  return _then(BrandsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BrandsStatus,brands: null == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,productsStatus: null == productsStatus ? _self.productsStatus : productsStatus // ignore: cast_nullable_to_non_nullable
as BrandProductsStatus,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,productsErrorMessage: null == productsErrorMessage ? _self.productsErrorMessage : productsErrorMessage // ignore: cast_nullable_to_non_nullable
as String,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandsState].
extension BrandsStatePatterns on BrandsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandsState value)  $default,){
final _that = this;
switch (_that) {
case _BrandsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandsState value)?  $default,){
final _that = this;
switch (_that) {
case _BrandsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BrandsStatus status,  List<BrandEntity> brands,  String errorMessage,  BrandProductsStatus productsStatus,  List<ProductEntity> products,  String productsErrorMessage,  int currentPage,  bool hasReachedMax)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandsState() when $default != null:
return $default(_that.status,_that.brands,_that.errorMessage,_that.productsStatus,_that.products,_that.productsErrorMessage,_that.currentPage,_that.hasReachedMax);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BrandsStatus status,  List<BrandEntity> brands,  String errorMessage,  BrandProductsStatus productsStatus,  List<ProductEntity> products,  String productsErrorMessage,  int currentPage,  bool hasReachedMax)  $default,) {final _that = this;
switch (_that) {
case _BrandsState():
return $default(_that.status,_that.brands,_that.errorMessage,_that.productsStatus,_that.products,_that.productsErrorMessage,_that.currentPage,_that.hasReachedMax);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BrandsStatus status,  List<BrandEntity> brands,  String errorMessage,  BrandProductsStatus productsStatus,  List<ProductEntity> products,  String productsErrorMessage,  int currentPage,  bool hasReachedMax)?  $default,) {final _that = this;
switch (_that) {
case _BrandsState() when $default != null:
return $default(_that.status,_that.brands,_that.errorMessage,_that.productsStatus,_that.products,_that.productsErrorMessage,_that.currentPage,_that.hasReachedMax);case _:
  return null;

}
}

}

/// @nodoc


class _BrandsState implements BrandsState {
  const _BrandsState({this.status = BrandsStatus.initial,  List<BrandEntity> brands = const [], this.errorMessage = '', this.productsStatus = BrandProductsStatus.initial,  List<ProductEntity> products = const [], this.productsErrorMessage = '', this.currentPage = 1, this.hasReachedMax = false}): _brands = brands,_products = products;
  

@override@JsonKey() final  BrandsStatus status;
 final  List<BrandEntity> _brands;
@override@JsonKey() List<BrandEntity> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}

@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  BrandProductsStatus productsStatus;
 final  List<ProductEntity> _products;
@override@JsonKey() List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  String productsErrorMessage;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasReachedMax;

/// Create a copy of BrandsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandsStateCopyWith<_BrandsState> get copyWith => __$BrandsStateCopyWithImpl<_BrandsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.brands, _brands)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.productsStatus, productsStatus) || other.productsStatus == productsStatus)&&const DeepCollectionEquality().equals(other.products, _products)&&(identical(other.productsErrorMessage, productsErrorMessage) || other.productsErrorMessage == productsErrorMessage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_brands),errorMessage,productsStatus,const DeepCollectionEquality().hash(_products),productsErrorMessage,currentPage,hasReachedMax);
}

@override
String toString() {
    return 'BrandsState(status: $status, brands: $brands, errorMessage: $errorMessage, productsStatus: $productsStatus, products: $products, productsErrorMessage: $productsErrorMessage, currentPage: $currentPage, hasReachedMax: $hasReachedMax)';
}


}

/// @nodoc
abstract mixin class _$BrandsStateCopyWith<$Res> implements $BrandsStateCopyWith<$Res> {
  factory _$BrandsStateCopyWith(_BrandsState value, $Res Function(_BrandsState) _then) = __$BrandsStateCopyWithImpl;
@override @useResult
$Res call({
 BrandsStatus status, List<BrandEntity> brands, String errorMessage, BrandProductsStatus productsStatus, List<ProductEntity> products, String productsErrorMessage, int currentPage, bool hasReachedMax
});




}
/// @nodoc
class __$BrandsStateCopyWithImpl<$Res>
    implements _$BrandsStateCopyWith<$Res> {
  __$BrandsStateCopyWithImpl(this._self, this._then);

  final _BrandsState _self;
  final $Res Function(_BrandsState) _then;

/// Create a copy of BrandsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? brands = null,Object? errorMessage = null,Object? productsStatus = null,Object? products = null,Object? productsErrorMessage = null,Object? currentPage = null,Object? hasReachedMax = null,}) {
  return _then(_BrandsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BrandsStatus,brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,productsStatus: null == productsStatus ? _self.productsStatus : productsStatus // ignore: cast_nullable_to_non_nullable
as BrandProductsStatus,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,productsErrorMessage: null == productsErrorMessage ? _self.productsErrorMessage : productsErrorMessage // ignore: cast_nullable_to_non_nullable
as String,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
