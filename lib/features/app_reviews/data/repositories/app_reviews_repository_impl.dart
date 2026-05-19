import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/app_review_entity.dart';
import '../../domain/repositories/app_reviews_repository.dart';
import '../datasources/app_reviews_remote_datasource.dart';

class AppReviewsRepositoryImpl implements AppReviewsRepository {
  final AppReviewsRemoteDataSource _remoteDataSource;

  const AppReviewsRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<AppReviewEntity>>> getAppReviews() async {
    try {
      final result = await _remoteDataSource.getAppReviews();
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AppReviewEntity>> addAppReview({
    required int rating,
    required String comment,
  }) async {
    try {
      final response = await _remoteDataSource.addAppReview(rating, comment);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AppReviewEntity>> updateAppReview({
    required int reviewId,
    required int rating,
    required String comment,
  }) async {
    try {
      final response =
          await _remoteDataSource.updateAppReview(reviewId, rating, comment);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
