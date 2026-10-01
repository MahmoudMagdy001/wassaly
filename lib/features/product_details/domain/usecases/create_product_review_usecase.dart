import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/product_details/domain/repositories/product_details_repository.dart';

part 'create_product_review_usecase.freezed.dart';

class CreateProductReviewUseCase {
  final ProductDetailsRepository _repository;

  const CreateProductReviewUseCase(this._repository);

  Future<Either<Failure, Unit>> call(CreateProductReviewParams params) =>
      _repository.createProductReview(
        productId: params.productId,
        rating: params.rating,
        comment: params.comment,
      );
}

@freezed
sealed class CreateProductReviewParams with _$CreateProductReviewParams {
  const factory CreateProductReviewParams({
    required int productId,
    required int rating,
    required String comment,
  }) = _CreateProductReviewParams;
}
