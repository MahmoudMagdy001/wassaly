import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';

part 'booking_detail_event.freezed.dart';

@freezed
sealed class BookingDetailEvent with _$BookingDetailEvent {
  const factory BookingDetailEvent.initialize(BookingEntity booking) =
      InitializeBookingDetailEvent;

  const factory BookingDetailEvent.cancelBooking(int bookingId) =
      CancelBookingEvent;

  const factory BookingDetailEvent.updateBooking(UpdateBookingParams params) =
      UpdateBookingEvent;

  const factory BookingDetailEvent.deleteBooking(int bookingId) =
      DeleteBookingEvent;

  const factory BookingDetailEvent.acceptReschedule(
    AcceptRescheduleParams params,
  ) = AcceptRescheduleEvent;

  const factory BookingDetailEvent.proposeReschedule(
    ProposeRescheduleParams params,
  ) = ProposeRescheduleEvent;

  const factory BookingDetailEvent.loadAvailableDays(int serviceId) =
      LoadAvailableDaysEvent;
}
