import 'package:wassaly/core/imports/imports.dart';

abstract class NotificationsEvent extends Equatable {
  const NotificationsEvent();

  @override
  List<Object?> get props => [];
}

class GetNotificationsEvent extends NotificationsEvent {
  final bool isRefresh;
  const GetNotificationsEvent({this.isRefresh = false});

  @override
  List<Object?> get props => [isRefresh];
}

/// Triggered when the user scrolls near the end of the list.
class LoadMoreNotificationsEvent extends NotificationsEvent {
  const LoadMoreNotificationsEvent();
}

class MarkAsReadEvent extends NotificationsEvent {
  final int id;
  const MarkAsReadEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class DeleteNotificationEvent extends NotificationsEvent {
  final int id;
  const DeleteNotificationEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class ReadAllNotificationsEvent extends NotificationsEvent {
  const ReadAllNotificationsEvent();
}

class DeleteAllNotificationsEvent extends NotificationsEvent {
  const DeleteAllNotificationsEvent();
}

/// Triggered when a new notification is received in the foreground.
class NotificationReceivedEvent extends NotificationsEvent {
  final Map<String, dynamic> data;
  const NotificationReceivedEvent(this.data);

  @override
  List<Object?> get props => [data];
}

class GetNotificationStatusEvent extends NotificationsEvent {
  const GetNotificationStatusEvent();
}

class ToggleNotificationEvent extends NotificationsEvent {
  final bool isEnabled;
  const ToggleNotificationEvent(this.isEnabled);

  @override
  List<Object?> get props => [isEnabled];
}

class ResetNotificationsEvent extends NotificationsEvent {
  const ResetNotificationsEvent();
}
