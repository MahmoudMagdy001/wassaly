import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';
import 'package:wassaly/features/service_booking/domain/repositories/booking_repository.dart';

class ProposeRescheduleUseCase {
  final BookingRepository _repository;

  const ProposeRescheduleUseCase(this._repository);

  Future<Either<Failure, void>> call(ProposeRescheduleParams params) async => _repository.proposeReschedule(params);
}
