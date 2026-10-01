// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FavoriteEvent()';
}


}

/// @nodoc
class $FavoriteEventCopyWith<$Res>  {
$FavoriteEventCopyWith(FavoriteEvent _, $Res Function(FavoriteEvent) __);
}


/// Adds pattern-matching-related methods to [FavoriteEvent].
extension FavoriteEventPatterns on FavoriteEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetFavoritesEvent value)?  getFavorites,TResult Function( GetServiceFavoritesEvent value)?  getServiceFavorites,TResult Function( ToggleFavoriteEvent value)?  toggleFavorite,TResult Function( ToggleServiceFavoriteEvent value)?  toggleServiceFavorite,TResult Function( LoadMoreFavoritesEvent value)?  loadMoreFavorites,TResult Function( LoadMoreServiceFavoritesEvent value)?  loadMoreServiceFavorites,TResult Function( ClearFavoritesEvent value)?  clearFavorites,TResult Function( SyncPendingFavoritesEvent value)?  syncPendingFavorites,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetFavoritesEvent() when getFavorites != null:
return getFavorites(_that);case GetServiceFavoritesEvent() when getServiceFavorites != null:
return getServiceFavorites(_that);case ToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case ToggleServiceFavoriteEvent() when toggleServiceFavorite != null:
return toggleServiceFavorite(_that);case LoadMoreFavoritesEvent() when loadMoreFavorites != null:
return loadMoreFavorites(_that);case LoadMoreServiceFavoritesEvent() when loadMoreServiceFavorites != null:
return loadMoreServiceFavorites(_that);case ClearFavoritesEvent() when clearFavorites != null:
return clearFavorites(_that);case SyncPendingFavoritesEvent() when syncPendingFavorites != null:
return syncPendingFavorites(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetFavoritesEvent value)  getFavorites,required TResult Function( GetServiceFavoritesEvent value)  getServiceFavorites,required TResult Function( ToggleFavoriteEvent value)  toggleFavorite,required TResult Function( ToggleServiceFavoriteEvent value)  toggleServiceFavorite,required TResult Function( LoadMoreFavoritesEvent value)  loadMoreFavorites,required TResult Function( LoadMoreServiceFavoritesEvent value)  loadMoreServiceFavorites,required TResult Function( ClearFavoritesEvent value)  clearFavorites,required TResult Function( SyncPendingFavoritesEvent value)  syncPendingFavorites,}){
final _that = this;
switch (_that) {
case GetFavoritesEvent():
return getFavorites(_that);case GetServiceFavoritesEvent():
return getServiceFavorites(_that);case ToggleFavoriteEvent():
return toggleFavorite(_that);case ToggleServiceFavoriteEvent():
return toggleServiceFavorite(_that);case LoadMoreFavoritesEvent():
return loadMoreFavorites(_that);case LoadMoreServiceFavoritesEvent():
return loadMoreServiceFavorites(_that);case ClearFavoritesEvent():
return clearFavorites(_that);case SyncPendingFavoritesEvent():
return syncPendingFavorites(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetFavoritesEvent value)?  getFavorites,TResult? Function( GetServiceFavoritesEvent value)?  getServiceFavorites,TResult? Function( ToggleFavoriteEvent value)?  toggleFavorite,TResult? Function( ToggleServiceFavoriteEvent value)?  toggleServiceFavorite,TResult? Function( LoadMoreFavoritesEvent value)?  loadMoreFavorites,TResult? Function( LoadMoreServiceFavoritesEvent value)?  loadMoreServiceFavorites,TResult? Function( ClearFavoritesEvent value)?  clearFavorites,TResult? Function( SyncPendingFavoritesEvent value)?  syncPendingFavorites,}){
final _that = this;
switch (_that) {
case GetFavoritesEvent() when getFavorites != null:
return getFavorites(_that);case GetServiceFavoritesEvent() when getServiceFavorites != null:
return getServiceFavorites(_that);case ToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that);case ToggleServiceFavoriteEvent() when toggleServiceFavorite != null:
return toggleServiceFavorite(_that);case LoadMoreFavoritesEvent() when loadMoreFavorites != null:
return loadMoreFavorites(_that);case LoadMoreServiceFavoritesEvent() when loadMoreServiceFavorites != null:
return loadMoreServiceFavorites(_that);case ClearFavoritesEvent() when clearFavorites != null:
return clearFavorites(_that);case SyncPendingFavoritesEvent() when syncPendingFavorites != null:
return syncPendingFavorites(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getFavorites,TResult Function()?  getServiceFavorites,TResult Function( int productId,  bool expectedIsFavorite)?  toggleFavorite,TResult Function( int serviceId,  bool expectedIsFavorite)?  toggleServiceFavorite,TResult Function()?  loadMoreFavorites,TResult Function()?  loadMoreServiceFavorites,TResult Function()?  clearFavorites,TResult Function()?  syncPendingFavorites,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetFavoritesEvent() when getFavorites != null:
return getFavorites();case GetServiceFavoritesEvent() when getServiceFavorites != null:
return getServiceFavorites();case ToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.productId,_that.expectedIsFavorite);case ToggleServiceFavoriteEvent() when toggleServiceFavorite != null:
return toggleServiceFavorite(_that.serviceId,_that.expectedIsFavorite);case LoadMoreFavoritesEvent() when loadMoreFavorites != null:
return loadMoreFavorites();case LoadMoreServiceFavoritesEvent() when loadMoreServiceFavorites != null:
return loadMoreServiceFavorites();case ClearFavoritesEvent() when clearFavorites != null:
return clearFavorites();case SyncPendingFavoritesEvent() when syncPendingFavorites != null:
return syncPendingFavorites();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getFavorites,required TResult Function()  getServiceFavorites,required TResult Function( int productId,  bool expectedIsFavorite)  toggleFavorite,required TResult Function( int serviceId,  bool expectedIsFavorite)  toggleServiceFavorite,required TResult Function()  loadMoreFavorites,required TResult Function()  loadMoreServiceFavorites,required TResult Function()  clearFavorites,required TResult Function()  syncPendingFavorites,}) {final _that = this;
switch (_that) {
case GetFavoritesEvent():
return getFavorites();case GetServiceFavoritesEvent():
return getServiceFavorites();case ToggleFavoriteEvent():
return toggleFavorite(_that.productId,_that.expectedIsFavorite);case ToggleServiceFavoriteEvent():
return toggleServiceFavorite(_that.serviceId,_that.expectedIsFavorite);case LoadMoreFavoritesEvent():
return loadMoreFavorites();case LoadMoreServiceFavoritesEvent():
return loadMoreServiceFavorites();case ClearFavoritesEvent():
return clearFavorites();case SyncPendingFavoritesEvent():
return syncPendingFavorites();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getFavorites,TResult? Function()?  getServiceFavorites,TResult? Function( int productId,  bool expectedIsFavorite)?  toggleFavorite,TResult? Function( int serviceId,  bool expectedIsFavorite)?  toggleServiceFavorite,TResult? Function()?  loadMoreFavorites,TResult? Function()?  loadMoreServiceFavorites,TResult? Function()?  clearFavorites,TResult? Function()?  syncPendingFavorites,}) {final _that = this;
switch (_that) {
case GetFavoritesEvent() when getFavorites != null:
return getFavorites();case GetServiceFavoritesEvent() when getServiceFavorites != null:
return getServiceFavorites();case ToggleFavoriteEvent() when toggleFavorite != null:
return toggleFavorite(_that.productId,_that.expectedIsFavorite);case ToggleServiceFavoriteEvent() when toggleServiceFavorite != null:
return toggleServiceFavorite(_that.serviceId,_that.expectedIsFavorite);case LoadMoreFavoritesEvent() when loadMoreFavorites != null:
return loadMoreFavorites();case LoadMoreServiceFavoritesEvent() when loadMoreServiceFavorites != null:
return loadMoreServiceFavorites();case ClearFavoritesEvent() when clearFavorites != null:
return clearFavorites();case SyncPendingFavoritesEvent() when syncPendingFavorites != null:
return syncPendingFavorites();case _:
  return null;

}
}

}

