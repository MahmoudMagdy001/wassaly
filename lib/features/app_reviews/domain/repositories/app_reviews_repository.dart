import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/app_reviews/domain/entities/app_review_entity.dart';

abstract class AppReviewsRepository {
  Future<Either<Failure, List<AppReviewEntity>>> getAppReviews();
  Future<Either<Failure, AppReviewEntity>> addAppReview({
    required int rating,
    required String comment,
  });
  Future<Either<Failure, AppReviewEntity>> updateAppReview({
    required int reviewId,
    required int rating,
    required String comment,
  });
}
