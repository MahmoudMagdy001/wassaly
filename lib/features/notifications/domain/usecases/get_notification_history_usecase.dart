import 'package:wassaly/core/imports/imports.dart';

import '../entities/notification_entity.dart';
import '../repositories/notification_repository.dart';

class GetNotificationHistoryUseCase {
  final NotificationRepository _repository;

  const GetNotificationHistoryUseCase(this._repository);

  Future<List<NotificationEntity>> call() async {
    return await _repository.getNotificationHistory();
  }
}
