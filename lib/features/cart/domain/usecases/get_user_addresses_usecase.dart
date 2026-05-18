import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/failure.dart';
import '../../../profile/domain/entities/address_entity.dart';
import '../../../profile/domain/usecases/get_addresses_usecase.dart';

class GetUserAddressesUseCase {
  final GetAddressesUseCase _getAddressesUseCase;

  GetUserAddressesUseCase(this._getAddressesUseCase);

  Future<Either<Failure, List<AddressEntity>>> call() async {
    return await _getAddressesUseCase();
  }
}
