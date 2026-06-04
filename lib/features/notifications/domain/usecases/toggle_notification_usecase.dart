import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';

class ToggleNotificationUseCase {
  final NotificationRepository repository;

  ToggleNotificationUseCase(this.repository);

  Future<Either<Failure, bool>> call(bool isEnabled) async => repository.toggleNotification(isEnabled);
}
