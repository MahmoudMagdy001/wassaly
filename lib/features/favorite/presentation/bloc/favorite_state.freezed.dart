// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteState {

 FavoriteStatus get status; FavoriteStatus get serviceStatus; PaginatedResponse<ProductEntity> get favorites; PaginatedResponse<ServiceEntity> get serviceFavorites; Set<int> get favoriteIds; Set<int> get togglingIds; Set<int> get serviceFavoriteIds; Set<int> get serviceTogglingIds; Failure? get failure; Failure? get serviceFailure; bool get isLoadingMore; bool get isServiceLoadingMore;
/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteStateCopyWith<FavoriteState> get copyWith => _$FavoriteStateCopyWithImpl<FavoriteState>(this as FavoriteState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FavoriteState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.serviceStatus, _this.serviceStatus) || other.serviceStatus == _this.serviceStatus)&&(identical(other.favorites, _this.favorites) || other.favorites == _this.favorites)&&(identical(other.serviceFavorites, _this.serviceFavorites) || other.serviceFavorites == _this.serviceFavorites)&&const DeepCollectionEquality().equals(other.favoriteIds, _this.favoriteIds)&&const DeepCollectionEquality().equals(other.togglingIds, _this.togglingIds)&&const DeepCollectionEquality().equals(other.serviceFavoriteIds, _this.serviceFavoriteIds)&&const DeepCollectionEquality().equals(other.serviceTogglingIds, _this.serviceTogglingIds)&&(identical(other.failure, _this.failure) || other.failure == _this.failure)&&(identical(other.serviceFailure, _this.serviceFailure) || other.serviceFailure == _this.serviceFailure)&&(identical(other.isLoadingMore, _this.isLoadingMore) || other.isLoadingMore == _this.isLoadingMore)&&(identical(other.isServiceLoadingMore, _this.isServiceLoadingMore) || other.isServiceLoadingMore == _this.isServiceLoadingMore));
}


@override
int get hashCode {
  final _this = this as FavoriteState;
  return Object.hash(runtimeType,_this.status,_this.serviceStatus,_this.favorites,_this.serviceFavorites,const DeepCollectionEquality().hash(_this.favoriteIds),const DeepCollectionEquality().hash(_this.togglingIds),const DeepCollectionEquality().hash(_this.serviceFavoriteIds),const DeepCollectionEquality().hash(_this.serviceTogglingIds),_this.failure,_this.serviceFailure,_this.isLoadingMore,_this.isServiceLoadingMore);
}

@override
String toString() {
  final _this = this as FavoriteState;
  return 'FavoriteState(status: ${_this.status}, serviceStatus: ${_this.serviceStatus}, favorites: ${_this.favorites}, serviceFavorites: ${_this.serviceFavorites}, favoriteIds: ${_this.favoriteIds}, togglingIds: ${_this.togglingIds}, serviceFavoriteIds: ${_this.serviceFavoriteIds}, serviceTogglingIds: ${_this.serviceTogglingIds}, failure: ${_this.failure}, serviceFailure: ${_this.serviceFailure}, isLoadingMore: ${_this.isLoadingMore}, isServiceLoadingMore: ${_this.isServiceLoadingMore})';
}


}

