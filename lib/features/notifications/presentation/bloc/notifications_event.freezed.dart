// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationsEvent()';
}


}

/// @nodoc
class $NotificationsEventCopyWith<$Res>  {
$NotificationsEventCopyWith(NotificationsEvent _, $Res Function(NotificationsEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationsEvent].
extension NotificationsEventPatterns on NotificationsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetNotificationsEvent value)?  getNotifications,TResult Function( LoadMoreNotificationsEvent value)?  loadMore,TResult Function( MarkAsReadEvent value)?  markAsRead,TResult Function( DeleteNotificationEvent value)?  deleteNotification,TResult Function( ReadAllNotificationsEvent value)?  readAll,TResult Function( DeleteAllNotificationsEvent value)?  deleteAll,TResult Function( NotificationReceivedEvent value)?  notificationReceived,TResult Function( GetNotificationStatusEvent value)?  getStatus,TResult Function( ToggleNotificationEvent value)?  toggle,TResult Function( ResetNotificationsEvent value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetNotificationsEvent() when getNotifications != null:
return getNotifications(_that);case LoadMoreNotificationsEvent() when loadMore != null:
return loadMore(_that);case MarkAsReadEvent() when markAsRead != null:
return markAsRead(_that);case DeleteNotificationEvent() when deleteNotification != null:
return deleteNotification(_that);case ReadAllNotificationsEvent() when readAll != null:
return readAll(_that);case DeleteAllNotificationsEvent() when deleteAll != null:
return deleteAll(_that);case NotificationReceivedEvent() when notificationReceived != null:
return notificationReceived(_that);case GetNotificationStatusEvent() when getStatus != null:
return getStatus(_that);case ToggleNotificationEvent() when toggle != null:
return toggle(_that);case ResetNotificationsEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetNotificationsEvent value)  getNotifications,required TResult Function( LoadMoreNotificationsEvent value)  loadMore,required TResult Function( MarkAsReadEvent value)  markAsRead,required TResult Function( DeleteNotificationEvent value)  deleteNotification,required TResult Function( ReadAllNotificationsEvent value)  readAll,required TResult Function( DeleteAllNotificationsEvent value)  deleteAll,required TResult Function( NotificationReceivedEvent value)  notificationReceived,required TResult Function( GetNotificationStatusEvent value)  getStatus,required TResult Function( ToggleNotificationEvent value)  toggle,required TResult Function( ResetNotificationsEvent value)  reset,}){
final _that = this;
switch (_that) {
case GetNotificationsEvent():
return getNotifications(_that);case LoadMoreNotificationsEvent():
return loadMore(_that);case MarkAsReadEvent():
return markAsRead(_that);case DeleteNotificationEvent():
return deleteNotification(_that);case ReadAllNotificationsEvent():
return readAll(_that);case DeleteAllNotificationsEvent():
return deleteAll(_that);case NotificationReceivedEvent():
return notificationReceived(_that);case GetNotificationStatusEvent():
return getStatus(_that);case ToggleNotificationEvent():
return toggle(_that);case ResetNotificationsEvent():
return reset(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetNotificationsEvent value)?  getNotifications,TResult? Function( LoadMoreNotificationsEvent value)?  loadMore,TResult? Function( MarkAsReadEvent value)?  markAsRead,TResult? Function( DeleteNotificationEvent value)?  deleteNotification,TResult? Function( ReadAllNotificationsEvent value)?  readAll,TResult? Function( DeleteAllNotificationsEvent value)?  deleteAll,TResult? Function( NotificationReceivedEvent value)?  notificationReceived,TResult? Function( GetNotificationStatusEvent value)?  getStatus,TResult? Function( ToggleNotificationEvent value)?  toggle,TResult? Function( ResetNotificationsEvent value)?  reset,}){
final _that = this;
switch (_that) {
case GetNotificationsEvent() when getNotifications != null:
return getNotifications(_that);case LoadMoreNotificationsEvent() when loadMore != null:
return loadMore(_that);case MarkAsReadEvent() when markAsRead != null:
return markAsRead(_that);case DeleteNotificationEvent() when deleteNotification != null:
return deleteNotification(_that);case ReadAllNotificationsEvent() when readAll != null:
return readAll(_that);case DeleteAllNotificationsEvent() when deleteAll != null:
return deleteAll(_that);case NotificationReceivedEvent() when notificationReceived != null:
return notificationReceived(_that);case GetNotificationStatusEvent() when getStatus != null:
return getStatus(_that);case ToggleNotificationEvent() when toggle != null:
return toggle(_that);case ResetNotificationsEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isRefresh)?  getNotifications,TResult Function()?  loadMore,TResult Function( int id)?  markAsRead,TResult Function( int id)?  deleteNotification,TResult Function()?  readAll,TResult Function()?  deleteAll,TResult Function( Map<String, dynamic> data)?  notificationReceived,TResult Function()?  getStatus,TResult Function( bool isEnabled)?  toggle,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetNotificationsEvent() when getNotifications != null:
return getNotifications(_that.isRefresh);case LoadMoreNotificationsEvent() when loadMore != null:
return loadMore();case MarkAsReadEvent() when markAsRead != null:
return markAsRead(_that.id);case DeleteNotificationEvent() when deleteNotification != null:
return deleteNotification(_that.id);case ReadAllNotificationsEvent() when readAll != null:
return readAll();case DeleteAllNotificationsEvent() when deleteAll != null:
return deleteAll();case NotificationReceivedEvent() when notificationReceived != null:
return notificationReceived(_that.data);case GetNotificationStatusEvent() when getStatus != null:
return getStatus();case ToggleNotificationEvent() when toggle != null:
return toggle(_that.isEnabled);case ResetNotificationsEvent() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isRefresh)  getNotifications,required TResult Function()  loadMore,required TResult Function( int id)  markAsRead,required TResult Function( int id)  deleteNotification,required TResult Function()  readAll,required TResult Function()  deleteAll,required TResult Function( Map<String, dynamic> data)  notificationReceived,required TResult Function()  getStatus,required TResult Function( bool isEnabled)  toggle,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case GetNotificationsEvent():
return getNotifications(_that.isRefresh);case LoadMoreNotificationsEvent():
return loadMore();case MarkAsReadEvent():
return markAsRead(_that.id);case DeleteNotificationEvent():
return deleteNotification(_that.id);case ReadAllNotificationsEvent():
return readAll();case DeleteAllNotificationsEvent():
return deleteAll();case NotificationReceivedEvent():
return notificationReceived(_that.data);case GetNotificationStatusEvent():
return getStatus();case ToggleNotificationEvent():
return toggle(_that.isEnabled);case ResetNotificationsEvent():
return reset();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isRefresh)?  getNotifications,TResult? Function()?  loadMore,TResult? Function( int id)?  markAsRead,TResult? Function( int id)?  deleteNotification,TResult? Function()?  readAll,TResult? Function()?  deleteAll,TResult? Function( Map<String, dynamic> data)?  notificationReceived,TResult? Function()?  getStatus,TResult? Function( bool isEnabled)?  toggle,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case GetNotificationsEvent() when getNotifications != null:
return getNotifications(_that.isRefresh);case LoadMoreNotificationsEvent() when loadMore != null:
return loadMore();case MarkAsReadEvent() when markAsRead != null:
return markAsRead(_that.id);case DeleteNotificationEvent() when deleteNotification != null:
return deleteNotification(_that.id);case ReadAllNotificationsEvent() when readAll != null:
return readAll();case DeleteAllNotificationsEvent() when deleteAll != null:
return deleteAll();case NotificationReceivedEvent() when notificationReceived != null:
return notificationReceived(_that.data);case GetNotificationStatusEvent() when getStatus != null:
return getStatus();case ToggleNotificationEvent() when toggle != null:
return toggle(_that.isEnabled);case ResetNotificationsEvent() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class GetNotificationsEvent implements NotificationsEvent {
  const GetNotificationsEvent({this.isRefresh = false});
  

@JsonKey() final  bool isRefresh;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNotificationsEventCopyWith<GetNotificationsEvent> get copyWith => _$GetNotificationsEventCopyWithImpl<GetNotificationsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotificationsEvent&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isRefresh);
}

