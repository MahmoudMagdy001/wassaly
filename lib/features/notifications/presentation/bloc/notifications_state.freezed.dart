// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationsState {

 AppStatus get status; List<NotificationEntity> get notifications; String? get errorMessage; AppStatus get actionStatus; int get currentPage; bool get hasMore; bool get isLoadingMore; int get unreadCount; bool get isNotificationEnabled;
/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsStateCopyWith<NotificationsState> get copyWith => _$NotificationsStateCopyWithImpl<NotificationsState>(this as NotificationsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsState&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.notifications, _this.notifications)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.actionStatus, _this.actionStatus) || other.actionStatus == _this.actionStatus)&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.hasMore, _this.hasMore) || other.hasMore == _this.hasMore)&&(identical(other.isLoadingMore, _this.isLoadingMore) || other.isLoadingMore == _this.isLoadingMore)&&(identical(other.unreadCount, _this.unreadCount) || other.unreadCount == _this.unreadCount)&&(identical(other.isNotificationEnabled, _this.isNotificationEnabled) || other.isNotificationEnabled == _this.isNotificationEnabled));
}


@override
int get hashCode {
  final _this = this as NotificationsState;
  return Object.hash(runtimeType,_this.status,const DeepCollectionEquality().hash(_this.notifications),_this.errorMessage,_this.actionStatus,_this.currentPage,_this.hasMore,_this.isLoadingMore,_this.unreadCount,_this.isNotificationEnabled);
}

@override
String toString() {
  final _this = this as NotificationsState;
  return 'NotificationsState(status: ${_this.status}, notifications: ${_this.notifications}, errorMessage: ${_this.errorMessage}, actionStatus: ${_this.actionStatus}, currentPage: ${_this.currentPage}, hasMore: ${_this.hasMore}, isLoadingMore: ${_this.isLoadingMore}, unreadCount: ${_this.unreadCount}, isNotificationEnabled: ${_this.isNotificationEnabled})';
}


}

/// @nodoc
abstract mixin class $NotificationsStateCopyWith<$Res>  {
  factory $NotificationsStateCopyWith(NotificationsState value, $Res Function(NotificationsState) _then) = _$NotificationsStateCopyWithImpl;
@useResult
$Res call({
 AppStatus status, List<NotificationEntity> notifications, String? errorMessage, AppStatus actionStatus, int currentPage, bool hasMore, bool isLoadingMore, int unreadCount, bool isNotificationEnabled
});




}
/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._self, this._then);

  final NotificationsState _self;
  final $Res Function(NotificationsState) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? notifications = null,Object? errorMessage = freezed,Object? actionStatus = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? unreadCount = null,Object? isNotificationEnabled = null,}) {
  return _then(NotificationsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,notifications: null == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,isNotificationEnabled: null == isNotificationEnabled ? _self.isNotificationEnabled : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationsState].
extension NotificationsStatePatterns on NotificationsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationsState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationsState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppStatus status,  List<NotificationEntity> notifications,  String? errorMessage,  AppStatus actionStatus,  int currentPage,  bool hasMore,  bool isLoadingMore,  int unreadCount,  bool isNotificationEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationsState() when $default != null:
return $default(_that.status,_that.notifications,_that.errorMessage,_that.actionStatus,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.unreadCount,_that.isNotificationEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppStatus status,  List<NotificationEntity> notifications,  String? errorMessage,  AppStatus actionStatus,  int currentPage,  bool hasMore,  bool isLoadingMore,  int unreadCount,  bool isNotificationEnabled)  $default,) {final _that = this;
switch (_that) {
case _NotificationsState():
return $default(_that.status,_that.notifications,_that.errorMessage,_that.actionStatus,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.unreadCount,_that.isNotificationEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppStatus status,  List<NotificationEntity> notifications,  String? errorMessage,  AppStatus actionStatus,  int currentPage,  bool hasMore,  bool isLoadingMore,  int unreadCount,  bool isNotificationEnabled)?  $default,) {final _that = this;
switch (_that) {
case _NotificationsState() when $default != null:
return $default(_that.status,_that.notifications,_that.errorMessage,_that.actionStatus,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.unreadCount,_that.isNotificationEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationsState implements NotificationsState {
  const _NotificationsState({this.status = AppStatus.initial,  List<NotificationEntity> notifications = const [], this.errorMessage, this.actionStatus = AppStatus.initial, this.currentPage = 1, this.hasMore = true, this.isLoadingMore = false, this.unreadCount = 0, this.isNotificationEnabled = true}): _notifications = notifications;
  

@override@JsonKey() final  AppStatus status;
 final  List<NotificationEntity> _notifications;
@override@JsonKey() List<NotificationEntity> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override final  String? errorMessage;
@override@JsonKey() final  AppStatus actionStatus;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  int unreadCount;
@override@JsonKey() final  bool isNotificationEnabled;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationsStateCopyWith<_NotificationsState> get copyWith => __$NotificationsStateCopyWithImpl<_NotificationsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.notifications, _notifications)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.isNotificationEnabled, isNotificationEnabled) || other.isNotificationEnabled == isNotificationEnabled));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_notifications),errorMessage,actionStatus,currentPage,hasMore,isLoadingMore,unreadCount,isNotificationEnabled);
}

@override
String toString() {
    return 'NotificationsState(status: $status, notifications: $notifications, errorMessage: $errorMessage, actionStatus: $actionStatus, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore, unreadCount: $unreadCount, isNotificationEnabled: $isNotificationEnabled)';
}


}

/// @nodoc
abstract mixin class _$NotificationsStateCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory _$NotificationsStateCopyWith(_NotificationsState value, $Res Function(_NotificationsState) _then) = __$NotificationsStateCopyWithImpl;
@override @useResult
$Res call({
 AppStatus status, List<NotificationEntity> notifications, String? errorMessage, AppStatus actionStatus, int currentPage, bool hasMore, bool isLoadingMore, int unreadCount, bool isNotificationEnabled
});




}
/// @nodoc
class __$NotificationsStateCopyWithImpl<$Res>
    implements _$NotificationsStateCopyWith<$Res> {
  __$NotificationsStateCopyWithImpl(this._self, this._then);

  final _NotificationsState _self;
  final $Res Function(_NotificationsState) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? notifications = null,Object? errorMessage = freezed,Object? actionStatus = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? unreadCount = null,Object? isNotificationEnabled = null,}) {
  return _then(_NotificationsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,notifications: null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,isNotificationEnabled: null == isNotificationEnabled ? _self.isNotificationEnabled : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
