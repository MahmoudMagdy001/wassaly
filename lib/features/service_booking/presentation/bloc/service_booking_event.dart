import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';
import 'package:wassaly/features/service_details/domain/entities/service_detail_entity.dart';

part 'service_booking_event.freezed.dart';

@freezed
sealed class ServiceBookingEvent with _$ServiceBookingEvent {
  const factory ServiceBookingEvent.initialized({
    required ServiceDetailEntity service,
    ServiceAvailableDayEntity? preselectedDay,
    ServiceAvailableTimeEntity? preselectedTime,
  }) = ServiceBookingInitialized;

  const factory ServiceBookingEvent.daySelected(ServiceAvailableDayEntity day) =
      ServiceBookingDaySelected;

  const factory ServiceBookingEvent.timeSelected(
    ServiceAvailableTimeEntity time,
  ) = ServiceBookingTimeSelected;

  const factory ServiceBookingEvent.governorateSelected(
    String governorateId, {
    String? centerId,
  }) = ServiceBookingGovernorateSelected;

  const factory ServiceBookingEvent.centerSelected(String centerId) =
      ServiceBookingCenterSelected;

  const factory ServiceBookingEvent.addressSelected(AddressEntity address) =
      ServiceBookingAddressSelected;

  const factory ServiceBookingEvent.addressesRefreshed() =
      ServiceBookingAddressesRefreshed;

  const factory ServiceBookingEvent.formChanged({
    String? name,
    String? phone,
    String? email,
    String? problemDescription,
  }) = ServiceBookingFormChanged;

  const factory ServiceBookingEvent.submitted() = ServiceBookingSubmitted;
}
