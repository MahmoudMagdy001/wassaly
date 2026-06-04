import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/domain/repositories/booking_repository.dart';

class DeleteBookingUseCase {
  final BookingRepository _repository;

  const DeleteBookingUseCase(this._repository);

  Future<Either<Failure, void>> call(int bookingId) async => _repository.deleteBooking(bookingId);
}
