import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/booking_entity.dart';
import '../../domain/repositories/booking_repository.dart';
import '../datasources/booking_remote_datasource.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource _remoteDataSource;

  const BookingRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, BookingEntity>> createBooking(BookingParams params) async {
    try {
      final booking = await _remoteDataSource.createBooking(params);
      return Right(booking);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
