import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';
import 'package:wassaly/features/products_filter/domain/repositories/products_filter_repository.dart';
import 'package:wassaly/features/products_filter/data/datasources/products_filter_remote_datasource.dart';

class ProductsFilterRepositoryImpl implements ProductsFilterRepository {
  final ProductsFilterRemoteDataSource remoteDataSource;

  const ProductsFilterRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, PaginatedResponse<ProductEntity>>> filterProducts({
    required ProductFilterParams params,
    int page = 1,
  }) async {
    try {
      final response = await remoteDataSource.filterProducts(
        params: params,
        page: page,
      );
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
