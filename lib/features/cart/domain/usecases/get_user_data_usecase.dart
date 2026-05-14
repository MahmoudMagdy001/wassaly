import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/failure.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../../../auth/domain/usecases/get_cached_user_usecase.dart';

class GetUserDataUseCase {
  final GetCachedUserUseCase _getCachedUserUseCase;

  GetUserDataUseCase(this._getCachedUserUseCase);

  Future<Either<Failure, UserEntity?>> call() async {
    return await _getCachedUserUseCase();
  }
}
