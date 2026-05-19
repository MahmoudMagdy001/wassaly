import 'package:wassaly/core/imports/imports.dart';
import '../entities/app_review_entity.dart';
import '../repositories/app_reviews_repository.dart';

class GetAppReviewsUseCase {
  final AppReviewsRepository repository;

  GetAppReviewsUseCase(this.repository);

  Future<Either<Failure, List<AppReviewEntity>>> call() {
    return repository.getAppReviews();
  }
}
