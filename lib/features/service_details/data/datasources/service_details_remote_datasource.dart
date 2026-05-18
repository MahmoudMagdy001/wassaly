import 'package:wassaly/core/imports/imports.dart';

import '../models/service_detail_model.dart';

abstract class ServiceDetailsRemoteDataSource {
  Future<ServiceDetailModel> getServiceDetails(int serviceId);
  Future<void> addServiceToFavorites(int serviceId);
  Future<void> removeServiceFromFavorites(int serviceId);
  Future<void> createServiceReview({
    required int serviceId,
    required int rating,
    required String comment,
  });
  Future<void> updateServiceReview({
    required int reviewId,
    required int rating,
    required String comment,
  });
}

class ServiceDetailsRemoteDataSourceImpl
    implements ServiceDetailsRemoteDataSource {
  final DioService _dioService;

  const ServiceDetailsRemoteDataSourceImpl(this._dioService);

  @override
  Future<ServiceDetailModel> getServiceDetails(int serviceId) async {
    final result = await _dioService.get(
      '/api/service',
      queryParameters: {'service_id': serviceId},
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
        return ServiceDetailModel.fromJson(data);
      },
    );
  }

  @override
  Future<void> addServiceToFavorites(int serviceId) async {
    final result = await _dioService.post(
      '/api/favorites/service/add',
      data: {'service_id': serviceId},
    );

    return result.fold(
      (failure) => throw failure,
      (response) => _throwIfUnsuccessful(response.data),
    );
  }

  @override
  Future<void> removeServiceFromFavorites(int serviceId) async {
    final result = await _dioService.post(
      '/api/favorites/service/remove',
      data: {'service_id': serviceId},
    );

    return result.fold(
      (failure) => throw failure,
      (response) => _throwIfUnsuccessful(response.data),
    );
  }

  @override
  Future<void> createServiceReview({
    required int serviceId,
    required int rating,
    required String comment,
  }) async {
    final result = await _dioService.post(
      '/api/reviews/service/create',
      data: {
        'service_id': serviceId,
        'rating': rating,
        'comment': comment,
      },
    );

    return result.fold(
      (failure) => throw failure,
      (response) => _throwIfUnsuccessful(response.data),
    );
  }

  @override
  Future<void> updateServiceReview({
    required int reviewId,
    required int rating,
    required String comment,
  }) async {
    final result = await _dioService.put(
      '/api/reviews/update/service',
      data: {
        'review_id': reviewId,
        'rating': rating,
        'comment': comment,
      },
    );

    return result.fold(
      (failure) => throw failure,
      (response) => _throwIfUnsuccessful(response.data),
    );
  }

  void _throwIfUnsuccessful(dynamic data) {
    final responseData = data as Map<String, dynamic>?;
    final status = responseData?['status'] as bool? ?? true;
    final message = responseData?['message'] as String? ?? '';

    if (!status) {
      throw ServerFailure(message);
    }
  }
}
