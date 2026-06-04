import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_details/domain/entities/service_detail_entity.dart';

abstract class ServiceDetailsRepository {
  Future<Either<Failure, ServiceDetailEntity>> getServiceDetails(int serviceId);
  Future<Either<Failure, bool>> toggleServiceFavorite(
    int serviceId, {
    required bool isCurrentlyFavorite,
  });
  Future<Either<Failure, Unit>> createServiceReview({
    required int serviceId,
    required int rating,
    required String comment,
  });
  Future<Either<Failure, Unit>> updateServiceReview({
    required int reviewId,
    required int rating,
    required String comment,
  });
}
