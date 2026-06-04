import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/data/models/notification_model.dart';

abstract class NotificationRemoteDataSource {
  Future<PaginatedResponse<NotificationModel>> getNotifications({int page = 1});
  Future<void> markAsRead(int id);
  Future<void> deleteNotification(int id);
  Future<void> readAllNotifications();
  Future<void> deleteAllNotifications();
  Future<bool> getNotificationStatus();
  Future<bool> toggleNotification({required bool isEnabled});
}

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final DioService _dioService;

  NotificationRemoteDataSourceImpl(this._dioService);

  @override
  Future<PaginatedResponse<NotificationModel>> getNotifications({
    int page = 1,
  }) async {
    final response = await _dioService.get(
      '/api/notifications',
      queryParameters: {'page': page},
    );
    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) throw ServerFailure(message);

        final data = responseData['data'];
        if (data == null) {
          return PaginatedResponse.empty();
        }

        // Standardized pagination parsing using PaginatedResponse.fromJson
        // It will look for pagination metadata in 'pagination' key or root,
        // and extract data from 'data' or the provided list.
        final List<dynamic> itemsJson;
        if (data is Map<String, dynamic> && data.containsKey('data')) {
          itemsJson = data['data'] as List? ?? [];
        } else if (data is List) {
          itemsJson = data;
        } else {
          itemsJson = [];
        }

        final items = itemsJson
            .map(
              (json) =>
                  NotificationModel.fromJson(json as Map<String, dynamic>),
            )
            .toList();

        return PaginatedResponse.fromJson(
          json: responseData,
          data: items,
        );
      },
    );
  }

  @override
  Future<void> markAsRead(int id) async {
    final response = await _dioService.get('/api/notifications/$id/read');
    return response.fold(
      (failure) => throw failure,
      (response) => null,
    );
  }

  @override
  Future<void> deleteNotification(int id) async {
    final response = await _dioService.delete('/api/notifications/$id');
    return response.fold(
      (failure) => throw failure,
      (response) => null,
    );
  }

  @override
  Future<void> readAllNotifications() async {
    final response = await _dioService.get('/api/notifications/read-all');
    return response.fold(
      (failure) => throw failure,
      (response) => null,
    );
  }

  @override
  Future<void> deleteAllNotifications() async {
    final response = await _dioService.delete('/api/notifications/delete-all');
    return response.fold(
      (failure) => throw failure,
      (response) => null,
    );
  }

  @override
  Future<bool> getNotificationStatus() async {
    final response = await _dioService.get('/api/notification/status');
    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final data = responseData['data'] as Map<String, dynamic>?;
        return data?['is_notify'] as bool? ?? false;
      },
    );
  }

  @override
  Future<bool> toggleNotification({required bool isEnabled}) async {
    final endpoint =
        isEnabled ? '/api/notification/turn-on' : '/api/notification/turn-off';
    final response = await _dioService.post(
      endpoint,
      data: {'is_notify': isEnabled},
    );
    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final data = responseData['data'] as Map<String, dynamic>?;
        return data?['is_notify'] as bool? ?? isEnabled;
      },
    );
  }
}
