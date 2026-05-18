import 'package:wassaly/core/imports/imports.dart';
import '../repositories/service_details_repository.dart';

class CreateServiceReviewUseCase {
  final ServiceDetailsRepository _repository;

  const CreateServiceReviewUseCase(this._repository);

  Future<Either<Failure, Unit>> call(CreateServiceReviewParams params) {
    return _repository.createServiceReview(
      serviceId: params.serviceId,
      rating: params.rating,
      comment: params.comment,
    );
  }
}

class CreateServiceReviewParams extends Equatable {
  final int serviceId;
  final int rating;
  final String comment;

  const CreateServiceReviewParams({
    required this.serviceId,
    required this.rating,
    required this.comment,
  });

  @override
  List<Object?> get props => [serviceId, rating, comment];
}
