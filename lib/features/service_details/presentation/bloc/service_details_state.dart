part of 'service_details_bloc.dart';

enum ServiceDetailsStatus { initial, loading, success, failure }

enum ReviewActionStatus { initial, loading, success, failure }

class ServiceDetailsState extends Equatable {
  final ServiceDetailsStatus status;
  final ReviewActionStatus reviewActionStatus;
  final ServiceDetailEntity? service;
  final String? errorMessage;
  final String reviewActionMessage;
  final bool isFavoriteLoading;

  const ServiceDetailsState({
    this.status = ServiceDetailsStatus.initial,
    this.reviewActionStatus = ReviewActionStatus.initial,
    this.service,
    this.errorMessage,
    this.reviewActionMessage = '',
    this.isFavoriteLoading = false,
  });

  ServiceDetailsState copyWith({
    ServiceDetailsStatus? status,
    ReviewActionStatus? reviewActionStatus,
    ServiceDetailEntity? service,
    String? errorMessage,
    String? reviewActionMessage,
    bool? isFavoriteLoading,
  }) => ServiceDetailsState(
      status: status ?? this.status,
      reviewActionStatus: reviewActionStatus ?? this.reviewActionStatus,
      service: service ?? this.service,
      errorMessage: errorMessage ?? this.errorMessage,
      reviewActionMessage: reviewActionMessage ?? this.reviewActionMessage,
      isFavoriteLoading: isFavoriteLoading ?? this.isFavoriteLoading,
    );

  @override
  List<Object?> get props => [
        status,
        reviewActionStatus,
        service,
        errorMessage,
        reviewActionMessage,
        isFavoriteLoading,
      ];
}
