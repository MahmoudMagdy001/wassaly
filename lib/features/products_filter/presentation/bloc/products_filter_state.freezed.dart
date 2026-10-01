// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsFilterState {

 AppStatus get status; AppStatus get categoriesStatus; List<ProductEntity> get products; List<CategoryEntity> get categories; ProductFilterParams get params; int get currentPage; int get lastPage; int get total; String? get errorMessage; bool get isLoadMoreLoading;
/// Create a copy of ProductsFilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsFilterStateCopyWith<ProductsFilterState> get copyWith => _$ProductsFilterStateCopyWithImpl<ProductsFilterState>(this as ProductsFilterState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductsFilterState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsFilterState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.categoriesStatus, _this.categoriesStatus) || other.categoriesStatus == _this.categoriesStatus)&&const DeepCollectionEquality().equals(other.products, _this.products)&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&(identical(other.params, _this.params) || other.params == _this.params)&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.lastPage, _this.lastPage) || other.lastPage == _this.lastPage)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.isLoadMoreLoading, _this.isLoadMoreLoading) || other.isLoadMoreLoading == _this.isLoadMoreLoading));
}


@override
int get hashCode {
  final _this = this as ProductsFilterState;
  return Object.hash(runtimeType,_this.status,_this.categoriesStatus,const DeepCollectionEquality().hash(_this.products),const DeepCollectionEquality().hash(_this.categories),_this.params,_this.currentPage,_this.lastPage,_this.total,_this.errorMessage,_this.isLoadMoreLoading);
}

@override
String toString() {
  final _this = this as ProductsFilterState;
  return 'ProductsFilterState(status: ${_this.status}, categoriesStatus: ${_this.categoriesStatus}, products: ${_this.products}, categories: ${_this.categories}, params: ${_this.params}, currentPage: ${_this.currentPage}, lastPage: ${_this.lastPage}, total: ${_this.total}, errorMessage: ${_this.errorMessage}, isLoadMoreLoading: ${_this.isLoadMoreLoading})';
}


}

