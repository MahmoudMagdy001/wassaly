import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';

abstract class BookingRepository {
  Future<Either<Failure, BookingEntity>> createBooking(BookingParams params);
  Future<Either<Failure, List<BookingEntity>>> getMyBookings();
  Future<Either<Failure, BookingEntity>> updateBooking(
      UpdateBookingParams params,);
  Future<Either<Failure, void>> cancelBooking(int bookingId);
  Future<Either<Failure, void>> deleteBooking(int bookingId);
  Future<Either<Failure, void>> acceptReschedule(
      AcceptRescheduleParams params,);
  Future<Either<Failure, void>> proposeReschedule(
      ProposeRescheduleParams params,);
}
