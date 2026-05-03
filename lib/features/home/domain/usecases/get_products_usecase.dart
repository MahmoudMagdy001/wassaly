import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import '../entities/product_entity.dart';
import '../repositories/home_repository.dart';

class GetProductsUseCase {
  final HomeRepository _repository;

  const GetProductsUseCase(this._repository);

  Future<Either<Failure, PaginatedResponse<ProductEntity>>> call({
    int page = 1,
  }) async {
    return await _repository.getProducts(page: page);
  }
}

