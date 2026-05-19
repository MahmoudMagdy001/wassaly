import 'package:wassaly/core/imports/imports.dart';
import '../entities/app_review_entity.dart';
import '../repositories/app_reviews_repository.dart';

class AddAppReviewUseCase {
  final AppReviewsRepository repository;

  AddAppReviewUseCase(this.repository);

  Future<Either<Failure, AppReviewEntity>> call({
    required int rating,
    required String comment,
  }) async {
    return await repository.addAppReview(
      rating: rating,
      comment: comment,
    );
  }
}
