import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';
import 'package:wassaly/features/service_booking/domain/repositories/booking_repository.dart';

class CreateBookingUseCase {
  final BookingRepository _repository;
  const CreateBookingUseCase(this._repository);

  Future<Either<Failure, BookingEntity>> call(BookingParams params) =>
      _repository.createBooking(params);
}
