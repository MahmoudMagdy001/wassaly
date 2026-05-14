import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

import '../repositories/service_details_repository.dart';

class ToggleServiceFavoriteUseCase {
  final ServiceDetailsRepository _repository;
  const ToggleServiceFavoriteUseCase(this._repository);

  Future<Either<Failure, bool>> call(int serviceId, bool isCurrentlyFavorite) =>
      _repository.toggleServiceFavorite(serviceId, isCurrentlyFavorite);
}
