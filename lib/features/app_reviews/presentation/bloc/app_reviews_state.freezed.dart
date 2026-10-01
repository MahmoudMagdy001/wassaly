// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_reviews_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppReviewsState {

 AppStatus get status; List<AppReviewEntity> get reviews; String? get errorMessage; AppStatus get actionStatus; String? get actionErrorMessage; int? get currentUserId;
/// Create a copy of AppReviewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppReviewsStateCopyWith<AppReviewsState> get copyWith => _$AppReviewsStateCopyWithImpl<AppReviewsState>(this as AppReviewsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AppReviewsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppReviewsState&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.reviews, _this.reviews)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.actionStatus, _this.actionStatus) || other.actionStatus == _this.actionStatus)&&(identical(other.actionErrorMessage, _this.actionErrorMessage) || other.actionErrorMessage == _this.actionErrorMessage)&&(identical(other.currentUserId, _this.currentUserId) || other.currentUserId == _this.currentUserId));
}


@override
int get hashCode {
  final _this = this as AppReviewsState;
  return Object.hash(runtimeType,_this.status,const DeepCollectionEquality().hash(_this.reviews),_this.errorMessage,_this.actionStatus,_this.actionErrorMessage,_this.currentUserId);
}

@override
String toString() {
  final _this = this as AppReviewsState;
  return 'AppReviewsState(status: ${_this.status}, reviews: ${_this.reviews}, errorMessage: ${_this.errorMessage}, actionStatus: ${_this.actionStatus}, actionErrorMessage: ${_this.actionErrorMessage}, currentUserId: ${_this.currentUserId})';
}


}

/// @nodoc
abstract mixin class $AppReviewsStateCopyWith<$Res>  {
  factory $AppReviewsStateCopyWith(AppReviewsState value, $Res Function(AppReviewsState) _then) = _$AppReviewsStateCopyWithImpl;
@useResult
$Res call({
 AppStatus status, List<AppReviewEntity> reviews, String? errorMessage, AppStatus actionStatus, String? actionErrorMessage, int? currentUserId
});




}
/// @nodoc
class _$AppReviewsStateCopyWithImpl<$Res>
    implements $AppReviewsStateCopyWith<$Res> {
  _$AppReviewsStateCopyWithImpl(this._self, this._then);

  final AppReviewsState _self;
  final $Res Function(AppReviewsState) _then;

/// Create a copy of AppReviewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? reviews = null,Object? errorMessage = freezed,Object? actionStatus = null,Object? actionErrorMessage = freezed,Object? currentUserId = freezed,}) {
  return _then(AppReviewsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<AppReviewEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,actionErrorMessage: freezed == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,currentUserId: freezed == currentUserId ? _self.currentUserId : currentUserId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppReviewsState].
extension AppReviewsStatePatterns on AppReviewsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppReviewsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppReviewsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppReviewsState value)  $default,){
final _that = this;
switch (_that) {
case _AppReviewsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppReviewsState value)?  $default,){
final _that = this;
switch (_that) {
case _AppReviewsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppStatus status,  List<AppReviewEntity> reviews,  String? errorMessage,  AppStatus actionStatus,  String? actionErrorMessage,  int? currentUserId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppReviewsState() when $default != null:
return $default(_that.status,_that.reviews,_that.errorMessage,_that.actionStatus,_that.actionErrorMessage,_that.currentUserId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppStatus status,  List<AppReviewEntity> reviews,  String? errorMessage,  AppStatus actionStatus,  String? actionErrorMessage,  int? currentUserId)  $default,) {final _that = this;
switch (_that) {
case _AppReviewsState():
return $default(_that.status,_that.reviews,_that.errorMessage,_that.actionStatus,_that.actionErrorMessage,_that.currentUserId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppStatus status,  List<AppReviewEntity> reviews,  String? errorMessage,  AppStatus actionStatus,  String? actionErrorMessage,  int? currentUserId)?  $default,) {final _that = this;
switch (_that) {
case _AppReviewsState() when $default != null:
return $default(_that.status,_that.reviews,_that.errorMessage,_that.actionStatus,_that.actionErrorMessage,_that.currentUserId);case _:
  return null;

}
}

}

/// @nodoc


class _AppReviewsState implements AppReviewsState {
  const _AppReviewsState({this.status = AppStatus.initial,  List<AppReviewEntity> reviews = const [], this.errorMessage, this.actionStatus = AppStatus.initial, this.actionErrorMessage, this.currentUserId}): _reviews = reviews;
  

@override@JsonKey() final  AppStatus status;
 final  List<AppReviewEntity> _reviews;
@override@JsonKey() List<AppReviewEntity> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override final  String? errorMessage;
@override@JsonKey() final  AppStatus actionStatus;
@override final  String? actionErrorMessage;
@override final  int? currentUserId;

/// Create a copy of AppReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppReviewsStateCopyWith<_AppReviewsState> get copyWith => __$AppReviewsStateCopyWithImpl<_AppReviewsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppReviewsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.reviews, _reviews)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.actionErrorMessage, actionErrorMessage) || other.actionErrorMessage == actionErrorMessage)&&(identical(other.currentUserId, currentUserId) || other.currentUserId == currentUserId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_reviews),errorMessage,actionStatus,actionErrorMessage,currentUserId);
}

@override
String toString() {
    return 'AppReviewsState(status: $status, reviews: $reviews, errorMessage: $errorMessage, actionStatus: $actionStatus, actionErrorMessage: $actionErrorMessage, currentUserId: $currentUserId)';
}


}

/// @nodoc
abstract mixin class _$AppReviewsStateCopyWith<$Res> implements $AppReviewsStateCopyWith<$Res> {
  factory _$AppReviewsStateCopyWith(_AppReviewsState value, $Res Function(_AppReviewsState) _then) = __$AppReviewsStateCopyWithImpl;
@override @useResult
$Res call({
 AppStatus status, List<AppReviewEntity> reviews, String? errorMessage, AppStatus actionStatus, String? actionErrorMessage, int? currentUserId
});




}
/// @nodoc
class __$AppReviewsStateCopyWithImpl<$Res>
    implements _$AppReviewsStateCopyWith<$Res> {
  __$AppReviewsStateCopyWithImpl(this._self, this._then);

  final _AppReviewsState _self;
  final $Res Function(_AppReviewsState) _then;

/// Create a copy of AppReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? reviews = null,Object? errorMessage = freezed,Object? actionStatus = null,Object? actionErrorMessage = freezed,Object? currentUserId = freezed,}) {
  return _then(_AppReviewsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<AppReviewEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,actionErrorMessage: freezed == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,currentUserId: freezed == currentUserId ? _self.currentUserId : currentUserId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
