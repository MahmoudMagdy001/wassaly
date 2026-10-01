import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_details/domain/repositories/service_details_repository.dart';

part 'create_service_review_usecase.freezed.dart';

class CreateServiceReviewUseCase {
  final ServiceDetailsRepository _repository;

  const CreateServiceReviewUseCase(this._repository);

  Future<Either<Failure, Unit>> call(CreateServiceReviewParams params) =>
      _repository.createServiceReview(
        serviceId: params.serviceId,
        rating: params.rating,
        comment: params.comment,
      );
}

@freezed
sealed class CreateServiceReviewParams with _$CreateServiceReviewParams {
  const factory CreateServiceReviewParams({
    required int serviceId,
    required int rating,
    required String comment,
  }) = _CreateServiceReviewParams;
}
