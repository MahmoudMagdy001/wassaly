import 'package:wassaly/core/utils/typedefs.dart';
import 'package:wassaly/features/auth/domain/repositories/auth_repository.dart';

class ClearUserSessionUseCase {
  final AuthRepository _repository;

  const ClearUserSessionUseCase(this._repository);

  FutureEither<void> call() => _repository.clearUserSession();
}
