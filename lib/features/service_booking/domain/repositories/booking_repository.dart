import 'package:wassaly/core/imports/imports.dart';
import '../entities/booking_entity.dart';

abstract class BookingRepository {
  Future<Either<Failure, BookingEntity>> createBooking(BookingParams params);
  Future<Either<Failure, List<BookingEntity>>> getMyBookings();
}
