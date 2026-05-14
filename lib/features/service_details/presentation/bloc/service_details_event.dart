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
