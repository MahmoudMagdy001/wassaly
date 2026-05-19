import 'package:wassaly/core/imports/imports.dart';
import '../entities/app_review_entity.dart';
import '../repositories/app_reviews_repository.dart';

class UpdateAppReviewUseCase {
  final AppReviewsRepository repository;

  UpdateAppReviewUseCase(this.repository);

  Future<Either<Failure, AppReviewEntity>> call({
    required int reviewId,
    required int rating,
    required String comment,
  }) async {
    return await repository.updateAppReview(
      reviewId: reviewId,
      rating: rating,
      comment: comment,
    );
  }
}
