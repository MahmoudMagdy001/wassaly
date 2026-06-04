import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';
import 'package:wassaly/features/service_booking/domain/repositories/booking_repository.dart';

class AcceptRescheduleUseCase {
  final BookingRepository _repository;

  const AcceptRescheduleUseCase(this._repository);

  Future<Either<Failure, void>> call(AcceptRescheduleParams params) async => _repository.acceptReschedule(params);
}
