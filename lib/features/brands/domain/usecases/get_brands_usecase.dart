import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/brands/domain/entities/brand_entity.dart';
import 'package:wassaly/features/brands/domain/repositories/brands_repository.dart';

class GetBrandsUseCase {
  final BrandsRepository repository;

  GetBrandsUseCase(this.repository);

  Future<Either<Failure, List<BrandEntity>>> call() => repository.getBrands();
}
