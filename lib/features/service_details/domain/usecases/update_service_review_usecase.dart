import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_details/domain/repositories/service_details_repository.dart';

class UpdateServiceReviewUseCase {
  final ServiceDetailsRepository _repository;

  const UpdateServiceReviewUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateServiceReviewParams params) => _repository.updateServiceReview(
      reviewId: params.reviewId,
      rating: params.rating,
      comment: params.comment,
    );
}

class UpdateServiceReviewParams extends Equatable {
  final int reviewId;
  final int rating;
  final String comment;

  const UpdateServiceReviewParams({
    required this.reviewId,
    required this.rating,
    required this.comment,
  });

  @override
  List<Object?> get props => [reviewId, rating, comment];
}
