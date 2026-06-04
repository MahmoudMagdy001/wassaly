import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/service_details/domain/entities/service_detail_entity.dart';
import 'package:wassaly/features/service_details/domain/repositories/service_details_repository.dart';

class GetServiceDetailsUseCase {
  final ServiceDetailsRepository _repository;
  const GetServiceDetailsUseCase(this._repository);

  Future<Either<Failure, ServiceDetailEntity>> call(int serviceId) =>
      _repository.getServiceDetails(serviceId);
}
