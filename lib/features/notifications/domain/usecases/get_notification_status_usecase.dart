import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';

class GetNotificationStatusUseCase {
  final NotificationRepository repository;

  GetNotificationStatusUseCase(this.repository);

  Future<Either<Failure, bool>> call() async => repository.getNotificationStatus();
}
