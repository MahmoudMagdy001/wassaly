import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/orders/data/models/order_model.dart';

abstract class OrdersRemoteDataSource {
  Future<PaginatedResponse<OrderModel>> getOrders({int page = 1});
  Future<OrderModel> getOrderDetails(int orderId);
  Future<void> cancelOrder(int orderId);
  Future<void> updateOrder(int orderId, Map<String, dynamic> data);
  Future<void> deleteOrder(int orderId);
}

class OrdersRemoteDataSourceImpl implements OrdersRemoteDataSource {
  final DioService _dioService;

  const OrdersRemoteDataSourceImpl(this._dioService);

  @override
  Future<PaginatedResponse<OrderModel>> getOrders({int page = 1}) async {
    final result = await _dioService.get(
      '/api/orders',
      queryParameters: {'page': page},
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

        final data = responseData['data'];
        final items = (data as List? ?? [])
            .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
            .toList();

        return PaginatedResponse.fromJson(
          json: responseData,
          data: items,
        );
      },
    );
  }

  @override
  Future<OrderModel> getOrderDetails(int orderId) async {
    final result = await _dioService.get('/api/orders/$orderId');

    return result.fold(
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
          throw ServerFailure(
              message.isNotEmpty ? message : 'Empty response data',);
        }

        return OrderModel.fromJson(data as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<void> cancelOrder(int orderId) async {
    final result = await _dioService.post(
      '/api/orders/$orderId/cancel',
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
      },
    );
  }

  @override
  Future<void> updateOrder(int orderId, Map<String, dynamic> data) async {
    final result =
        await _dioService.put('/api/orders/$orderId/update', data: data);

    return result.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }
      },
    );
  }

  @override
  Future<void> deleteOrder(int orderId) async {
    final result = await _dioService.delete('/api/orders/$orderId/delete');

    return result.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }
      },
    );
  }
}
