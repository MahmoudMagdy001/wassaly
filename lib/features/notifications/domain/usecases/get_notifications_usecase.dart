import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';
import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';

class GetNotificationsUseCase {
  final NotificationRepository repository;

  GetNotificationsUseCase(this.repository);

  Future<Either<Failure, PaginatedResponse<NotificationEntity>>> call(
      {int page = 1,}) => repository.getNotifications(page: page);
}
