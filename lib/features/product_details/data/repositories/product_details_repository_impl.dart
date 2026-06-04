import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/product_details/data/datasources/product_details_remote_datasource.dart';
import 'package:wassaly/features/product_details/domain/entities/product_detail_entity.dart';
import 'package:wassaly/features/product_details/domain/repositories/product_details_repository.dart';

class ProductDetailsRepositoryImpl implements ProductDetailsRepository {
  final ProductDetailsRemoteDataSource _remoteDataSource;

  const ProductDetailsRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, ProductDetailEntity>> getProductDetails(
    int productId,
  ) async {
    try {
      final detail = await _remoteDataSource.getProductDetails(productId);
      return Right(detail);
    } on Failure catch (failure) {
      return Left(failure);
    } on Object catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> createProductReview({
    required int productId,
    required int rating,
    required String comment,
  }) async {
    try {
      await _remoteDataSource.createProductReview(
        productId: productId,
        rating: rating,
        comment: comment,
      );
      return const Right(unit);
    } on Failure catch (failure) {
      return Left(failure);
    } on Object catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateProductReview({
    required int reviewId,
    required int rating,
    required String comment,
  }) async {
    try {
      await _remoteDataSource.updateProductReview(
        reviewId: reviewId,
        rating: rating,
        comment: comment,
      );
      return const Right(unit);
    } on Failure catch (failure) {
      return Left(failure);
    } on Object catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
