import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_details/domain/repositories/service_details_repository.dart';

part 'update_service_review_usecase.freezed.dart';

class UpdateServiceReviewUseCase {
  final ServiceDetailsRepository _repository;

  const UpdateServiceReviewUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateServiceReviewParams params) =>
      _repository.updateServiceReview(
        reviewId: params.reviewId,
        rating: params.rating,
        comment: params.comment,
      );
}

@freezed
sealed class UpdateServiceReviewParams with _$UpdateServiceReviewParams {
  const factory UpdateServiceReviewParams({
    required int reviewId,
    required int rating,
    required String comment,
  }) = _UpdateServiceReviewParams;
}
