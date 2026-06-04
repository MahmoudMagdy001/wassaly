import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';

class DeleteNotificationUseCase {
  final NotificationRepository repository;

  DeleteNotificationUseCase(this.repository);

  Future<Either<Failure, Unit>> call(int id) => repository.deleteNotification(id);
}
