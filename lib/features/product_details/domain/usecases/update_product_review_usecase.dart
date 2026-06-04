import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/product_details/domain/repositories/product_details_repository.dart';

class UpdateProductReviewUseCase {
  final ProductDetailsRepository _repository;

  const UpdateProductReviewUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateProductReviewParams params) => _repository.updateProductReview(
      reviewId: params.reviewId,
      rating: params.rating,
      comment: params.comment,
    );
}

class UpdateProductReviewParams extends Equatable {
  final int reviewId;
  final int rating;
  final String comment;

  const UpdateProductReviewParams({
    required this.reviewId,
    required this.rating,
    required this.comment,
  });

  @override
  List<Object?> get props => [reviewId, rating, comment];
}
