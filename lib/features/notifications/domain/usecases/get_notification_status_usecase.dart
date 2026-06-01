import 'package:wassaly/core/imports/imports.dart';

import '../repositories/notification_repository.dart';

class GetNotificationStatusUseCase {
  final NotificationRepository repository;

  GetNotificationStatusUseCase(this.repository);

  Future<Either<Failure, bool>> call() async {
    return await repository.getNotificationStatus();
  }
}
