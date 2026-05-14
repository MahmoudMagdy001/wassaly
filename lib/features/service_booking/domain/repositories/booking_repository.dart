import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import '../entities/booking_entity.dart';

abstract class BookingRepository {
  Future<Either<Failure, BookingEntity>> createBooking(BookingParams params);
  Future<Either<Failure, List<BookingEntity>>> getMyBookings();
}