/// @nodoc
abstract mixin class $ProductsFilterStateCopyWith<$Res>  {
  factory $ProductsFilterStateCopyWith(ProductsFilterState value, $Res Function(ProductsFilterState) _then) = _$ProductsFilterStateCopyWithImpl;
@useResult
$Res call({
 AppStatus status, AppStatus categoriesStatus, List<ProductEntity> products, List<CategoryEntity> categories, ProductFilterParams params, int currentPage, int lastPage, int total, String? errorMessage, bool isLoadMoreLoading
});


$ProductFilterParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$ProductsFilterStateCopyWithImpl<$Res>
    implements $ProductsFilterStateCopyWith<$Res> {
  _$ProductsFilterStateCopyWithImpl(this._self, this._then);

  final ProductsFilterState _self;
  final $Res Function(ProductsFilterState) _then;

/// Create a copy of ProductsFilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? categoriesStatus = null,Object? products = null,Object? categories = null,Object? params = null,Object? currentPage = null,Object? lastPage = null,Object? total = null,Object? errorMessage = freezed,Object? isLoadMoreLoading = null,}) {
  return _then(ProductsFilterState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,categoriesStatus: null == categoriesStatus ? _self.categoriesStatus : categoriesStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProductFilterParams,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isLoadMoreLoading: null == isLoadMoreLoading ? _self.isLoadMoreLoading : isLoadMoreLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductsFilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductFilterParamsCopyWith<$Res> get params {
  
  return $ProductFilterParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductsFilterState].
extension ProductsFilterStatePatterns on ProductsFilterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsFilterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsFilterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsFilterState value)  $default,){
final _that = this;
switch (_that) {
case _ProductsFilterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsFilterState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsFilterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppStatus status,  AppStatus categoriesStatus,  List<ProductEntity> products,  List<CategoryEntity> categories,  ProductFilterParams params,  int currentPage,  int lastPage,  int total,  String? errorMessage,  bool isLoadMoreLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsFilterState() when $default != null:
return $default(_that.status,_that.categoriesStatus,_that.products,_that.categories,_that.params,_that.currentPage,_that.lastPage,_that.total,_that.errorMessage,_that.isLoadMoreLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppStatus status,  AppStatus categoriesStatus,  List<ProductEntity> products,  List<CategoryEntity> categories,  ProductFilterParams params,  int currentPage,  int lastPage,  int total,  String? errorMessage,  bool isLoadMoreLoading)  $default,) {final _that = this;
switch (_that) {
case _ProductsFilterState():
return $default(_that.status,_that.categoriesStatus,_that.products,_that.categories,_that.params,_that.currentPage,_that.lastPage,_that.total,_that.errorMessage,_that.isLoadMoreLoading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppStatus status,  AppStatus categoriesStatus,  List<ProductEntity> products,  List<CategoryEntity> categories,  ProductFilterParams params,  int currentPage,  int lastPage,  int total,  String? errorMessage,  bool isLoadMoreLoading)?  $default,) {final _that = this;
switch (_that) {
case _ProductsFilterState() when $default != null:
return $default(_that.status,_that.categoriesStatus,_that.products,_that.categories,_that.params,_that.currentPage,_that.lastPage,_that.total,_that.errorMessage,_that.isLoadMoreLoading);case _:
  return null;

}
}

}

/// @nodoc


class _ProductsFilterState extends ProductsFilterState {
  const _ProductsFilterState({this.status = AppStatus.initial, this.categoriesStatus = AppStatus.initial,  List<ProductEntity> products = const [],  List<CategoryEntity> categories = const [], this.params = const ProductFilterParams(), this.currentPage = 1, this.lastPage = 1, this.total = 0, this.errorMessage, this.isLoadMoreLoading = false}): _products = products,_categories = categories,super._();
  

@override@JsonKey() final  AppStatus status;
@override@JsonKey() final  AppStatus categoriesStatus;
 final  List<ProductEntity> _products;
@override@JsonKey() List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<CategoryEntity> _categories;
@override@JsonKey() List<CategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  ProductFilterParams params;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int lastPage;
@override@JsonKey() final  int total;
@override final  String? errorMessage;
@override@JsonKey() final  bool isLoadMoreLoading;

/// Create a copy of ProductsFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsFilterStateCopyWith<_ProductsFilterState> get copyWith => __$ProductsFilterStateCopyWithImpl<_ProductsFilterState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsFilterState&&(identical(other.status, status) || other.status == status)&&(identical(other.categoriesStatus, categoriesStatus) || other.categoriesStatus == categoriesStatus)&&const DeepCollectionEquality().equals(other.products, _products)&&const DeepCollectionEquality().equals(other.categories, _categories)&&(identical(other.params, params) || other.params == params)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isLoadMoreLoading, isLoadMoreLoading) || other.isLoadMoreLoading == isLoadMoreLoading));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,categoriesStatus,const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_categories),params,currentPage,lastPage,total,errorMessage,isLoadMoreLoading);
}

@override
String toString() {
    return 'ProductsFilterState(status: $status, categoriesStatus: $categoriesStatus, products: $products, categories: $categories, params: $params, currentPage: $currentPage, lastPage: $lastPage, total: $total, errorMessage: $errorMessage, isLoadMoreLoading: $isLoadMoreLoading)';
}


}

/// @nodoc
abstract mixin class _$ProductsFilterStateCopyWith<$Res> implements $ProductsFilterStateCopyWith<$Res> {
  factory _$ProductsFilterStateCopyWith(_ProductsFilterState value, $Res Function(_ProductsFilterState) _then) = __$ProductsFilterStateCopyWithImpl;
@override @useResult
$Res call({
 AppStatus status, AppStatus categoriesStatus, List<ProductEntity> products, List<CategoryEntity> categories, ProductFilterParams params, int currentPage, int lastPage, int total, String? errorMessage, bool isLoadMoreLoading
});


@override $ProductFilterParamsCopyWith<$Res> get params;

}
/// @nodoc
class __$ProductsFilterStateCopyWithImpl<$Res>
    implements _$ProductsFilterStateCopyWith<$Res> {
  __$ProductsFilterStateCopyWithImpl(this._self, this._then);

  final _ProductsFilterState _self;
  final $Res Function(_ProductsFilterState) _then;

/// Create a copy of ProductsFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? categoriesStatus = null,Object? products = null,Object? categories = null,Object? params = null,Object? currentPage = null,Object? lastPage = null,Object? total = null,Object? errorMessage = freezed,Object? isLoadMoreLoading = null,}) {
  return _then(_ProductsFilterState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,categoriesStatus: null == categoriesStatus ? _self.categoriesStatus : categoriesStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProductFilterParams,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isLoadMoreLoading: null == isLoadMoreLoading ? _self.isLoadMoreLoading : isLoadMoreLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductsFilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductFilterParamsCopyWith<$Res> get params {
  
  return $ProductFilterParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
