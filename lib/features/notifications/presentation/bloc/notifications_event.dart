import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_event.freezed.dart';

@freezed
sealed class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.getNotifications({
    @Default(false) bool isRefresh,
  }) = GetNotificationsEvent;
  const factory NotificationsEvent.loadMore() = LoadMoreNotificationsEvent;
  const factory NotificationsEvent.markAsRead(int id) = MarkAsReadEvent;
  const factory NotificationsEvent.deleteNotification(int id) =
      DeleteNotificationEvent;
  const factory NotificationsEvent.readAll() = ReadAllNotificationsEvent;
  const factory NotificationsEvent.deleteAll() = DeleteAllNotificationsEvent;
  const factory NotificationsEvent.notificationReceived(
    Map<String, dynamic> data,
  ) = NotificationReceivedEvent;
  const factory NotificationsEvent.getStatus() = GetNotificationStatusEvent;
  const factory NotificationsEvent.toggle({
    required bool isEnabled,
  }) = ToggleNotificationEvent;
  const factory NotificationsEvent.reset() = ResetNotificationsEvent;
}
