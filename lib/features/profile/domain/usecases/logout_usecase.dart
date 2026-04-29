import 'package:wassaly/core/utils/typedefs.dart';
import 'package:wassaly/features/profile/domain/repositories/profile_repository.dart';

class LogoutUseCase {
  final ProfileRepository _repository;

  const LogoutUseCase(this._repository);

  FutureEither<void> call() {
    return _repository.logout();
  }
}
