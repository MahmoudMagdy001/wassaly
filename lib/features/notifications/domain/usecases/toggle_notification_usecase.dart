import 'package:wassaly/core/imports/imports.dart';

import '../repositories/notification_repository.dart';

class ToggleNotificationUseCase {
  final NotificationRepository repository;

  ToggleNotificationUseCase(this.repository);

  Future<Either<Failure, bool>> call(bool isEnabled) async {
    return await repository.toggleNotification(isEnabled);
  }
}
