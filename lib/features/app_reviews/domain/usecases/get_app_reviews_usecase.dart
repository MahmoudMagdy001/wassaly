import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/app_reviews/domain/entities/app_review_entity.dart';
import 'package:wassaly/features/app_reviews/domain/repositories/app_reviews_repository.dart';

class GetAppReviewsUseCase {
  final AppReviewsRepository repository;

  GetAppReviewsUseCase(this.repository);

  Future<Either<Failure, List<AppReviewEntity>>> call() => repository.getAppReviews();
}
