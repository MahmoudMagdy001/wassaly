// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 HomeStatus get bannersStatus; List<BannerEntity> get banners; HomeStatus get categoriesStatus; List<CategoryEntity> get categories; HomeStatus get popularServicesStatus; PaginatedResponse<SubCategoryEntity> get popularServices; bool get isPopularServicesLoadingMore; HomeStatus get productsStatus; PaginatedResponse<ProductEntity> get products; bool get isProductsLoadingMore; Failure? get failure;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HomeState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.bannersStatus, _this.bannersStatus) || other.bannersStatus == _this.bannersStatus)&&const DeepCollectionEquality().equals(other.banners, _this.banners)&&(identical(other.categoriesStatus, _this.categoriesStatus) || other.categoriesStatus == _this.categoriesStatus)&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&(identical(other.popularServicesStatus, _this.popularServicesStatus) || other.popularServicesStatus == _this.popularServicesStatus)&&(identical(other.popularServices, _this.popularServices) || other.popularServices == _this.popularServices)&&(identical(other.isPopularServicesLoadingMore, _this.isPopularServicesLoadingMore) || other.isPopularServicesLoadingMore == _this.isPopularServicesLoadingMore)&&(identical(other.productsStatus, _this.productsStatus) || other.productsStatus == _this.productsStatus)&&(identical(other.products, _this.products) || other.products == _this.products)&&(identical(other.isProductsLoadingMore, _this.isProductsLoadingMore) || other.isProductsLoadingMore == _this.isProductsLoadingMore)&&(identical(other.failure, _this.failure) || other.failure == _this.failure));
}


@override
int get hashCode {
  final _this = this as HomeState;
  return Object.hash(runtimeType,_this.bannersStatus,const DeepCollectionEquality().hash(_this.banners),_this.categoriesStatus,const DeepCollectionEquality().hash(_this.categories),_this.popularServicesStatus,_this.popularServices,_this.isPopularServicesLoadingMore,_this.productsStatus,_this.products,_this.isProductsLoadingMore,_this.failure);
}

@override
String toString() {
  final _this = this as HomeState;
  return 'HomeState(bannersStatus: ${_this.bannersStatus}, banners: ${_this.banners}, categoriesStatus: ${_this.categoriesStatus}, categories: ${_this.categories}, popularServicesStatus: ${_this.popularServicesStatus}, popularServices: ${_this.popularServices}, isPopularServicesLoadingMore: ${_this.isPopularServicesLoadingMore}, productsStatus: ${_this.productsStatus}, products: ${_this.products}, isProductsLoadingMore: ${_this.isProductsLoadingMore}, failure: ${_this.failure})';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 HomeStatus bannersStatus, List<BannerEntity> banners, HomeStatus categoriesStatus, List<CategoryEntity> categories, HomeStatus popularServicesStatus, PaginatedResponse<SubCategoryEntity> popularServices, bool isPopularServicesLoadingMore, HomeStatus productsStatus, PaginatedResponse<ProductEntity> products, bool isProductsLoadingMore, Failure? failure
});


