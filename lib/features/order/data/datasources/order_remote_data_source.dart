import 'package:wassaly/core/imports/imports.dart';
import '../models/order_model.dart';

abstract class OrderRemoteDataSource {
  Future<List<OrderModel>> getOrders();
  Future<OrderModel> getOrderDetails(int orderId);
  Future<OrderModel> cancelOrder(int orderId);
  Future<void> deleteOrder(int orderId);
  Future<List<OrderModel>> searchOrders(String query);
}

class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  final DioService _dioService;

  OrderRemoteDataSourceImpl(this._dioService);

  @override
  Future<List<OrderModel>> getOrders() async {
    final result = await _dioService.get('/api/orders', showToast: false);

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
          return <OrderModel>[];
        }

        final List<dynamic> list = data as List<dynamic>;
        return list
            .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
            .toList();
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
          throw const ServerFailure('Invalid response data');
        }

        return OrderModel.fromJson(data as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<OrderModel> cancelOrder(int orderId) async {
    final result = await _dioService.post('/api/orders/$orderId/cancel');

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
          throw const ServerFailure('Invalid response data');
        }

        return OrderModel.fromJson(data as Map<String, dynamic>);
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

  @override
  Future<List<OrderModel>> searchOrders(String query) async {
    final result = await _dioService.get('/api/orders/search', queryParameters: {'search': query});

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
          return <OrderModel>[];
        }

        final List<dynamic> list = data as List<dynamic>;
        return list
            .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }
}
