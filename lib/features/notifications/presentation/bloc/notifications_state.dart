import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';

part 'notifications_state.freezed.dart';

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default(AppStatus.initial) AppStatus status,
    @Default([]) List<NotificationEntity> notifications,
    String? errorMessage,
    @Default(AppStatus.initial) AppStatus actionStatus,
    @Default(1) int currentPage,
    @Default(true) bool hasMore,
    @Default(false) bool isLoadingMore,
    @Default(0) int unreadCount,
    @Default(true) bool isNotificationEnabled,
  }) = _NotificationsState;
}
