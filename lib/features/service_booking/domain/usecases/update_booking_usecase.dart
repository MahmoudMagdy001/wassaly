import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';
import 'package:wassaly/features/service_booking/domain/repositories/booking_repository.dart';

class UpdateBookingUseCase {
  final BookingRepository _repository;

  const UpdateBookingUseCase(this._repository);

  Future<Either<Failure, BookingEntity>> call(
      UpdateBookingParams params,) async => _repository.updateBooking(params);
}