/// @nodoc
abstract mixin class $FavoriteStateCopyWith<$Res>  {
  factory $FavoriteStateCopyWith(FavoriteState value, $Res Function(FavoriteState) _then) = _$FavoriteStateCopyWithImpl;
@useResult
$Res call({
 FavoriteStatus status, FavoriteStatus serviceStatus, PaginatedResponse<ProductEntity> favorites, PaginatedResponse<ServiceEntity> serviceFavorites, Set<int> favoriteIds, Set<int> togglingIds, Set<int> serviceFavoriteIds, Set<int> serviceTogglingIds, Failure? failure, Failure? serviceFailure, bool isLoadingMore, bool isServiceLoadingMore
});


$PaginatedResponseCopyWith<ProductEntity, $Res> get favorites;$PaginatedResponseCopyWith<ServiceEntity, $Res> get serviceFavorites;$FailureCopyWith<$Res>? get failure;$FailureCopyWith<$Res>? get serviceFailure;

}
/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._self, this._then);

  final FavoriteState _self;
  final $Res Function(FavoriteState) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? serviceStatus = null,Object? favorites = null,Object? serviceFavorites = null,Object? favoriteIds = null,Object? togglingIds = null,Object? serviceFavoriteIds = null,Object? serviceTogglingIds = null,Object? failure = freezed,Object? serviceFailure = freezed,Object? isLoadingMore = null,Object? isServiceLoadingMore = null,}) {
  return _then(FavoriteState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,serviceStatus: null == serviceStatus ? _self.serviceStatus : serviceStatus // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,favorites: null == favorites ? _self.favorites : favorites // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,serviceFavorites: null == serviceFavorites ? _self.serviceFavorites : serviceFavorites // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ServiceEntity>,favoriteIds: null == favoriteIds ? _self.favoriteIds : favoriteIds // ignore: cast_nullable_to_non_nullable
as Set<int>,togglingIds: null == togglingIds ? _self.togglingIds : togglingIds // ignore: cast_nullable_to_non_nullable
as Set<int>,serviceFavoriteIds: null == serviceFavoriteIds ? _self.serviceFavoriteIds : serviceFavoriteIds // ignore: cast_nullable_to_non_nullable
as Set<int>,serviceTogglingIds: null == serviceTogglingIds ? _self.serviceTogglingIds : serviceTogglingIds // ignore: cast_nullable_to_non_nullable
as Set<int>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,serviceFailure: freezed == serviceFailure ? _self.serviceFailure : serviceFailure // ignore: cast_nullable_to_non_nullable
as Failure?,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isServiceLoadingMore: null == isServiceLoadingMore ? _self.isServiceLoadingMore : isServiceLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductEntity, $Res> get favorites {
  
  return $PaginatedResponseCopyWith<ProductEntity, $Res>(_self.favorites, (value) {
    return _then(_self.copyWith(favorites: value));
  });
}/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ServiceEntity, $Res> get serviceFavorites {
  
  return $PaginatedResponseCopyWith<ServiceEntity, $Res>(_self.serviceFavorites, (value) {
    return _then(_self.copyWith(serviceFavorites: value));
  });
}/// Create a copy of FavoriteState
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
}/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get serviceFailure {
    if (_self.serviceFailure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.serviceFailure!, (value) {
    return _then(_self.copyWith(serviceFailure: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoriteState].
extension FavoriteStatePatterns on FavoriteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteState value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteState value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FavoriteStatus status,  FavoriteStatus serviceStatus,  PaginatedResponse<ProductEntity> favorites,  PaginatedResponse<ServiceEntity> serviceFavorites,  Set<int> favoriteIds,  Set<int> togglingIds,  Set<int> serviceFavoriteIds,  Set<int> serviceTogglingIds,  Failure? failure,  Failure? serviceFailure,  bool isLoadingMore,  bool isServiceLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteState() when $default != null:
return $default(_that.status,_that.serviceStatus,_that.favorites,_that.serviceFavorites,_that.favoriteIds,_that.togglingIds,_that.serviceFavoriteIds,_that.serviceTogglingIds,_that.failure,_that.serviceFailure,_that.isLoadingMore,_that.isServiceLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FavoriteStatus status,  FavoriteStatus serviceStatus,  PaginatedResponse<ProductEntity> favorites,  PaginatedResponse<ServiceEntity> serviceFavorites,  Set<int> favoriteIds,  Set<int> togglingIds,  Set<int> serviceFavoriteIds,  Set<int> serviceTogglingIds,  Failure? failure,  Failure? serviceFailure,  bool isLoadingMore,  bool isServiceLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _FavoriteState():
return $default(_that.status,_that.serviceStatus,_that.favorites,_that.serviceFavorites,_that.favoriteIds,_that.togglingIds,_that.serviceFavoriteIds,_that.serviceTogglingIds,_that.failure,_that.serviceFailure,_that.isLoadingMore,_that.isServiceLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FavoriteStatus status,  FavoriteStatus serviceStatus,  PaginatedResponse<ProductEntity> favorites,  PaginatedResponse<ServiceEntity> serviceFavorites,  Set<int> favoriteIds,  Set<int> togglingIds,  Set<int> serviceFavoriteIds,  Set<int> serviceTogglingIds,  Failure? failure,  Failure? serviceFailure,  bool isLoadingMore,  bool isServiceLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteState() when $default != null:
return $default(_that.status,_that.serviceStatus,_that.favorites,_that.serviceFavorites,_that.favoriteIds,_that.togglingIds,_that.serviceFavoriteIds,_that.serviceTogglingIds,_that.failure,_that.serviceFailure,_that.isLoadingMore,_that.isServiceLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteState extends FavoriteState {
  const _FavoriteState({this.status = FavoriteStatus.initial, this.serviceStatus = FavoriteStatus.initial, this.favorites = const PaginatedResponse(data: []), this.serviceFavorites = const PaginatedResponse(data: []),  Set<int> favoriteIds = const {},  Set<int> togglingIds = const {},  Set<int> serviceFavoriteIds = const {},  Set<int> serviceTogglingIds = const {}, this.failure, this.serviceFailure, this.isLoadingMore = false, this.isServiceLoadingMore = false}): _favoriteIds = favoriteIds,_togglingIds = togglingIds,_serviceFavoriteIds = serviceFavoriteIds,_serviceTogglingIds = serviceTogglingIds,super._();
  

@override@JsonKey() final  FavoriteStatus status;
@override@JsonKey() final  FavoriteStatus serviceStatus;
@override@JsonKey() final  PaginatedResponse<ProductEntity> favorites;
@override@JsonKey() final  PaginatedResponse<ServiceEntity> serviceFavorites;
 final  Set<int> _favoriteIds;
@override@JsonKey() Set<int> get favoriteIds {
  if (_favoriteIds is EqualUnmodifiableSetView) return _favoriteIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_favoriteIds);
}

 final  Set<int> _togglingIds;
@override@JsonKey() Set<int> get togglingIds {
  if (_togglingIds is EqualUnmodifiableSetView) return _togglingIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_togglingIds);
}

 final  Set<int> _serviceFavoriteIds;
@override@JsonKey() Set<int> get serviceFavoriteIds {
  if (_serviceFavoriteIds is EqualUnmodifiableSetView) return _serviceFavoriteIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_serviceFavoriteIds);
}

 final  Set<int> _serviceTogglingIds;
@override@JsonKey() Set<int> get serviceTogglingIds {
  if (_serviceTogglingIds is EqualUnmodifiableSetView) return _serviceTogglingIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_serviceTogglingIds);
}

@override final  Failure? failure;
@override final  Failure? serviceFailure;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool isServiceLoadingMore;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteStateCopyWith<_FavoriteState> get copyWith => __$FavoriteStateCopyWithImpl<_FavoriteState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteState&&(identical(other.status, status) || other.status == status)&&(identical(other.serviceStatus, serviceStatus) || other.serviceStatus == serviceStatus)&&(identical(other.favorites, favorites) || other.favorites == favorites)&&(identical(other.serviceFavorites, serviceFavorites) || other.serviceFavorites == serviceFavorites)&&const DeepCollectionEquality().equals(other.favoriteIds, _favoriteIds)&&const DeepCollectionEquality().equals(other.togglingIds, _togglingIds)&&const DeepCollectionEquality().equals(other.serviceFavoriteIds, _serviceFavoriteIds)&&const DeepCollectionEquality().equals(other.serviceTogglingIds, _serviceTogglingIds)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.serviceFailure, serviceFailure) || other.serviceFailure == serviceFailure)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isServiceLoadingMore, isServiceLoadingMore) || other.isServiceLoadingMore == isServiceLoadingMore));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,serviceStatus,favorites,serviceFavorites,const DeepCollectionEquality().hash(_favoriteIds),const DeepCollectionEquality().hash(_togglingIds),const DeepCollectionEquality().hash(_serviceFavoriteIds),const DeepCollectionEquality().hash(_serviceTogglingIds),failure,serviceFailure,isLoadingMore,isServiceLoadingMore);
}

