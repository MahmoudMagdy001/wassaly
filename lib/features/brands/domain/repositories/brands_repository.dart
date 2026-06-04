import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/brands/domain/entities/brand_entity.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

abstract class BrandsRepository {
  Future<Either<Failure, List<BrandEntity>>> getBrands();
  Future<Either<Failure, PaginatedResponse<ProductEntity>>> getBrandProducts({
    required int brandId,
    int page = 1,
  });
}
