part of 'service_details_bloc.dart';

abstract class ServiceDetailsEvent extends Equatable {
  const ServiceDetailsEvent();

  @override
  List<Object?> get props => [];
}

class FetchServiceDetailsEvent extends ServiceDetailsEvent {
  final int serviceId;
  const FetchServiceDetailsEvent(this.serviceId);

  @override
  List<Object?> get props => [serviceId];
}

class ToggleServiceFavoriteEvent extends ServiceDetailsEvent {
  final int serviceId;
  const ToggleServiceFavoriteEvent(this.serviceId);

  @override
  List<Object?> get props => [serviceId];
}

class CreateServiceReviewEvent extends ServiceDetailsEvent {
  final int serviceId;
  final int rating;
  final String comment;

  const CreateServiceReviewEvent({
    required this.serviceId,
    required this.rating,
    required this.comment,
  });

  @override
  List<Object?> get props => [serviceId, rating, comment];
}

class UpdateServiceReviewEvent extends ServiceDetailsEvent {
  final int reviewId;
  final int rating;
  final String comment;

  const UpdateServiceReviewEvent({
    required this.reviewId,
    required this.rating,
    required this.comment,
  });

  @override
  List<Object?> get props => [reviewId, rating, comment];
}
