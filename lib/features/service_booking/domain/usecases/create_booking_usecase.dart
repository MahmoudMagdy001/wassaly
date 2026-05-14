import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import '../entities/booking_entity.dart';
import '../repositories/booking_repository.dart';

class CreateBookingUseCase {
  final BookingRepository _repository;
  const CreateBookingUseCase(this._repository);

  Future<Either<Failure, BookingEntity>> call(BookingParams params) =>
      _repository.createBooking(params);
}
