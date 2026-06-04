import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/product_details/domain/repositories/product_details_repository.dart';

class CreateProductReviewUseCase {
  final ProductDetailsRepository _repository;

  const CreateProductReviewUseCase(this._repository);

  Future<Either<Failure, Unit>> call(CreateProductReviewParams params) => _repository.createProductReview(
      productId: params.productId,
      rating: params.rating,
      comment: params.comment,
    );
}

class CreateProductReviewParams extends Equatable {
  final int productId;
  final int rating;
  final String comment;

  const CreateProductReviewParams({
    required this.productId,
    required this.rating,
    required this.comment,
  });

  @override
  List<Object?> get props => [productId, rating, comment];
}
