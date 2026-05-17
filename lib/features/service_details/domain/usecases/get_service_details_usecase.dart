import 'package:wassaly/core/imports/imports.dart';

import '../entities/service_detail_entity.dart';
import '../repositories/service_details_repository.dart';

class GetServiceDetailsUseCase {
  final ServiceDetailsRepository _repository;
  const GetServiceDetailsUseCase(this._repository);

  Future<Either<Failure, ServiceDetailEntity>> call(int serviceId) =>
      _repository.getServiceDetails(serviceId);
}
