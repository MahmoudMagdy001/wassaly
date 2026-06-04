import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';
import 'package:wassaly/features/products_filter/domain/repositories/products_filter_repository.dart';

class GetFilteredProductsUseCase {
  final ProductsFilterRepository repository;

  const GetFilteredProductsUseCase(this.repository);

  Future<Either<Failure, PaginatedResponse<ProductEntity>>> call({
    required ProductFilterParams params,
    int page = 1,
  }) async => repository.filterProducts(params: params, page: page);
}
