// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServiceDetailsState {

 ServiceDetailsStatus get status; ReviewActionStatus get reviewActionStatus; ServiceDetailEntity? get service; String? get errorMessage; String get reviewActionMessage; bool get isFavoriteLoading;
/// Create a copy of ServiceDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceDetailsStateCopyWith<ServiceDetailsState> get copyWith => _$ServiceDetailsStateCopyWithImpl<ServiceDetailsState>(this as ServiceDetailsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ServiceDetailsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceDetailsState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reviewActionStatus, _this.reviewActionStatus) || other.reviewActionStatus == _this.reviewActionStatus)&&(identical(other.service, _this.service) || other.service == _this.service)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.reviewActionMessage, _this.reviewActionMessage) || other.reviewActionMessage == _this.reviewActionMessage)&&(identical(other.isFavoriteLoading, _this.isFavoriteLoading) || other.isFavoriteLoading == _this.isFavoriteLoading));
}


@override
int get hashCode {
  final _this = this as ServiceDetailsState;
  return Object.hash(runtimeType,_this.status,_this.reviewActionStatus,_this.service,_this.errorMessage,_this.reviewActionMessage,_this.isFavoriteLoading);
}

@override
String toString() {
  final _this = this as ServiceDetailsState;
  return 'ServiceDetailsState(status: ${_this.status}, reviewActionStatus: ${_this.reviewActionStatus}, service: ${_this.service}, errorMessage: ${_this.errorMessage}, reviewActionMessage: ${_this.reviewActionMessage}, isFavoriteLoading: ${_this.isFavoriteLoading})';
}


}

/// @nodoc
abstract mixin class $ServiceDetailsStateCopyWith<$Res>  {
  factory $ServiceDetailsStateCopyWith(ServiceDetailsState value, $Res Function(ServiceDetailsState) _then) = _$ServiceDetailsStateCopyWithImpl;
@useResult
$Res call({
 ServiceDetailsStatus status, ReviewActionStatus reviewActionStatus, ServiceDetailEntity? service, String? errorMessage, String reviewActionMessage, bool isFavoriteLoading
});


$ServiceDetailEntityCopyWith<$Res>? get service;

}
/// @nodoc
class _$ServiceDetailsStateCopyWithImpl<$Res>
    implements $ServiceDetailsStateCopyWith<$Res> {
  _$ServiceDetailsStateCopyWithImpl(this._self, this._then);

  final ServiceDetailsState _self;
  final $Res Function(ServiceDetailsState) _then;

/// Create a copy of ServiceDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? reviewActionStatus = null,Object? service = freezed,Object? errorMessage = freezed,Object? reviewActionMessage = null,Object? isFavoriteLoading = null,}) {
  return _then(ServiceDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServiceDetailsStatus,reviewActionStatus: null == reviewActionStatus ? _self.reviewActionStatus : reviewActionStatus // ignore: cast_nullable_to_non_nullable
as ReviewActionStatus,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceDetailEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,reviewActionMessage: null == reviewActionMessage ? _self.reviewActionMessage : reviewActionMessage // ignore: cast_nullable_to_non_nullable
as String,isFavoriteLoading: null == isFavoriteLoading ? _self.isFavoriteLoading : isFavoriteLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ServiceDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceDetailEntityCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceDetailEntityCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServiceDetailsState].
extension ServiceDetailsStatePatterns on ServiceDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ServiceDetailsStatus status,  ReviewActionStatus reviewActionStatus,  ServiceDetailEntity? service,  String? errorMessage,  String reviewActionMessage,  bool isFavoriteLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceDetailsState() when $default != null:
return $default(_that.status,_that.reviewActionStatus,_that.service,_that.errorMessage,_that.reviewActionMessage,_that.isFavoriteLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ServiceDetailsStatus status,  ReviewActionStatus reviewActionStatus,  ServiceDetailEntity? service,  String? errorMessage,  String reviewActionMessage,  bool isFavoriteLoading)  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailsState():
return $default(_that.status,_that.reviewActionStatus,_that.service,_that.errorMessage,_that.reviewActionMessage,_that.isFavoriteLoading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ServiceDetailsStatus status,  ReviewActionStatus reviewActionStatus,  ServiceDetailEntity? service,  String? errorMessage,  String reviewActionMessage,  bool isFavoriteLoading)?  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailsState() when $default != null:
return $default(_that.status,_that.reviewActionStatus,_that.service,_that.errorMessage,_that.reviewActionMessage,_that.isFavoriteLoading);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceDetailsState implements ServiceDetailsState {
  const _ServiceDetailsState({this.status = ServiceDetailsStatus.initial, this.reviewActionStatus = ReviewActionStatus.initial, this.service, this.errorMessage, this.reviewActionMessage = '', this.isFavoriteLoading = false});
  

@override@JsonKey() final  ServiceDetailsStatus status;
@override@JsonKey() final  ReviewActionStatus reviewActionStatus;
@override final  ServiceDetailEntity? service;
@override final  String? errorMessage;
@override@JsonKey() final  String reviewActionMessage;
@override@JsonKey() final  bool isFavoriteLoading;

/// Create a copy of ServiceDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceDetailsStateCopyWith<_ServiceDetailsState> get copyWith => __$ServiceDetailsStateCopyWithImpl<_ServiceDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.reviewActionStatus, reviewActionStatus) || other.reviewActionStatus == reviewActionStatus)&&(identical(other.service, service) || other.service == service)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.reviewActionMessage, reviewActionMessage) || other.reviewActionMessage == reviewActionMessage)&&(identical(other.isFavoriteLoading, isFavoriteLoading) || other.isFavoriteLoading == isFavoriteLoading));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,reviewActionStatus,service,errorMessage,reviewActionMessage,isFavoriteLoading);
}

@override
String toString() {
    return 'ServiceDetailsState(status: $status, reviewActionStatus: $reviewActionStatus, service: $service, errorMessage: $errorMessage, reviewActionMessage: $reviewActionMessage, isFavoriteLoading: $isFavoriteLoading)';
}


}

