import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/offers/data/datasources/offers_remote_datasource.dart';
import 'package:wassaly/features/offers/domain/repositories/offers_repository.dart';

class OffersRepositoryImpl implements OffersRepository {
  final OffersRemoteDataSource _remoteDataSource;

  const OffersRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, PaginatedResponse<ProductEntity>>> getOffers({
    int page = 1,
  }) async {
    try {
      final result = await _remoteDataSource.getOffers(page: page);
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } on Object catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
