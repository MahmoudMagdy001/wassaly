import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';
import 'package:wassaly/features/profile/domain/entities/center_entity.dart';
import 'package:wassaly/features/profile/domain/entities/governorate_entity.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';
import 'package:wassaly/features/service_details/domain/entities/service_detail_entity.dart';

part 'service_booking_state.freezed.dart';

enum ServiceBookingStatus { initial, loading, submitting, success, error }

@freezed
sealed class ServiceBookingState with _$ServiceBookingState {
  const ServiceBookingState._();

  const factory ServiceBookingState({
    @Default(ServiceBookingStatus.initial) ServiceBookingStatus status,
    ServiceDetailEntity? service,
    ServiceAvailableDayEntity? selectedDay,
    ServiceAvailableTimeEntity? selectedTime,
    @Default('') String customerName,
    @Default('') String customerPhone,
    @Default('') String customerEmail,
    @Default('') String problemDescription,
    @Default([]) List<GovernorateEntity> governorates,
    @Default([]) List<CenterEntity> centers,
    @Default([]) List<AddressEntity> addresses,
    AddressEntity? selectedAddress,
    String? selectedGovernorateId,
    String? selectedCenterId,
    @Default(false) bool isLoadingGovernorates,
    @Default(false) bool isLoadingCenters,
    @Default(false) bool isLoadingAddresses,
    BookingEntity? booking,
    String? errorMessage,
    String? nameError,
    String? phoneError,
    String? emailError,
    String? dayError,
    String? timeError,
    String? governorateError,
    String? centerError,
  }) = _ServiceBookingState;

  bool get isFormValid =>
      customerName.trim().isNotEmpty &&
      customerPhone.trim().isNotEmpty &&
      problemDescription.trim().isNotEmpty &&
      selectedDay != null &&
      selectedTime != null &&
      selectedGovernorateId != null &&
      selectedCenterId != null;
}
