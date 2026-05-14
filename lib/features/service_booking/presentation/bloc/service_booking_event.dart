part of 'service_booking_bloc.dart';

abstract class ServiceBookingEvent extends Equatable {
  const ServiceBookingEvent();

  @override
  List<Object?> get props => [];
}

class ServiceBookingInitialized extends ServiceBookingEvent {
  final ServiceDetailEntity service;
  final ServiceAvailableDayEntity? preselectedDay;
  final ServiceAvailableTimeEntity? preselectedTime;

  const ServiceBookingInitialized({
    required this.service,
    this.preselectedDay,
    this.preselectedTime,
  });

  @override
  List<Object?> get props => [service, preselectedDay, preselectedTime];
}

class ServiceBookingDaySelected extends ServiceBookingEvent {
  final ServiceAvailableDayEntity day;
  const ServiceBookingDaySelected(this.day);

  @override
  List<Object?> get props => [day];
}

class ServiceBookingTimeSelected extends ServiceBookingEvent {
  final ServiceAvailableTimeEntity time;
  const ServiceBookingTimeSelected(this.time);

  @override
  List<Object?> get props => [time];
}

class ServiceBookingGovernorateSelected extends ServiceBookingEvent {
  final String governorateId;
  final String? centerId;
  const ServiceBookingGovernorateSelected(this.governorateId, {this.centerId});

  @override
  List<Object?> get props => [governorateId, centerId];
}

class ServiceBookingCenterSelected extends ServiceBookingEvent {
  final String centerId;
  const ServiceBookingCenterSelected(this.centerId);

  @override
  List<Object?> get props => [centerId];
}

class ServiceBookingAddressSelected extends ServiceBookingEvent {
  final AddressEntity address;
  const ServiceBookingAddressSelected(this.address);

  @override
  List<Object?> get props => [address];
}

class ServiceBookingAddressesRefreshed extends ServiceBookingEvent {
  const ServiceBookingAddressesRefreshed();
}

class ServiceBookingFormChanged extends ServiceBookingEvent {
  final String? name;
  final String? phone;
  final String? email;
  final String? problemDescription;

  const ServiceBookingFormChanged({
    this.name,
    this.phone,
    this.email,
    this.problemDescription,
  });

  @override
  List<Object?> get props => [name, phone, email, problemDescription];
}

class ServiceBookingSubmitted extends ServiceBookingEvent {}
