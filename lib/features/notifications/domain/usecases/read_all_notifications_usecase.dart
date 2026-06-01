import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';

class ReadAllNotificationsUseCase {
  final NotificationRepository repository;

  ReadAllNotificationsUseCase(this.repository);

  Future<Either<Failure, Unit>> call() {
    return repository.readAllNotifications();
  }
}
