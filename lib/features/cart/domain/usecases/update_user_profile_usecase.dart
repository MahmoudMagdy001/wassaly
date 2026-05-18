import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/failure.dart';
import '../../../profile/domain/usecases/update_profile_usecase.dart';

class UpdateUserProfileUseCase {
  final UpdateProfileUseCase _updateProfileUseCase;

  UpdateUserProfileUseCase(this._updateProfileUseCase);

  Future<Either<Failure, dynamic>> call({
    required String fullName,
    required String phone,
  }) async {
    return await _updateProfileUseCase(
      UpdateProfileParams(
        fullName: fullName,
        phone: phone,
      ),
    );
  }
}
