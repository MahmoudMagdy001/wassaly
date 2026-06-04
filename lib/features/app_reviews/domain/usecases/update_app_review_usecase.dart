import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/app_reviews/domain/entities/app_review_entity.dart';
import 'package:wassaly/features/app_reviews/domain/repositories/app_reviews_repository.dart';

class UpdateAppReviewUseCase {
  final AppReviewsRepository repository;

  UpdateAppReviewUseCase(this.repository);

  Future<Either<Failure, AppReviewEntity>> call({
    required int reviewId,
    required int rating,
    required String comment,
  }) async => repository.updateAppReview(
      reviewId: reviewId,
      rating: rating,
      comment: comment,
    );
}
