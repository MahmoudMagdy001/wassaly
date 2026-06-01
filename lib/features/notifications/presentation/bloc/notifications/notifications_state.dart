import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';

class NotificationsState extends Equatable {
  final AppStatus status;
  final List<NotificationEntity> notifications;
  final String? errorMessage;

  const NotificationsState({
    this.status = AppStatus.initial,
    this.notifications = const [],
    this.errorMessage,
  });

  NotificationsState copyWith({
    AppStatus? status,
    List<NotificationEntity>? notifications,
    String? errorMessage,
  }) {
    return NotificationsState(
      status: status ?? this.status,
      notifications: notifications ?? this.notifications,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, notifications, errorMessage];
}
