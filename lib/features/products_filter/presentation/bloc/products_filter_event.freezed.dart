// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_filter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsFilterEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsFilterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ProductsFilterEvent()';
}


}

/// @nodoc
class $ProductsFilterEventCopyWith<$Res>  {
$ProductsFilterEventCopyWith(ProductsFilterEvent _, $Res Function(ProductsFilterEvent) __);
}


/// Adds pattern-matching-related methods to [ProductsFilterEvent].
extension ProductsFilterEventPatterns on ProductsFilterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FilterProductsEvent value)?  filterProducts,TResult Function( ResetFiltersEvent value)?  resetFilters,TResult Function( FetchFilterCategoriesEvent value)?  fetchFilterCategories,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FilterProductsEvent() when filterProducts != null:
return filterProducts(_that);case ResetFiltersEvent() when resetFilters != null:
return resetFilters(_that);case FetchFilterCategoriesEvent() when fetchFilterCategories != null:
return fetchFilterCategories(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FilterProductsEvent value)  filterProducts,required TResult Function( ResetFiltersEvent value)  resetFilters,required TResult Function( FetchFilterCategoriesEvent value)  fetchFilterCategories,}){
final _that = this;
switch (_that) {
case FilterProductsEvent():
return filterProducts(_that);case ResetFiltersEvent():
return resetFilters(_that);case FetchFilterCategoriesEvent():
return fetchFilterCategories(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FilterProductsEvent value)?  filterProducts,TResult? Function( ResetFiltersEvent value)?  resetFilters,TResult? Function( FetchFilterCategoriesEvent value)?  fetchFilterCategories,}){
final _that = this;
switch (_that) {
case FilterProductsEvent() when filterProducts != null:
return filterProducts(_that);case ResetFiltersEvent() when resetFilters != null:
return resetFilters(_that);case FetchFilterCategoriesEvent() when fetchFilterCategories != null:
return fetchFilterCategories(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ProductFilterParams params,  bool isLoadMore)?  filterProducts,TResult Function()?  resetFilters,TResult Function()?  fetchFilterCategories,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FilterProductsEvent() when filterProducts != null:
return filterProducts(_that.params,_that.isLoadMore);case ResetFiltersEvent() when resetFilters != null:
return resetFilters();case FetchFilterCategoriesEvent() when fetchFilterCategories != null:
return fetchFilterCategories();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ProductFilterParams params,  bool isLoadMore)  filterProducts,required TResult Function()  resetFilters,required TResult Function()  fetchFilterCategories,}) {final _that = this;
switch (_that) {
case FilterProductsEvent():
return filterProducts(_that.params,_that.isLoadMore);case ResetFiltersEvent():
return resetFilters();case FetchFilterCategoriesEvent():
return fetchFilterCategories();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ProductFilterParams params,  bool isLoadMore)?  filterProducts,TResult? Function()?  resetFilters,TResult? Function()?  fetchFilterCategories,}) {final _that = this;
switch (_that) {
case FilterProductsEvent() when filterProducts != null:
return filterProducts(_that.params,_that.isLoadMore);case ResetFiltersEvent() when resetFilters != null:
return resetFilters();case FetchFilterCategoriesEvent() when fetchFilterCategories != null:
return fetchFilterCategories();case _:
  return null;

}
}

}

/// @nodoc


class FilterProductsEvent implements ProductsFilterEvent {
  const FilterProductsEvent({required this.params, this.isLoadMore = false});
  

 final  ProductFilterParams params;
@JsonKey() final  bool isLoadMore;

/// Create a copy of ProductsFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterProductsEventCopyWith<FilterProductsEvent> get copyWith => _$FilterProductsEventCopyWithImpl<FilterProductsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterProductsEvent&&(identical(other.params, params) || other.params == params)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore));
}


@override
int get hashCode {
    return Object.hash(runtimeType,params,isLoadMore);
}

@override
String toString() {
    return 'ProductsFilterEvent.filterProducts(params: $params, isLoadMore: $isLoadMore)';
}


}

/// @nodoc
abstract mixin class $FilterProductsEventCopyWith<$Res> implements $ProductsFilterEventCopyWith<$Res> {
  factory $FilterProductsEventCopyWith(FilterProductsEvent value, $Res Function(FilterProductsEvent) _then) = _$FilterProductsEventCopyWithImpl;
@useResult
$Res call({
 ProductFilterParams params, bool isLoadMore
});


$ProductFilterParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$FilterProductsEventCopyWithImpl<$Res>
    implements $FilterProductsEventCopyWith<$Res> {
  _$FilterProductsEventCopyWithImpl(this._self, this._then);

  final FilterProductsEvent _self;
  final $Res Function(FilterProductsEvent) _then;

/// Create a copy of ProductsFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,Object? isLoadMore = null,}) {
  return _then(FilterProductsEvent(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ProductFilterParams,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductsFilterEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductFilterParamsCopyWith<$Res> get params {
  
  return $ProductFilterParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class ResetFiltersEvent implements ProductsFilterEvent {
  const ResetFiltersEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetFiltersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ProductsFilterEvent.resetFilters()';
}


}




/// @nodoc


class FetchFilterCategoriesEvent implements ProductsFilterEvent {
  const FetchFilterCategoriesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchFilterCategoriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ProductsFilterEvent.fetchFilterCategories()';
}


}




// dart format on
