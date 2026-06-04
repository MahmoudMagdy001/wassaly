import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/home/domain/repositories/home_repository.dart';

class GetProductsUseCase {
  final HomeRepository _repository;

  const GetProductsUseCase(this._repository);

  Future<Either<Failure, PaginatedResponse<ProductEntity>>> call({
    int page = 1,
  }) async => _repository.getProducts(page: page);
}
