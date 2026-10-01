// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrandsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'BrandsEvent()';
}


}

/// @nodoc
class $BrandsEventCopyWith<$Res>  {
$BrandsEventCopyWith(BrandsEvent _, $Res Function(BrandsEvent) __);
}


/// Adds pattern-matching-related methods to [BrandsEvent].
extension BrandsEventPatterns on BrandsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetBrandsEvent value)?  getBrands,TResult Function( GetBrandProductsEvent value)?  getBrandProducts,TResult Function( LoadMoreBrandProductsEvent value)?  loadMoreBrandProducts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetBrandsEvent() when getBrands != null:
return getBrands(_that);case GetBrandProductsEvent() when getBrandProducts != null:
return getBrandProducts(_that);case LoadMoreBrandProductsEvent() when loadMoreBrandProducts != null:
return loadMoreBrandProducts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetBrandsEvent value)  getBrands,required TResult Function( GetBrandProductsEvent value)  getBrandProducts,required TResult Function( LoadMoreBrandProductsEvent value)  loadMoreBrandProducts,}){
final _that = this;
switch (_that) {
case GetBrandsEvent():
return getBrands(_that);case GetBrandProductsEvent():
return getBrandProducts(_that);case LoadMoreBrandProductsEvent():
return loadMoreBrandProducts(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetBrandsEvent value)?  getBrands,TResult? Function( GetBrandProductsEvent value)?  getBrandProducts,TResult? Function( LoadMoreBrandProductsEvent value)?  loadMoreBrandProducts,}){
final _that = this;
switch (_that) {
case GetBrandsEvent() when getBrands != null:
return getBrands(_that);case GetBrandProductsEvent() when getBrandProducts != null:
return getBrandProducts(_that);case LoadMoreBrandProductsEvent() when loadMoreBrandProducts != null:
return loadMoreBrandProducts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getBrands,TResult Function( int brandId,  bool isRefresh)?  getBrandProducts,TResult Function( int brandId)?  loadMoreBrandProducts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetBrandsEvent() when getBrands != null:
return getBrands();case GetBrandProductsEvent() when getBrandProducts != null:
return getBrandProducts(_that.brandId,_that.isRefresh);case LoadMoreBrandProductsEvent() when loadMoreBrandProducts != null:
return loadMoreBrandProducts(_that.brandId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getBrands,required TResult Function( int brandId,  bool isRefresh)  getBrandProducts,required TResult Function( int brandId)  loadMoreBrandProducts,}) {final _that = this;
switch (_that) {
case GetBrandsEvent():
return getBrands();case GetBrandProductsEvent():
return getBrandProducts(_that.brandId,_that.isRefresh);case LoadMoreBrandProductsEvent():
return loadMoreBrandProducts(_that.brandId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getBrands,TResult? Function( int brandId,  bool isRefresh)?  getBrandProducts,TResult? Function( int brandId)?  loadMoreBrandProducts,}) {final _that = this;
switch (_that) {
case GetBrandsEvent() when getBrands != null:
return getBrands();case GetBrandProductsEvent() when getBrandProducts != null:
return getBrandProducts(_that.brandId,_that.isRefresh);case LoadMoreBrandProductsEvent() when loadMoreBrandProducts != null:
return loadMoreBrandProducts(_that.brandId);case _:
  return null;

}
}

}

/// @nodoc


class GetBrandsEvent implements BrandsEvent {
  const GetBrandsEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBrandsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'BrandsEvent.getBrands()';
}


}




/// @nodoc


class GetBrandProductsEvent implements BrandsEvent {
  const GetBrandProductsEvent({required this.brandId, this.isRefresh = false});
  

 final  int brandId;
@JsonKey() final  bool isRefresh;

/// Create a copy of BrandsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBrandProductsEventCopyWith<GetBrandProductsEvent> get copyWith => _$GetBrandProductsEventCopyWithImpl<GetBrandProductsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBrandProductsEvent&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh));
}


@override
int get hashCode {
    return Object.hash(runtimeType,brandId,isRefresh);
}

@override
String toString() {
    return 'BrandsEvent.getBrandProducts(brandId: $brandId, isRefresh: $isRefresh)';
}


}

/// @nodoc
abstract mixin class $GetBrandProductsEventCopyWith<$Res> implements $BrandsEventCopyWith<$Res> {
  factory $GetBrandProductsEventCopyWith(GetBrandProductsEvent value, $Res Function(GetBrandProductsEvent) _then) = _$GetBrandProductsEventCopyWithImpl;
@useResult
$Res call({
 int brandId, bool isRefresh
});




}
/// @nodoc
class _$GetBrandProductsEventCopyWithImpl<$Res>
    implements $GetBrandProductsEventCopyWith<$Res> {
  _$GetBrandProductsEventCopyWithImpl(this._self, this._then);

  final GetBrandProductsEvent _self;
  final $Res Function(GetBrandProductsEvent) _then;

/// Create a copy of BrandsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? brandId = null,Object? isRefresh = null,}) {
  return _then(GetBrandProductsEvent(
brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int,isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoadMoreBrandProductsEvent implements BrandsEvent {
  const LoadMoreBrandProductsEvent({required this.brandId});
  

 final  int brandId;

/// Create a copy of BrandsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMoreBrandProductsEventCopyWith<LoadMoreBrandProductsEvent> get copyWith => _$LoadMoreBrandProductsEventCopyWithImpl<LoadMoreBrandProductsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreBrandProductsEvent&&(identical(other.brandId, brandId) || other.brandId == brandId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,brandId);
}

@override
String toString() {
    return 'BrandsEvent.loadMoreBrandProducts(brandId: $brandId)';
}


}

/// @nodoc
abstract mixin class $LoadMoreBrandProductsEventCopyWith<$Res> implements $BrandsEventCopyWith<$Res> {
  factory $LoadMoreBrandProductsEventCopyWith(LoadMoreBrandProductsEvent value, $Res Function(LoadMoreBrandProductsEvent) _then) = _$LoadMoreBrandProductsEventCopyWithImpl;
@useResult
$Res call({
 int brandId
});




}
/// @nodoc
class _$LoadMoreBrandProductsEventCopyWithImpl<$Res>
    implements $LoadMoreBrandProductsEventCopyWith<$Res> {
  _$LoadMoreBrandProductsEventCopyWithImpl(this._self, this._then);

  final LoadMoreBrandProductsEvent _self;
  final $Res Function(LoadMoreBrandProductsEvent) _then;

/// Create a copy of BrandsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? brandId = null,}) {
  return _then(LoadMoreBrandProductsEvent(
brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