$PaginatedResponseCopyWith<SubCategoryEntity, $Res> get popularServices;$PaginatedResponseCopyWith<ProductEntity, $Res> get products;$FailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bannersStatus = null,Object? banners = null,Object? categoriesStatus = null,Object? categories = null,Object? popularServicesStatus = null,Object? popularServices = null,Object? isPopularServicesLoadingMore = null,Object? productsStatus = null,Object? products = null,Object? isProductsLoadingMore = null,Object? failure = freezed,}) {
  return _then(HomeState(
bannersStatus: null == bannersStatus ? _self.bannersStatus : bannersStatus // ignore: cast_nullable_to_non_nullable
as HomeStatus,banners: null == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerEntity>,categoriesStatus: null == categoriesStatus ? _self.categoriesStatus : categoriesStatus // ignore: cast_nullable_to_non_nullable
as HomeStatus,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,popularServicesStatus: null == popularServicesStatus ? _self.popularServicesStatus : popularServicesStatus // ignore: cast_nullable_to_non_nullable
as HomeStatus,popularServices: null == popularServices ? _self.popularServices : popularServices // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<SubCategoryEntity>,isPopularServicesLoadingMore: null == isPopularServicesLoadingMore ? _self.isPopularServicesLoadingMore : isPopularServicesLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,productsStatus: null == productsStatus ? _self.productsStatus : productsStatus // ignore: cast_nullable_to_non_nullable
as HomeStatus,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,isProductsLoadingMore: null == isProductsLoadingMore ? _self.isProductsLoadingMore : isProductsLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<SubCategoryEntity, $Res> get popularServices {
  
  return $PaginatedResponseCopyWith<SubCategoryEntity, $Res>(_self.popularServices, (value) {
    return _then(_self.copyWith(popularServices: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductEntity, $Res> get products {
  
  return $PaginatedResponseCopyWith<ProductEntity, $Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomeStatus bannersStatus,  List<BannerEntity> banners,  HomeStatus categoriesStatus,  List<CategoryEntity> categories,  HomeStatus popularServicesStatus,  PaginatedResponse<SubCategoryEntity> popularServices,  bool isPopularServicesLoadingMore,  HomeStatus productsStatus,  PaginatedResponse<ProductEntity> products,  bool isProductsLoadingMore,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.bannersStatus,_that.banners,_that.categoriesStatus,_that.categories,_that.popularServicesStatus,_that.popularServices,_that.isPopularServicesLoadingMore,_that.productsStatus,_that.products,_that.isProductsLoadingMore,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomeStatus bannersStatus,  List<BannerEntity> banners,  HomeStatus categoriesStatus,  List<CategoryEntity> categories,  HomeStatus popularServicesStatus,  PaginatedResponse<SubCategoryEntity> popularServices,  bool isPopularServicesLoadingMore,  HomeStatus productsStatus,  PaginatedResponse<ProductEntity> products,  bool isProductsLoadingMore,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.bannersStatus,_that.banners,_that.categoriesStatus,_that.categories,_that.popularServicesStatus,_that.popularServices,_that.isPopularServicesLoadingMore,_that.productsStatus,_that.products,_that.isProductsLoadingMore,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomeStatus bannersStatus,  List<BannerEntity> banners,  HomeStatus categoriesStatus,  List<CategoryEntity> categories,  HomeStatus popularServicesStatus,  PaginatedResponse<SubCategoryEntity> popularServices,  bool isPopularServicesLoadingMore,  HomeStatus productsStatus,  PaginatedResponse<ProductEntity> products,  bool isProductsLoadingMore,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.bannersStatus,_that.banners,_that.categoriesStatus,_that.categories,_that.popularServicesStatus,_that.popularServices,_that.isPopularServicesLoadingMore,_that.productsStatus,_that.products,_that.isProductsLoadingMore,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({this.bannersStatus = HomeStatus.initial,  List<BannerEntity> banners = const [], this.categoriesStatus = HomeStatus.initial,  List<CategoryEntity> categories = const [], this.popularServicesStatus = HomeStatus.initial, this.popularServices = const PaginatedResponse(data: []), this.isPopularServicesLoadingMore = false, this.productsStatus = HomeStatus.initial, this.products = const PaginatedResponse(data: []), this.isProductsLoadingMore = false, this.failure}): _banners = banners,_categories = categories,super._();
  

@override@JsonKey() final  HomeStatus bannersStatus;
 final  List<BannerEntity> _banners;
@override@JsonKey() List<BannerEntity> get banners {
  if (_banners is EqualUnmodifiableListView) return _banners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banners);
}

@override@JsonKey() final  HomeStatus categoriesStatus;
 final  List<CategoryEntity> _categories;
@override@JsonKey() List<CategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  HomeStatus popularServicesStatus;
@override@JsonKey() final  PaginatedResponse<SubCategoryEntity> popularServices;
@override@JsonKey() final  bool isPopularServicesLoadingMore;
@override@JsonKey() final  HomeStatus productsStatus;
@override@JsonKey() final  PaginatedResponse<ProductEntity> products;
@override@JsonKey() final  bool isProductsLoadingMore;
@override final  Failure? failure;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.bannersStatus, bannersStatus) || other.bannersStatus == bannersStatus)&&const DeepCollectionEquality().equals(other.banners, _banners)&&(identical(other.categoriesStatus, categoriesStatus) || other.categoriesStatus == categoriesStatus)&&const DeepCollectionEquality().equals(other.categories, _categories)&&(identical(other.popularServicesStatus, popularServicesStatus) || other.popularServicesStatus == popularServicesStatus)&&(identical(other.popularServices, popularServices) || other.popularServices == popularServices)&&(identical(other.isPopularServicesLoadingMore, isPopularServicesLoadingMore) || other.isPopularServicesLoadingMore == isPopularServicesLoadingMore)&&(identical(other.productsStatus, productsStatus) || other.productsStatus == productsStatus)&&(identical(other.products, products) || other.products == products)&&(identical(other.isProductsLoadingMore, isProductsLoadingMore) || other.isProductsLoadingMore == isProductsLoadingMore)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode {
    return Object.hash(runtimeType,bannersStatus,const DeepCollectionEquality().hash(_banners),categoriesStatus,const DeepCollectionEquality().hash(_categories),popularServicesStatus,popularServices,isPopularServicesLoadingMore,productsStatus,products,isProductsLoadingMore,failure);
}

@override
String toString() {
    return 'HomeState(bannersStatus: $bannersStatus, banners: $banners, categoriesStatus: $categoriesStatus, categories: $categories, popularServicesStatus: $popularServicesStatus, popularServices: $popularServices, isPopularServicesLoadingMore: $isPopularServicesLoadingMore, productsStatus: $productsStatus, products: $products, isProductsLoadingMore: $isProductsLoadingMore, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 HomeStatus bannersStatus, List<BannerEntity> banners, HomeStatus categoriesStatus, List<CategoryEntity> categories, HomeStatus popularServicesStatus, PaginatedResponse<SubCategoryEntity> popularServices, bool isPopularServicesLoadingMore, HomeStatus productsStatus, PaginatedResponse<ProductEntity> products, bool isProductsLoadingMore, Failure? failure
});


@override $PaginatedResponseCopyWith<SubCategoryEntity, $Res> get popularServices;@override $PaginatedResponseCopyWith<ProductEntity, $Res> get products;@override $FailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bannersStatus = null,Object? banners = null,Object? categoriesStatus = null,Object? categories = null,Object? popularServicesStatus = null,Object? popularServices = null,Object? isPopularServicesLoadingMore = null,Object? productsStatus = null,Object? products = null,Object? isProductsLoadingMore = null,Object? failure = freezed,}) {
  return _then(_HomeState(
bannersStatus: null == bannersStatus ? _self.bannersStatus : bannersStatus // ignore: cast_nullable_to_non_nullable
as HomeStatus,banners: null == banners ? _self._banners : banners // ignore: cast_nullable_to_non_nullable
as List<BannerEntity>,categoriesStatus: null == categoriesStatus ? _self.categoriesStatus : categoriesStatus // ignore: cast_nullable_to_non_nullable
as HomeStatus,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,popularServicesStatus: null == popularServicesStatus ? _self.popularServicesStatus : popularServicesStatus // ignore: cast_nullable_to_non_nullable
as HomeStatus,popularServices: null == popularServices ? _self.popularServices : popularServices // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<SubCategoryEntity>,isPopularServicesLoadingMore: null == isPopularServicesLoadingMore ? _self.isPopularServicesLoadingMore : isPopularServicesLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,productsStatus: null == productsStatus ? _self.productsStatus : productsStatus // ignore: cast_nullable_to_non_nullable
as HomeStatus,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,isProductsLoadingMore: null == isProductsLoadingMore ? _self.isProductsLoadingMore : isProductsLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<SubCategoryEntity, $Res> get popularServices {
  
  return $PaginatedResponseCopyWith<SubCategoryEntity, $Res>(_self.popularServices, (value) {
    return _then(_self.copyWith(popularServices: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductEntity, $Res> get products {
  
  return $PaginatedResponseCopyWith<ProductEntity, $Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
