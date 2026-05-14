import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import '../entities/provider_detail_entity.dart';
import '../repositories/provider_details_repository.dart';

class GetProviderDetailsUseCase {
  final ProviderDetailsRepository _repository;
  const GetProviderDetailsUseCase(this._repository);

  Future<Either<Failure, ProviderDetailEntity>> call(int providerId) =>
      _repository.getProviderDetails(providerId);
}
