import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';

abstract class NotificationRepository {
  Future<Either<Failure, PaginatedResponse<NotificationEntity>>>
      getNotifications({int page = 1});
  Future<Either<Failure, Unit>> markAsRead(int id);
  Future<Either<Failure, Unit>> deleteNotification(int id);
  Future<Either<Failure, Unit>> readAllNotifications();
  Future<Either<Failure, Unit>> deleteAllNotifications();
  Future<Either<Failure, bool>> getNotificationStatus();
  Future<Either<Failure, bool>> toggleNotification(bool isEnabled);
}
