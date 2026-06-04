import 'package:wassaly/core/constants/app_keys.dart';
import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/shared/bloc/safe_bloc.dart' as safe_bloc;
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';
import 'package:wassaly/features/notifications/domain/usecases/delete_all_notifications_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/delete_notification_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/get_notification_status_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/get_notifications_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/mark_as_read_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/read_all_notifications_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/toggle_notification_usecase.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_event.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_state.dart';

class NotificationsBloc
    extends safe_bloc.Bloc<NotificationsEvent, NotificationsState> {
  final GetNotificationsUseCase getNotificationsUseCase;
  final MarkAsReadUseCase markAsReadUseCase;
  final DeleteNotificationUseCase deleteNotificationUseCase;
  final DeleteAllNotificationsUseCase deleteAllNotificationsUseCase;
  final ReadAllNotificationsUseCase readAllNotificationsUseCase;
  final GetNotificationStatusUseCase getNotificationStatusUseCase;
  final ToggleNotificationUseCase toggleNotificationUseCase;

  NotificationsBloc({
    required this.getNotificationsUseCase,
    required this.markAsReadUseCase,
    required this.deleteNotificationUseCase,
    required this.deleteAllNotificationsUseCase,
    required this.readAllNotificationsUseCase,
    required this.getNotificationStatusUseCase,
    required this.toggleNotificationUseCase,
  }) : super(const NotificationsState()) {
    on<GetNotificationsEvent>(_onGetNotifications);
    on<LoadMoreNotificationsEvent>(_onLoadMore);
    on<MarkAsReadEvent>(_onMarkAsRead);
    on<DeleteNotificationEvent>(_onDeleteNotification);
    on<ReadAllNotificationsEvent>(_onReadAllNotifications);
    on<DeleteAllNotificationsEvent>(_onDeleteAllNotifications);
    on<NotificationReceivedEvent>(_onNotificationReceived);
    on<GetNotificationStatusEvent>(_onGetNotificationStatus);
    on<ToggleNotificationEvent>(_onToggleNotification);
    on<ResetNotificationsEvent>(_onReset);
  }

  void _onReset(
    ResetNotificationsEvent event,
    Emitter<NotificationsState> emit,
  ) {
    emit(const NotificationsState());
  }

  Future<void> _onGetNotificationStatus(
    GetNotificationStatusEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    // 1. Load from local storage first for immediate UI update
    final localStatus =
        StorageService.instance.getBool(AppKeys.isNotificationsEnabled);
    if (localStatus != null) {
      emit(state.copyWith(isNotificationEnabled: localStatus));
    }

    // 2. Sync with backend
    final result = await getNotificationStatusUseCase();
    result.fold(
      (failure) =>
          null, // Ignore failure for status fetch, stay with local/default
      (isEnabled) {
        // Update local storage if backend differs
        if (localStatus != isEnabled) {
          unawaited(
            StorageService.instance
                .setBool(AppKeys.isNotificationsEnabled, isEnabled),
          );
        }
        emit(state.copyWith(isNotificationEnabled: isEnabled));
      },
    );
  }

  Future<void> _onToggleNotification(
    ToggleNotificationEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    final originalStatus = state.isNotificationEnabled;
    // Optimistic update
    emit(
      state.copyWith(
        actionStatus: AppStatus.loading,
        isNotificationEnabled: event.isEnabled,
      ),
    );

    final result = await toggleNotificationUseCase(event.isEnabled);
    result.fold(
      (failure) => emit(
        state.copyWith(
          actionStatus: AppStatus.failure,
          isNotificationEnabled: originalStatus,
          errorMessage: failure.message,
        ),
      ),
      (isEnabled) {
        // Save to local storage on success
        unawaited(
          StorageService.instance
              .setBool(AppKeys.isNotificationsEnabled, isEnabled),
        );
        emit(
          state.copyWith(
            actionStatus: AppStatus.success,
            isNotificationEnabled: isEnabled,
          ),
        );
      },
    );
  }

  void _onNotificationReceived(
    NotificationReceivedEvent event,
    Emitter<NotificationsState> emit,
  ) {
    // Increment count and trigger fresh fetch to see the new item
    emit(state.copyWith(unreadCount: state.unreadCount + 1));
    add(const GetNotificationsEvent(isRefresh: true));
  }

  // -------------------------------------------------------------------------
  // Fetch first page (or refresh)
  // -------------------------------------------------------------------------
  Future<void> _onGetNotifications(
    GetNotificationsEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    if (!event.isRefresh) emit(state.copyWith(status: AppStatus.loading));

    final result = await getNotificationsUseCase();
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: AppStatus.failure,
          errorMessage: failure.message,
        ),
      ),
      (page) => emit(
        state.copyWith(
          status: AppStatus.success,
          notifications: page.data,
          currentPage: page.currentPage,
          hasMore: page.hasMore,
          unreadCount: page.totalUnread > 0
              ? page.totalUnread
              : _calculateUnreadCount(page.data),
        ),
      ),
    );
  }

  int _calculateUnreadCount(List<NotificationEntity> notifications) =>
      notifications.where((n) => !n.isRead).length;

  // -------------------------------------------------------------------------
  // Load next page — guards against double calls & empty hasMore
  // -------------------------------------------------------------------------
  Future<void> _onLoadMore(
    LoadMoreNotificationsEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    if (state.isLoadingMore || !state.hasMore) return;

    emit(state.copyWith(isLoadingMore: true));

    final nextPage = state.currentPage + 1;
    final result = await getNotificationsUseCase(page: nextPage);
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingMore: false,
          actionStatus: AppStatus.failure,
          errorMessage: failure.message,
        ),
      ),
      (page) {
        final allNotifications = [...state.notifications, ...page.data];
        emit(
          state.copyWith(
            isLoadingMore: false,
            notifications: allNotifications,
            currentPage: page.currentPage,
            hasMore: page.hasMore,
            unreadCount: page.totalUnread > 0
                ? page.totalUnread
                : state.unreadCount, // PRESERVE TOTAL COUNT
          ),
        );
      },
    );
  }

  // -------------------------------------------------------------------------
  // Mark as read — optimistic
  // -------------------------------------------------------------------------
  Future<void> _onMarkAsRead(
    MarkAsReadEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    final originalNotifications = state.notifications;
    final originalUnreadCount = state.unreadCount;

    final updatedNotifications = state.notifications.map((n) {
      if (n.id == event.id) {
        return n.copyWith(isRead: true);
      }
      return n;
    }).toList();

    // If the notification was unread, decrement the count
    final wasUnread =
        state.notifications.any((n) => n.id == event.id && n.isRead == false);
    final newUnreadCount =
        wasUnread ? (state.unreadCount - 1).clamp(0, 9999) : state.unreadCount;

    emit(
      state.copyWith(
        actionStatus: AppStatus.loading,
        notifications: updatedNotifications,
        unreadCount: newUnreadCount,
      ),
    );

    final result = await markAsReadUseCase(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          actionStatus: AppStatus.failure,
          notifications: originalNotifications,
          unreadCount: originalUnreadCount,
          errorMessage: failure.message,
        ),
      ),
      (_) => emit(state.copyWith(actionStatus: AppStatus.success)),
    );
  }

  // -------------------------------------------------------------------------
  // Delete single — optimistic
  // -------------------------------------------------------------------------
  Future<void> _onDeleteNotification(
    DeleteNotificationEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    final originalNotifications = state.notifications;
    final originalUnreadCount = state.unreadCount;

    final updatedNotifications =
        state.notifications.where((n) => n.id != event.id).toList();

    // If the deleted notification was unread, decrement the count
    final wasUnread =
        state.notifications.any((n) => n.id == event.id && n.isRead == false);
    final newUnreadCount =
        wasUnread ? (state.unreadCount - 1).clamp(0, 9999) : state.unreadCount;

    emit(
      state.copyWith(
        actionStatus: AppStatus.loading,
        notifications: updatedNotifications,
        unreadCount: newUnreadCount,
      ),
    );

    final result = await deleteNotificationUseCase(event.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          actionStatus: AppStatus.failure,
          notifications: originalNotifications,
          unreadCount: originalUnreadCount,
          errorMessage: failure.message,
        ),
      ),
      (_) => emit(state.copyWith(actionStatus: AppStatus.success)),
    );
  }

  // -------------------------------------------------------------------------
  // Read all — optimistic
  // -------------------------------------------------------------------------
  Future<void> _onReadAllNotifications(
    ReadAllNotificationsEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    final originalNotifications = state.notifications;
    final originalUnreadCount = state.unreadCount;

    final updatedNotifications =
        state.notifications.map((n) => n.copyWith(isRead: true)).toList();

    emit(
      state.copyWith(
        actionStatus: AppStatus.loading,
        notifications: updatedNotifications,
        unreadCount: 0,
      ),
    );

    final result = await readAllNotificationsUseCase();
    result.fold(
      (failure) => emit(
        state.copyWith(
          actionStatus: AppStatus.failure,
          notifications: originalNotifications,
          unreadCount: originalUnreadCount,
          errorMessage: failure.message,
        ),
      ),
      (_) => emit(
        state.copyWith(
          actionStatus: AppStatus.success,
          notifications: updatedNotifications,
          unreadCount: 0,
        ),
      ),
    );
  }

  // -------------------------------------------------------------------------
  // Delete all — optimistic
  // -------------------------------------------------------------------------
  Future<void> _onDeleteAllNotifications(
    DeleteAllNotificationsEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    final originalNotifications = state.notifications;
    final originalUnreadCount = state.unreadCount;
    final originalHasMore = state.hasMore;

    emit(
      state.copyWith(
        actionStatus: AppStatus.loading,
        notifications: const [],
        hasMore: false,
        unreadCount: 0,
      ),
    );

    final result = await deleteAllNotificationsUseCase();
    result.fold(
      (failure) => emit(
        state.copyWith(
          actionStatus: AppStatus.failure,
          notifications: originalNotifications,
          unreadCount: originalUnreadCount,
          hasMore: originalHasMore,
          errorMessage: failure.message,
        ),
      ),
      (_) => emit(
        state.copyWith(
          actionStatus: AppStatus.success,
          notifications: const [],
          unreadCount: 0,
        ),
      ),
    );
  }
}