@override
String toString() {
    return 'FavoriteState(status: $status, serviceStatus: $serviceStatus, favorites: $favorites, serviceFavorites: $serviceFavorites, favoriteIds: $favoriteIds, togglingIds: $togglingIds, serviceFavoriteIds: $serviceFavoriteIds, serviceTogglingIds: $serviceTogglingIds, failure: $failure, serviceFailure: $serviceFailure, isLoadingMore: $isLoadingMore, isServiceLoadingMore: $isServiceLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$FavoriteStateCopyWith<$Res> implements $FavoriteStateCopyWith<$Res> {
  factory _$FavoriteStateCopyWith(_FavoriteState value, $Res Function(_FavoriteState) _then) = __$FavoriteStateCopyWithImpl;
@override @useResult
$Res call({
 FavoriteStatus status, FavoriteStatus serviceStatus, PaginatedResponse<ProductEntity> favorites, PaginatedResponse<ServiceEntity> serviceFavorites, Set<int> favoriteIds, Set<int> togglingIds, Set<int> serviceFavoriteIds, Set<int> serviceTogglingIds, Failure? failure, Failure? serviceFailure, bool isLoadingMore, bool isServiceLoadingMore
});


@override $PaginatedResponseCopyWith<ProductEntity, $Res> get favorites;@override $PaginatedResponseCopyWith<ServiceEntity, $Res> get serviceFavorites;@override $FailureCopyWith<$Res>? get failure;@override $FailureCopyWith<$Res>? get serviceFailure;

}
/// @nodoc
class __$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteStateCopyWith<$Res> {
  __$FavoriteStateCopyWithImpl(this._self, this._then);

