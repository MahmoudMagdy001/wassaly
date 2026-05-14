import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/failure.dart';
import '../../../profile/domain/entities/governorate_entity.dart';
import '../../../profile/domain/usecases/get_governorates_usecase.dart'
    as profile;

class GetCartGovernoratesUseCase {
  final profile.GetGovernoratesUseCase _getGovernoratesUseCase;

  GetCartGovernoratesUseCase(this._getGovernoratesUseCase);

  Future<Either<Failure, List<GovernorateEntity>>> call() async {
    return await _getGovernoratesUseCase();
  }
}
