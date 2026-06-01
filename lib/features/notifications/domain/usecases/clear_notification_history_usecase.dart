import '../repositories/notification_repository.dart';

class ClearNotificationHistoryUseCase {
  final NotificationRepository _repository;

  const ClearNotificationHistoryUseCase(this._repository);

  Future<void> call() async {
    await _repository.clearNotificationHistory();
  }
}
