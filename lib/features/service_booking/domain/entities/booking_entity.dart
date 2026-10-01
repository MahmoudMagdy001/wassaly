import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'booking_entity.freezed.dart';

@freezed
sealed class RescheduleDetailsEntity with _$RescheduleDetailsEntity {
  const RescheduleDetailsEntity._();

  const factory RescheduleDetailsEntity({
    int? suggestedDayId,
    String? suggestedDayAr,
    String? suggestedDayEn,
    int? suggestedTimeId,
    String? suggestedTime,
    String? rescheduleNote,
  }) = _RescheduleDetailsEntity;

  String get suggestedDay =>
      Intl.getCurrentLocale() == 'ar'
          ? (suggestedDayAr ?? '')
          : (suggestedDayEn ?? '');
}

@freezed
sealed class BookingProviderEntity with _$BookingProviderEntity {
  const factory BookingProviderEntity({
    required int id,
    required String name,
    String? avatar,
    String? description,
    double? rating,
    int? reviewsCount,
  }) = _BookingProviderEntity;
}

@freezed
sealed class BookingServiceEntity with _$BookingServiceEntity {
  const factory BookingServiceEntity({
    required int id,
    required String name,
    required num price,
    String? image,
    String? description,
  }) = _BookingServiceEntity;
}

@freezed
sealed class BookingEntity with _$BookingEntity {
  const BookingEntity._();

  const factory BookingEntity({
    required int id,
    required String status,
    required String problemDescription,
    required BookingServiceEntity service,
    required BookingProviderEntity provider,
    required String dayAr,
    required String dayEn,
    required String time,
    required String createdAt,
    required String customerName,
    required String customerPhone,
    String? customerEmail,
    String? governorate,
    String? center,
    RescheduleDetailsEntity? rescheduleDetails,
  }) = _BookingEntity;

  String get day => Intl.getCurrentLocale() == 'ar' ? dayAr : dayEn;
}

@freezed
sealed class BookingParams with _$BookingParams {
  const BookingParams._();

  const factory BookingParams({
    required int serviceId,
    required int availableDayId,
    required int availableTimeId,
    required String problemDescription,
    required String customerName,
    required String customerPhone,
    required String customerEmail,
    required String governorateId,
    required String centerId,
  }) = _BookingParams;

  Map<String, dynamic> toJson() => {
        'service_id': serviceId,
        'available_day_id': availableDayId,
        'available_time_id': availableTimeId,
        'problem_description': problemDescription,
        'customer_name': customerName,
        'customer_phone': customerPhone,
        'customer_email': customerEmail,
        'governorate_id': governorateId,
        'center_id': centerId,
      };
}

@freezed
sealed class UpdateBookingParams with _$UpdateBookingParams {
  const UpdateBookingParams._();

  const factory UpdateBookingParams({
    required int bookingId,
    required String problemDescription,
    required String customerPhone,
  }) = _UpdateBookingParams;

  Map<String, dynamic> toJson() => {
        'booking_id': bookingId,
        'problem_description': problemDescription,
        'customer_phone': customerPhone,
      };
}

@freezed
sealed class AcceptRescheduleParams with _$AcceptRescheduleParams {
  const AcceptRescheduleParams._();

  const factory AcceptRescheduleParams({
    required int bookingId,
  }) = _AcceptRescheduleParams;

  Map<String, dynamic> toJson() => {'booking_id': bookingId};
}

@freezed
sealed class ProposeRescheduleParams with _$ProposeRescheduleParams {
  const ProposeRescheduleParams._();

  const factory ProposeRescheduleParams({
    required int bookingId,
    required int suggestedDayId,
    required int suggestedTimeId,
    required String rescheduleNote,
  }) = _ProposeRescheduleParams;

  Map<String, dynamic> toJson() => {
        'booking_id': bookingId,
        'suggested_day_id': suggestedDayId,
        'suggested_time': suggestedTimeId.toString(),
        'reschedule_note': rescheduleNote,
      };
}
