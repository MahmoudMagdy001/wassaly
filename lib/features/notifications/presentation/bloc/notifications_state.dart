import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';

class NotificationsState extends Equatable {
  final AppStatus status;
  final List<NotificationEntity> notifications;
  final String? errorMessage;
  final AppStatus actionStatus;

  // Pagination
  final int currentPage;
  final bool hasMore;
  final bool isLoadingMore;
  final int unreadCount;
  final bool isNotificationEnabled;

  const NotificationsState({
    this.status = AppStatus.initial,
    this.notifications = const [],
    this.errorMessage,
    this.actionStatus = AppStatus.initial,
    this.currentPage = 1,
    this.hasMore = true,
    this.isLoadingMore = false,
    this.unreadCount = 0,
    this.isNotificationEnabled = true,
  });

  NotificationsState copyWith({
    AppStatus? status,
    List<NotificationEntity>? notifications,
    String? errorMessage,
    AppStatus? actionStatus,
    int? currentPage,
    bool? hasMore,
    bool? isLoadingMore,
    int? unreadCount,
    bool? isNotificationEnabled,
  }) => NotificationsState(
      status: status ?? this.status,
      notifications: notifications ?? this.notifications,
      errorMessage: errorMessage ?? this.errorMessage,
      actionStatus: actionStatus ?? this.actionStatus,
      currentPage: currentPage ?? this.currentPage,
      hasMore: hasMore ?? this.hasMore,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      unreadCount: unreadCount ?? this.unreadCount,
      isNotificationEnabled:
          isNotificationEnabled ?? this.isNotificationEnabled,
    );

  @override
  List<Object?> get props => [
        status,
        notifications,
        errorMessage,
        actionStatus,
        currentPage,
        hasMore,
        isLoadingMore,
        unreadCount,
        isNotificationEnabled,
      ];
}