  final _FavoriteState _self;
  final $Res Function(_FavoriteState) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? serviceStatus = null,Object? favorites = null,Object? serviceFavorites = null,Object? favoriteIds = null,Object? togglingIds = null,Object? serviceFavoriteIds = null,Object? serviceTogglingIds = null,Object? failure = freezed,Object? serviceFailure = freezed,Object? isLoadingMore = null,Object? isServiceLoadingMore = null,}) {
  return _then(_FavoriteState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,serviceStatus: null == serviceStatus ? _self.serviceStatus : serviceStatus // ignore: cast_nullable_to_non_nullable
as FavoriteStatus,favorites: null == favorites ? _self.favorites : favorites // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,serviceFavorites: null == serviceFavorites ? _self.serviceFavorites : serviceFavorites // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ServiceEntity>,favoriteIds: null == favoriteIds ? _self._favoriteIds : favoriteIds // ignore: cast_nullable_to_non_nullable
as Set<int>,togglingIds: null == togglingIds ? _self._togglingIds : togglingIds // ignore: cast_nullable_to_non_nullable
as Set<int>,serviceFavoriteIds: null == serviceFavoriteIds ? _self._serviceFavoriteIds : serviceFavoriteIds // ignore: cast_nullable_to_non_nullable
as Set<int>,serviceTogglingIds: null == serviceTogglingIds ? _self._serviceTogglingIds : serviceTogglingIds // ignore: cast_nullable_to_non_nullable
as Set<int>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,serviceFailure: freezed == serviceFailure ? _self.serviceFailure : serviceFailure // ignore: cast_nullable_to_non_nullable
as Failure?,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isServiceLoadingMore: null == isServiceLoadingMore ? _self.isServiceLoadingMore : isServiceLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductEntity, $Res> get favorites {
  
  return $PaginatedResponseCopyWith<ProductEntity, $Res>(_self.favorites, (value) {
    return _then(_self.copyWith(favorites: value));
  });
}/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ServiceEntity, $Res> get serviceFavorites {
  
  return $PaginatedResponseCopyWith<ServiceEntity, $Res>(_self.serviceFavorites, (value) {
    return _then(_self.copyWith(serviceFavorites: value));
  });
}/// Create a copy of FavoriteState
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
}/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res>? get serviceFailure {
    if (_self.serviceFailure == null) {
    return null;
  }

  return $FailureCopyWith<$Res>(_self.serviceFailure!, (value) {
    return _then(_self.copyWith(serviceFailure: value));
  });
}
}

// dart format on
