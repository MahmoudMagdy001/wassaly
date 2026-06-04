import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/brands/data/datasources/brands_remote_datasource.dart';
import 'package:wassaly/features/brands/domain/entities/brand_entity.dart';
import 'package:wassaly/features/brands/domain/repositories/brands_repository.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

class BrandsRepositoryImpl implements BrandsRepository {
  final BrandsRemoteDataSource _remoteDataSource;

  const BrandsRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<BrandEntity>>> getBrands() async {
    try {
      final brands = await _remoteDataSource.getBrands();
      return Right(brands);
    } on Failure catch (e) {
      return Left(e);
    } on Object catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PaginatedResponse<ProductEntity>>> getBrandProducts({
    required int brandId,
    int page = 1,
  }) async {
    try {
      final products = await _remoteDataSource.getBrandProducts(
        brandId: brandId,
        page: page,
      );
      return Right(products);
    } on Failure catch (e) {
      return Left(e);
    } on Object catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
