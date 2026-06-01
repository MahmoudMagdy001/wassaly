import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';

import '../repositories/notification_repository.dart';

class SaveNotificationUseCase {
  final NotificationRepository _repository;

  const SaveNotificationUseCase(this._repository);

  Future<void> call(NotificationEntity notification) async {
    await _repository.saveNotification(notification);
  }
}
