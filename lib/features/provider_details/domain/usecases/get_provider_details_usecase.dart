import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/provider_details/domain/entities/provider_detail_entity.dart';
import 'package:wassaly/features/provider_details/domain/repositories/provider_details_repository.dart';

class GetProviderDetailsUseCase {
  final ProviderDetailsRepository _repository;
  const GetProviderDetailsUseCase(this._repository);

  Future<Either<Failure, ProviderDetailEntity>> call(int providerId) =>
      _repository.getProviderDetails(providerId);
}
