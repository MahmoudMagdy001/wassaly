import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/favorite/data/models/favorite_model.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/sub_category/data/models/service_model.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

abstract class FavoriteRemoteDataSource {
  Future<PaginatedResponse<ProductEntity>> getFavorites({int page = 1});
  Future<PaginatedResponse<ServiceEntity>> getServiceFavorites({int page = 1});
  Future<void> addToFavorites(int productId);
  Future<void> removeFromFavorites(int productId);
  Future<void> addServiceToFavorites(int serviceId);
  Future<void> removeServiceFromFavorites(int serviceId);
}

class FavoriteRemoteDataSourceImpl implements FavoriteRemoteDataSource {
  final DioService _dioService;

  const FavoriteRemoteDataSourceImpl(this._dioService);

  @override
  Future<PaginatedResponse<ProductEntity>> getFavorites({int page = 1}) async {
    final response = await _dioService.get(
      '/api/favorites',
      queryParameters: {'page': page},
    );

    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }

        final data = responseData['data'];
        if (data == null) {
          return PaginatedResponse.empty();
        }

        final List<dynamic> itemsJson;
        if (data is Map<String, dynamic> && data.containsKey('data')) {
          itemsJson = data['data'] as List? ?? [];
        } else if (data is List) {
          itemsJson = data;
        } else {
          itemsJson = [];
        }

        final favorites = itemsJson
            .map((item) =>
                FavoriteModel.fromJson(item as Map<String, dynamic>).toEntity(),)
            .toList();

        return PaginatedResponse<ProductEntity>.fromJson(
          json: responseData,
          data: favorites,
        );
      },
    );
  }

  @override
  Future<void> addToFavorites(int productId) async {
    final response = await _dioService.post(
      '/api/favorites/add',
      data: {'product_id': productId},
    );

    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>?;
        final status = responseData?['status'] as bool? ?? false;
        final message = responseData?['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }
      },
    );
  }

  @override
  Future<void> removeFromFavorites(int productId) async {
    final response = await _dioService.post(
      '/api/favorites/remove',
      data: {'product_id': productId},
    );

    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>?;
        final status = responseData?['status'] as bool? ?? false;
        final message = responseData?['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }
      },
    );
  }

  @override
  Future<void> addServiceToFavorites(int serviceId) async {
    final response = await _dioService.post(
      '/api/favorites/service/add',
      data: {'service_id': serviceId},
    );

    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>?;
        final status = responseData?['status'] as bool? ?? false;
        final message = responseData?['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }
      },
    );
  }

  @override
  Future<void> removeServiceFromFavorites(int serviceId) async {
    final response = await _dioService.post(
      '/api/favorites/service/remove',
      data: {'service_id': serviceId},
    );

    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>?;
        final status = responseData?['status'] as bool? ?? false;
        final message = responseData?['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }
      },
    );
  }

  @override
  Future<PaginatedResponse<ServiceEntity>> getServiceFavorites(
      {int page = 1,}) async {
    final response = await _dioService.get(
      '/api/favorites/service',
      queryParameters: {'page': page},
    );

    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }

        final data = responseData['data'];
        if (data == null) {
          return PaginatedResponse.empty();
        }

        final List<dynamic> itemsJson;
        if (data is Map<String, dynamic> && data.containsKey('data')) {
          itemsJson = data['data'] as List? ?? [];
        } else if (data is List) {
          itemsJson = data;
        } else {
          itemsJson = [];
        }

        final favorites = itemsJson
            .map((item) => ServiceModel.fromJson(item as Map<String, dynamic>))
            .toList();

        return PaginatedResponse<ServiceEntity>.fromJson(
          json: responseData,
          data: favorites,
        );
      },
    );
  }
}
