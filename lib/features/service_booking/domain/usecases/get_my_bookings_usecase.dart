import 'package:wassaly/core/imports/imports.dart';
import '../entities/booking_entity.dart';
import '../repositories/booking_repository.dart';

class GetMyBookingsUseCase {
  final BookingRepository repository;

  GetMyBookingsUseCase(this.repository);

  Future<Either<Failure, List<BookingEntity>>> call() {
    return repository.getMyBookings();
  }
}