/// @nodoc


class GetFavoritesEvent implements FavoriteEvent {
  const GetFavoritesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FavoriteEvent.getFavorites()';
}


}




/// @nodoc


class GetServiceFavoritesEvent implements FavoriteEvent {
  const GetServiceFavoritesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetServiceFavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FavoriteEvent.getServiceFavorites()';
}


}




/// @nodoc


class ToggleFavoriteEvent implements FavoriteEvent {
  const ToggleFavoriteEvent(this.productId, {required this.expectedIsFavorite});
  

 final  int productId;
 final  bool expectedIsFavorite;

/// Create a copy of FavoriteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFavoriteEventCopyWith<ToggleFavoriteEvent> get copyWith => _$ToggleFavoriteEventCopyWithImpl<ToggleFavoriteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFavoriteEvent&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.expectedIsFavorite, expectedIsFavorite) || other.expectedIsFavorite == expectedIsFavorite));
}


@override
int get hashCode {
    return Object.hash(runtimeType,productId,expectedIsFavorite);
}

@override
String toString() {
    return 'FavoriteEvent.toggleFavorite(productId: $productId, expectedIsFavorite: $expectedIsFavorite)';
}


}

/// @nodoc
abstract mixin class $ToggleFavoriteEventCopyWith<$Res> implements $FavoriteEventCopyWith<$Res> {
  factory $ToggleFavoriteEventCopyWith(ToggleFavoriteEvent value, $Res Function(ToggleFavoriteEvent) _then) = _$ToggleFavoriteEventCopyWithImpl;
@useResult
$Res call({
 int productId, bool expectedIsFavorite
});




}
/// @nodoc
class _$ToggleFavoriteEventCopyWithImpl<$Res>
    implements $ToggleFavoriteEventCopyWith<$Res> {
  _$ToggleFavoriteEventCopyWithImpl(this._self, this._then);

  final ToggleFavoriteEvent _self;
  final $Res Function(ToggleFavoriteEvent) _then;

/// Create a copy of FavoriteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? expectedIsFavorite = null,}) {
  return _then(ToggleFavoriteEvent(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,expectedIsFavorite: null == expectedIsFavorite ? _self.expectedIsFavorite : expectedIsFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ToggleServiceFavoriteEvent implements FavoriteEvent {
  const ToggleServiceFavoriteEvent(this.serviceId, {required this.expectedIsFavorite});
  

 final  int serviceId;
 final  bool expectedIsFavorite;

/// Create a copy of FavoriteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleServiceFavoriteEventCopyWith<ToggleServiceFavoriteEvent> get copyWith => _$ToggleServiceFavoriteEventCopyWithImpl<ToggleServiceFavoriteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleServiceFavoriteEvent&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.expectedIsFavorite, expectedIsFavorite) || other.expectedIsFavorite == expectedIsFavorite));
}


@override
int get hashCode {
    return Object.hash(runtimeType,serviceId,expectedIsFavorite);
}

@override
String toString() {
    return 'FavoriteEvent.toggleServiceFavorite(serviceId: $serviceId, expectedIsFavorite: $expectedIsFavorite)';
}


}

/// @nodoc
abstract mixin class $ToggleServiceFavoriteEventCopyWith<$Res> implements $FavoriteEventCopyWith<$Res> {
  factory $ToggleServiceFavoriteEventCopyWith(ToggleServiceFavoriteEvent value, $Res Function(ToggleServiceFavoriteEvent) _then) = _$ToggleServiceFavoriteEventCopyWithImpl;
@useResult
$Res call({
 int serviceId, bool expectedIsFavorite
});




}
/// @nodoc
class _$ToggleServiceFavoriteEventCopyWithImpl<$Res>
    implements $ToggleServiceFavoriteEventCopyWith<$Res> {
  _$ToggleServiceFavoriteEventCopyWithImpl(this._self, this._then);

  final ToggleServiceFavoriteEvent _self;
  final $Res Function(ToggleServiceFavoriteEvent) _then;

/// Create a copy of FavoriteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? expectedIsFavorite = null,}) {
  return _then(ToggleServiceFavoriteEvent(
null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,expectedIsFavorite: null == expectedIsFavorite ? _self.expectedIsFavorite : expectedIsFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoadMoreFavoritesEvent implements FavoriteEvent {
  const LoadMoreFavoritesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreFavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FavoriteEvent.loadMoreFavorites()';
}


}




/// @nodoc


class LoadMoreServiceFavoritesEvent implements FavoriteEvent {
  const LoadMoreServiceFavoritesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreServiceFavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FavoriteEvent.loadMoreServiceFavorites()';
}


}




/// @nodoc


class ClearFavoritesEvent implements FavoriteEvent {
  const ClearFavoritesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearFavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FavoriteEvent.clearFavorites()';
}


}




/// @nodoc


class SyncPendingFavoritesEvent implements FavoriteEvent {
  const SyncPendingFavoritesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncPendingFavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FavoriteEvent.syncPendingFavorites()';
}


}




// dart format on
