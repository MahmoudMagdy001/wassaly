import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';

class DeleteAllNotificationsUseCase {
  final NotificationRepository repository;

  DeleteAllNotificationsUseCase(this.repository);

  Future<Either<Failure, Unit>> call() => repository.deleteAllNotifications();
}
