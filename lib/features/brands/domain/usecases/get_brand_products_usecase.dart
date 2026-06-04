import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/brands/domain/repositories/brands_repository.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

class GetBrandProductsUseCase {
  final BrandsRepository repository;

  GetBrandProductsUseCase(this.repository);

  Future<Either<Failure, PaginatedResponse<ProductEntity>>> call({
    required int brandId,
    int page = 1,
  }) => repository.getBrandProducts(brandId: brandId, page: page);
}
