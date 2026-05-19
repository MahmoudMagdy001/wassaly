import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';

abstract class ProductsFilterRepository {
  Future<Either<Failure, PaginatedResponse<ProductEntity>>> filterProducts({
    required ProductFilterParams params,
    int page = 1,
  });
}
