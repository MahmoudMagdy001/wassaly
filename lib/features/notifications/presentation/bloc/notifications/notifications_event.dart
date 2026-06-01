import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';

abstract class NotificationsEvent extends Equatable {
  const NotificationsEvent();

  @override
  List<Object?> get props => [];
}

class NotificationsRequested extends NotificationsEvent {
  const NotificationsRequested();
}

class NotificationMarkedRead extends NotificationsEvent {
  final String notificationId;

  const NotificationMarkedRead(this.notificationId);

  @override
  List<Object?> get props => [notificationId];
}

class NotificationCleared extends NotificationsEvent {
  const NotificationCleared();
}

class NotificationAdded extends NotificationsEvent {
  final NotificationEntity notification;

  const NotificationAdded(this.notification);

  @override
  List<Object?> get props => [notification];
}
