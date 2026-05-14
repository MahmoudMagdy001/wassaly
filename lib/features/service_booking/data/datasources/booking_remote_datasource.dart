import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/booking_entity.dart';
import '../models/booking_model.dart';

abstract class BookingRemoteDataSource {
  Future<BookingModel> createBooking(BookingParams params);
}

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource {
  final DioService _dioService;

  const BookingRemoteDataSourceImpl(this._dioService);

  @override
  Future<BookingModel> createBooking(BookingParams params) async {
    final result = await _dioService.post(
      '/api/booking',
      data: params.toJson(),
    );

    return result.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }

        final data = responseData['data'] as Map<String, dynamic>? ?? {};
        return BookingModel.fromJson(data);
      },
    );
  }
}
