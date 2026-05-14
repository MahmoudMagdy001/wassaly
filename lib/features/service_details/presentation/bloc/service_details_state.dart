part of 'service_details_bloc.dart';

enum ServiceDetailsStatus { initial, loading, success, failure }

class ServiceDetailsState extends Equatable {
  final ServiceDetailsStatus status;
  final ServiceDetailEntity? service;
  final String? errorMessage;
  final bool isFavoriteLoading;

  const ServiceDetailsState({
    this.status = ServiceDetailsStatus.initial,
    this.service,
    this.errorMessage,
    this.isFavoriteLoading = false,
  });

  ServiceDetailsState copyWith({
    ServiceDetailsStatus? status,
    ServiceDetailEntity? service,
    String? errorMessage,
    bool? isFavoriteLoading,
  }) {
    return ServiceDetailsState(
      status: status ?? this.status,
      service: service ?? this.service,
      errorMessage: errorMessage ?? this.errorMessage,
      isFavoriteLoading: isFavoriteLoading ?? this.isFavoriteLoading,
    );
  }

  @override
  List<Object?> get props => [status, service, errorMessage, isFavoriteLoading];
}
