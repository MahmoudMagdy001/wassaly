import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/domain/repositories/booking_repository.dart';

class CancelBookingUseCase {
  final BookingRepository _repository;

  const CancelBookingUseCase(this._repository);

  Future<Either<Failure, void>> call(int bookingId) async => _repository.cancelBooking(bookingId);
}
