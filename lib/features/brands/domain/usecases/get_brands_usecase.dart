import 'package:wassaly/core/imports/imports.dart';

import '../entities/brand_entity.dart';
import '../repositories/brands_repository.dart';

class GetBrandsUseCase {
  final BrandsRepository repository;

  GetBrandsUseCase(this.repository);

  Future<Either<Failure, List<BrandEntity>>> call() {
    return repository.getBrands();
  }
}