@override
String toString() {
    return 'NotificationsEvent.getNotifications(isRefresh: $isRefresh)';
}


}

/// @nodoc
abstract mixin class $GetNotificationsEventCopyWith<$Res> implements $NotificationsEventCopyWith<$Res> {
  factory $GetNotificationsEventCopyWith(GetNotificationsEvent value, $Res Function(GetNotificationsEvent) _then) = _$GetNotificationsEventCopyWithImpl;
@useResult
$Res call({
 bool isRefresh
});




}
/// @nodoc
class _$GetNotificationsEventCopyWithImpl<$Res>
    implements $GetNotificationsEventCopyWith<$Res> {
  _$GetNotificationsEventCopyWithImpl(this._self, this._then);

  final GetNotificationsEvent _self;
  final $Res Function(GetNotificationsEvent) _then;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isRefresh = null,}) {
  return _then(GetNotificationsEvent(
isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoadMoreNotificationsEvent implements NotificationsEvent {
  const LoadMoreNotificationsEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreNotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationsEvent.loadMore()';
}


}




/// @nodoc


class MarkAsReadEvent implements NotificationsEvent {
  const MarkAsReadEvent(this.id);
  

 final  int id;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkAsReadEventCopyWith<MarkAsReadEvent> get copyWith => _$MarkAsReadEventCopyWithImpl<MarkAsReadEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkAsReadEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'NotificationsEvent.markAsRead(id: $id)';
}


}

/// @nodoc
abstract mixin class $MarkAsReadEventCopyWith<$Res> implements $NotificationsEventCopyWith<$Res> {
  factory $MarkAsReadEventCopyWith(MarkAsReadEvent value, $Res Function(MarkAsReadEvent) _then) = _$MarkAsReadEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$MarkAsReadEventCopyWithImpl<$Res>
    implements $MarkAsReadEventCopyWith<$Res> {
  _$MarkAsReadEventCopyWithImpl(this._self, this._then);

  final MarkAsReadEvent _self;
  final $Res Function(MarkAsReadEvent) _then;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(MarkAsReadEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class DeleteNotificationEvent implements NotificationsEvent {
  const DeleteNotificationEvent(this.id);
  

 final  int id;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteNotificationEventCopyWith<DeleteNotificationEvent> get copyWith => _$DeleteNotificationEventCopyWithImpl<DeleteNotificationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNotificationEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id);
}

@override
String toString() {
    return 'NotificationsEvent.deleteNotification(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteNotificationEventCopyWith<$Res> implements $NotificationsEventCopyWith<$Res> {
  factory $DeleteNotificationEventCopyWith(DeleteNotificationEvent value, $Res Function(DeleteNotificationEvent) _then) = _$DeleteNotificationEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteNotificationEventCopyWithImpl<$Res>
    implements $DeleteNotificationEventCopyWith<$Res> {
  _$DeleteNotificationEventCopyWithImpl(this._self, this._then);

  final DeleteNotificationEvent _self;
  final $Res Function(DeleteNotificationEvent) _then;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteNotificationEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ReadAllNotificationsEvent implements NotificationsEvent {
  const ReadAllNotificationsEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadAllNotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationsEvent.readAll()';
}


}




/// @nodoc


class DeleteAllNotificationsEvent implements NotificationsEvent {
  const DeleteAllNotificationsEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAllNotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationsEvent.deleteAll()';
}


}




/// @nodoc


class NotificationReceivedEvent implements NotificationsEvent {
  const NotificationReceivedEvent( Map<String, dynamic> data): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationReceivedEventCopyWith<NotificationReceivedEvent> get copyWith => _$NotificationReceivedEventCopyWithImpl<NotificationReceivedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationReceivedEvent&&const DeepCollectionEquality().equals(other.data, _data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'NotificationsEvent.notificationReceived(data: $data)';
}


}

/// @nodoc
abstract mixin class $NotificationReceivedEventCopyWith<$Res> implements $NotificationsEventCopyWith<$Res> {
  factory $NotificationReceivedEventCopyWith(NotificationReceivedEvent value, $Res Function(NotificationReceivedEvent) _then) = _$NotificationReceivedEventCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$NotificationReceivedEventCopyWithImpl<$Res>
    implements $NotificationReceivedEventCopyWith<$Res> {
  _$NotificationReceivedEventCopyWithImpl(this._self, this._then);

  final NotificationReceivedEvent _self;
  final $Res Function(NotificationReceivedEvent) _then;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(NotificationReceivedEvent(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class GetNotificationStatusEvent implements NotificationsEvent {
  const GetNotificationStatusEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotificationStatusEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationsEvent.getStatus()';
}


}




/// @nodoc


class ToggleNotificationEvent implements NotificationsEvent {
  const ToggleNotificationEvent({required this.isEnabled});
  

 final  bool isEnabled;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleNotificationEventCopyWith<ToggleNotificationEvent> get copyWith => _$ToggleNotificationEventCopyWithImpl<ToggleNotificationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleNotificationEvent&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isEnabled);
}

@override
String toString() {
    return 'NotificationsEvent.toggle(isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class $ToggleNotificationEventCopyWith<$Res> implements $NotificationsEventCopyWith<$Res> {
  factory $ToggleNotificationEventCopyWith(ToggleNotificationEvent value, $Res Function(ToggleNotificationEvent) _then) = _$ToggleNotificationEventCopyWithImpl;
@useResult
$Res call({
 bool isEnabled
});




}
/// @nodoc
class _$ToggleNotificationEventCopyWithImpl<$Res>
    implements $ToggleNotificationEventCopyWith<$Res> {
  _$ToggleNotificationEventCopyWithImpl(this._self, this._then);

  final ToggleNotificationEvent _self;
  final $Res Function(ToggleNotificationEvent) _then;

/// Create a copy of NotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isEnabled = null,}) {
  return _then(ToggleNotificationEvent(
isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ResetNotificationsEvent implements NotificationsEvent {
  const ResetNotificationsEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetNotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationsEvent.reset()';
}


}




// dart format on
