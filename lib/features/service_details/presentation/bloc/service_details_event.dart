import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_details_event.freezed.dart';

@freezed
sealed class ServiceDetailsEvent with _$ServiceDetailsEvent {
  const factory ServiceDetailsEvent.fetchServiceDetails(int serviceId) =
      FetchServiceDetailsEvent;

  const factory ServiceDetailsEvent.toggleServiceFavorite(int serviceId) =
      ToggleServiceFavoriteEvent;

  const factory ServiceDetailsEvent.createServiceReview({
    required int serviceId,
    required int rating,
    required String comment,
  }) = CreateServiceReviewEvent;

  const factory ServiceDetailsEvent.updateServiceReview({
    required int reviewId,
    required int rating,
    required String comment,
  }) = UpdateServiceReviewEvent;
}
