import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/usecases/clear_notification_history_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/get_notification_history_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/mark_notification_read_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/save_notification_usecase.dart';

import 'notifications_event.dart';
import 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final GetNotificationHistoryUseCase _getHistoryUseCase;
  final SaveNotificationUseCase _saveNotificationUseCase;
  final MarkNotificationReadUseCase _markReadUseCase;
  final ClearNotificationHistoryUseCase _clearHistoryUseCase;

  NotificationsBloc(
    this._getHistoryUseCase,
    this._saveNotificationUseCase,
    this._markReadUseCase,
    this._clearHistoryUseCase,
  ) : super(const NotificationsState()) {
    on<NotificationsRequested>(_onRequested);
    on<NotificationMarkedRead>(_onMarkedRead);
    on<NotificationCleared>(_onCleared);
    on<NotificationAdded>(_onAdded);
  }

  Future<void> _onRequested(
    NotificationsRequested event,
    Emitter<NotificationsState> emit,
  ) async {
    emit(state.copyWith(status: AppStatus.loading, errorMessage: null));

    try {
      final notifications = await _getHistoryUseCase.call();
      emit(state.copyWith(
          status: AppStatus.success, notifications: notifications));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onMarkedRead(
    NotificationMarkedRead event,
    Emitter<NotificationsState> emit,
  ) async {
    try {
      await _markReadUseCase.call(event.notificationId);
      final updatedNotifications = state.notifications.map((notification) {
        return notification.id == event.notificationId
            ? notification.copyWith(read: true)
            : notification;
      }).toList();
      emit(state.copyWith(
          status: AppStatus.success, notifications: updatedNotifications));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onCleared(
    NotificationCleared event,
    Emitter<NotificationsState> emit,
  ) async {
    try {
      await _clearHistoryUseCase.call();
      emit(state.copyWith(status: AppStatus.success, notifications: const []));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onAdded(
    NotificationAdded event,
    Emitter<NotificationsState> emit,
  ) async {
    try {
      await _saveNotificationUseCase.call(event.notification);
      final updatedNotifications = [event.notification, ...state.notifications];
      emit(state.copyWith(
          status: AppStatus.success, notifications: updatedNotifications));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
