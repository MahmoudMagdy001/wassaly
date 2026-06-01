import '../repositories/notification_repository.dart';

class MarkNotificationReadUseCase {
  final NotificationRepository _repository;

  const MarkNotificationReadUseCase(this._repository);

  Future<void> call(String notificationId) async {
    await _repository.markNotificationRead(notificationId);
  }
}
