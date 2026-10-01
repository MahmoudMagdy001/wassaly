// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetBannersEvent value)?  getBanners,TResult Function( GetCategoriesEvent value)?  getCategories,TResult Function( GetPopularServicesEvent value)?  getPopularServices,TResult Function( LoadMorePopularServicesEvent value)?  loadMorePopularServices,TResult Function( GetProductsEvent value)?  getProducts,TResult Function( LoadMoreProductsEvent value)?  loadMoreProducts,TResult Function( HomeInitializeEvent value)?  initialize,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetBannersEvent() when getBanners != null:
return getBanners(_that);case GetCategoriesEvent() when getCategories != null:
return getCategories(_that);case GetPopularServicesEvent() when getPopularServices != null:
return getPopularServices(_that);case LoadMorePopularServicesEvent() when loadMorePopularServices != null:
return loadMorePopularServices(_that);case GetProductsEvent() when getProducts != null:
return getProducts(_that);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts(_that);case HomeInitializeEvent() when initialize != null:
return initialize(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetBannersEvent value)  getBanners,required TResult Function( GetCategoriesEvent value)  getCategories,required TResult Function( GetPopularServicesEvent value)  getPopularServices,required TResult Function( LoadMorePopularServicesEvent value)  loadMorePopularServices,required TResult Function( GetProductsEvent value)  getProducts,required TResult Function( LoadMoreProductsEvent value)  loadMoreProducts,required TResult Function( HomeInitializeEvent value)  initialize,}){
final _that = this;
switch (_that) {
case GetBannersEvent():
return getBanners(_that);case GetCategoriesEvent():
return getCategories(_that);case GetPopularServicesEvent():
return getPopularServices(_that);case LoadMorePopularServicesEvent():
return loadMorePopularServices(_that);case GetProductsEvent():
return getProducts(_that);case LoadMoreProductsEvent():
return loadMoreProducts(_that);case HomeInitializeEvent():
return initialize(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetBannersEvent value)?  getBanners,TResult? Function( GetCategoriesEvent value)?  getCategories,TResult? Function( GetPopularServicesEvent value)?  getPopularServices,TResult? Function( LoadMorePopularServicesEvent value)?  loadMorePopularServices,TResult? Function( GetProductsEvent value)?  getProducts,TResult? Function( LoadMoreProductsEvent value)?  loadMoreProducts,TResult? Function( HomeInitializeEvent value)?  initialize,}){
final _that = this;
switch (_that) {
case GetBannersEvent() when getBanners != null:
return getBanners(_that);case GetCategoriesEvent() when getCategories != null:
return getCategories(_that);case GetPopularServicesEvent() when getPopularServices != null:
return getPopularServices(_that);case LoadMorePopularServicesEvent() when loadMorePopularServices != null:
return loadMorePopularServices(_that);case GetProductsEvent() when getProducts != null:
return getProducts(_that);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts(_that);case HomeInitializeEvent() when initialize != null:
return initialize(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getBanners,TResult Function()?  getCategories,TResult Function()?  getPopularServices,TResult Function()?  loadMorePopularServices,TResult Function()?  getProducts,TResult Function()?  loadMoreProducts,TResult Function()?  initialize,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetBannersEvent() when getBanners != null:
return getBanners();case GetCategoriesEvent() when getCategories != null:
return getCategories();case GetPopularServicesEvent() when getPopularServices != null:
return getPopularServices();case LoadMorePopularServicesEvent() when loadMorePopularServices != null:
return loadMorePopularServices();case GetProductsEvent() when getProducts != null:
return getProducts();case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts();case HomeInitializeEvent() when initialize != null:
return initialize();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getBanners,required TResult Function()  getCategories,required TResult Function()  getPopularServices,required TResult Function()  loadMorePopularServices,required TResult Function()  getProducts,required TResult Function()  loadMoreProducts,required TResult Function()  initialize,}) {final _that = this;
switch (_that) {
case GetBannersEvent():
return getBanners();case GetCategoriesEvent():
return getCategories();case GetPopularServicesEvent():
return getPopularServices();case LoadMorePopularServicesEvent():
return loadMorePopularServices();case GetProductsEvent():
return getProducts();case LoadMoreProductsEvent():
return loadMoreProducts();case HomeInitializeEvent():
return initialize();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getBanners,TResult? Function()?  getCategories,TResult? Function()?  getPopularServices,TResult? Function()?  loadMorePopularServices,TResult? Function()?  getProducts,TResult? Function()?  loadMoreProducts,TResult? Function()?  initialize,}) {final _that = this;
switch (_that) {
case GetBannersEvent() when getBanners != null:
return getBanners();case GetCategoriesEvent() when getCategories != null:
return getCategories();case GetPopularServicesEvent() when getPopularServices != null:
return getPopularServices();case LoadMorePopularServicesEvent() when loadMorePopularServices != null:
return loadMorePopularServices();case GetProductsEvent() when getProducts != null:
return getProducts();case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts();case HomeInitializeEvent() when initialize != null:
return initialize();case _:
  return null;

}
}

}

/// @nodoc


class GetBannersEvent implements HomeEvent {
  const GetBannersEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBannersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.getBanners()';
}


}




/// @nodoc


class GetCategoriesEvent implements HomeEvent {
  const GetCategoriesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCategoriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.getCategories()';
}


}




/// @nodoc


class GetPopularServicesEvent implements HomeEvent {
  const GetPopularServicesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPopularServicesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.getPopularServices()';
}


}




/// @nodoc


class LoadMorePopularServicesEvent implements HomeEvent {
  const LoadMorePopularServicesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMorePopularServicesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.loadMorePopularServices()';
}


}




/// @nodoc


class GetProductsEvent implements HomeEvent {
  const GetProductsEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.getProducts()';
}


}




/// @nodoc


class LoadMoreProductsEvent implements HomeEvent {
  const LoadMoreProductsEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.loadMoreProducts()';
}


}




/// @nodoc


class HomeInitializeEvent implements HomeEvent {
  const HomeInitializeEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitializeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.initialize()';
}


}




// dart format on
