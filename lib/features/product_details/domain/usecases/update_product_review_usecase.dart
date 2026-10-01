import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/product_details/domain/repositories/product_details_repository.dart';

part 'update_product_review_usecase.freezed.dart';

class UpdateProductReviewUseCase {
  final ProductDetailsRepository _repository;

  const UpdateProductReviewUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateProductReviewParams params) =>
      _repository.updateProductReview(
        reviewId: params.reviewId,
        rating: params.rating,
        comment: params.comment,
      );
}

@freezed
sealed class UpdateProductReviewParams with _$UpdateProductReviewParams {
  const factory UpdateProductReviewParams({
    required int reviewId,
    required int rating,
    required String comment,
  }) = _UpdateProductReviewParams;
}