/// @nodoc
abstract mixin class _$ServiceDetailsStateCopyWith<$Res> implements $ServiceDetailsStateCopyWith<$Res> {
  factory _$ServiceDetailsStateCopyWith(_ServiceDetailsState value, $Res Function(_ServiceDetailsState) _then) = __$ServiceDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 ServiceDetailsStatus status, ReviewActionStatus reviewActionStatus, ServiceDetailEntity? service, String? errorMessage, String reviewActionMessage, bool isFavoriteLoading
});


@override $ServiceDetailEntityCopyWith<$Res>? get service;

}
/// @nodoc
class __$ServiceDetailsStateCopyWithImpl<$Res>
    implements _$ServiceDetailsStateCopyWith<$Res> {
  __$ServiceDetailsStateCopyWithImpl(this._self, this._then);

  final _ServiceDetailsState _self;
  final $Res Function(_ServiceDetailsState) _then;

/// Create a copy of ServiceDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? reviewActionStatus = null,Object? service = freezed,Object? errorMessage = freezed,Object? reviewActionMessage = null,Object? isFavoriteLoading = null,}) {
  return _then(_ServiceDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServiceDetailsStatus,reviewActionStatus: null == reviewActionStatus ? _self.reviewActionStatus : reviewActionStatus // ignore: cast_nullable_to_non_nullable
as ReviewActionStatus,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceDetailEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,reviewActionMessage: null == reviewActionMessage ? _self.reviewActionMessage : reviewActionMessage // ignore: cast_nullable_to_non_nullable
as String,isFavoriteLoading: null == isFavoriteLoading ? _self.isFavoriteLoading : isFavoriteLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ServiceDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceDetailEntityCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceDetailEntityCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}
}

// dart format on
