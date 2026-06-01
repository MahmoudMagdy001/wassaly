// lib/features/notifications/data/repo/notification_repository_impl.dart

import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:wassaly/core/imports/imports.dart';

import '../../domain/entities/notification_entity.dart';
import '../../domain/repositories/notification_repository.dart';
import '../models/notification_model.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final FirebaseMessaging _firebaseMessaging;
  final SecureStorageService _secureStorage;
  final StorageService _storage;
  final DioService _dioService;

  NotificationRepositoryImpl({
    required FirebaseMessaging firebaseMessaging,
    required SecureStorageService secureStorage,
    required StorageService storage,
    required DioService dioService,
  })  : _firebaseMessaging = firebaseMessaging,
        _secureStorage = secureStorage,
        _storage = storage,
        _dioService = dioService;

  Future<bool> _ensureStorageReady() async {
    final initResult = await _storage.init();
    return initResult.isRight();
  }

  List<String> _loadRawHistory() {
    return _storage
            .getStringList(NotificationConstants.notificationHistoryKey) ??
        [];
  }

  List<NotificationEntity> _decodeHistory(List<String> history) {
    return history
        .map((raw) => NotificationEntity.fromJson(
            jsonDecode(raw) as Map<String, dynamic>))
        .toList();
  }

  Future<void> _saveRawHistory(List<String> history) async {
    await _storage.setStringList(
        NotificationConstants.notificationHistoryKey, history);
  }

  Map<String, dynamic> _unwrapResponse(Response<dynamic> response) {
    final responseData = response.data as Map<String, dynamic>;
    final status = responseData['status'] as bool?;
    final message = responseData['message'] as String? ?? '';

    if (status != null && !status) {
      throw ServerFailure(message.isNotEmpty
          ? message
          : 'Failed to complete notification request');
    }

    final data = responseData['data'] as Map<String, dynamic>?;
    return data ?? responseData;
  }

  @override
  Future<String?> getAndCacheFcmToken() async {
    try {
      final token = await _firebaseMessaging.getToken();
      if (token != null && token.isNotEmpty) {
        await _secureStorage.write(NotificationConstants.fcmTokenKey, token);
        await _storage.setString(
          NotificationConstants.lastNotificationIdKey,
          token.substring(0, 10),
        );
        return token;
      }

      // Fallback to cached token when Firebase returns null.
      final readResult =
          await _secureStorage.read(NotificationConstants.fcmTokenKey);
      final cachedToken = readResult.fold((l) => null, (r) => r);
      if (cachedToken != null && cachedToken.isNotEmpty) {
        return cachedToken;
      }

      // If token is still unavailable, wait briefly for a refreshed token.
      try {
        final refreshedToken = await _firebaseMessaging.onTokenRefresh.first
            .timeout(const Duration(seconds: 10));
        if (refreshedToken.isNotEmpty) {
          await _secureStorage.write(
              NotificationConstants.fcmTokenKey, refreshedToken);
          await _storage.setString(
            NotificationConstants.lastNotificationIdKey,
            refreshedToken.substring(0, 10),
          );
          return refreshedToken;
        }
      } catch (_) {
        // Ignore timeout or refresh errors and return null.
      }

      return null;
    } catch (e) {
      print('[FCM DEBUG] getAndCacheFcmToken error: $e');
      final readResult =
          await _secureStorage.read(NotificationConstants.fcmTokenKey);
      return readResult.fold((l) => null, (r) => r);
    }
  }

  @override
  Future<void> deleteFcmToken() async {
    await _secureStorage.delete(NotificationConstants.fcmTokenKey);
    await _firebaseMessaging.deleteToken();
  }

  @override
  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
    final currentTopics =
        _storage.getStringList(NotificationConstants.notificationTopicsKey) ??
            [];
    if (!currentTopics.contains(topic)) {
      currentTopics.add(topic);
      await _storage.setStringList(
          NotificationConstants.notificationTopicsKey, currentTopics);
    }
  }

  @override
  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
    final currentTopics =
        _storage.getStringList(NotificationConstants.notificationTopicsKey) ??
            [];
    currentTopics.remove(topic);
    await _storage.setStringList(
        NotificationConstants.notificationTopicsKey, currentTopics);
  }

  @override
  List<String> getSubscribedTopics() {
    return _storage
            .getStringList(NotificationConstants.notificationTopicsKey) ??
        [];
  }

  @override
  bool areNotificationsEnabled() {
    return _storage.getBool(NotificationConstants.notificationsEnabledKey) ??
        true;
  }

  @override
  Future<void> setNotificationsEnabled(bool enabled) async {
    final endpoint =
        enabled ? '/api/notification/turn-on' : '/api/notification/turn-off';

    final response = await _dioService.post(
      endpoint,
      data: {'is_notify': enabled},
    );

    return response.fold(
      (failure) => throw failure,
      (response) async {
        await _storage.setBool(
            NotificationConstants.notificationsEnabledKey, enabled);
      },
    );
  }

  @override
  Future<void> registerFcmToken({
    required String token,
    required String userId,
  }) async {
    final deviceId = await DeviceRegistrationService.instance.getDeviceId();
    print('[FCM DEBUG] registerFcmToken called:');
    print('[FCM DEBUG]   - token: ${token.substring(0, 10)}...');
    print('[FCM DEBUG]   - userId: $userId');
    print('[FCM DEBUG]   - deviceId: $deviceId');

    print('[FCM DEBUG] 📤 Sending POST request to /api/fcm-token-user');
    final response = await _dioService.post(
      '/api/fcm-token-user',
      data: {
        'token': token,
        'device_id': deviceId,
        'user_id': userId,
      },
    );

    print('[FCM DEBUG] Response: $response');
    return response.fold(
      (failure) {
        print('[FCM DEBUG] ❌ Request failed: $failure');
        throw failure;
      },
      (response) {
        print('[FCM DEBUG] ✅ Request successful: $response');
        return null;
      },
    );
  }

  @override
  Future<bool> getNotificationStatus() async {
    final response = await _dioService.get('/api/notification/status');

    return response.fold(
      (failure) => throw failure,
      (response) async {
        final data = _unwrapResponse(response);
        final isNotify =
            data['is_notify'] as bool? ?? data['status'] as bool? ?? false;
        await _storage.setBool(
            NotificationConstants.notificationsEnabledKey, isNotify);
        return isNotify;
      },
    );
  }

  @override
  Future<List<NotificationEntity>> fetchNotifications() async {
    final response = await _dioService.get('/api/notifications');

    return response.fold(
      (failure) => throw failure,
      (response) {
        final data = _unwrapResponse(response);
        final list = data['data'] as List<dynamic>? ?? [];
        return list
            .map((raw) => NotificationEntity.fromJson(
                Map<String, dynamic>.from(raw as Map)))
            .toList();
      },
    );
  }

  @override
  Future<void> markNotificationReadRemote(String notificationId) async {
    final response = await _dioService.post(
      '/api/notifications/$notificationId/read',
    );

    return response.fold(
      (failure) => throw failure,
      (response) => null,
    );
  }

  @override
  Future<void> markAllNotificationsRead() async {
    final response = await _dioService.post('/api/notifications/read-all');

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
  Future<void> saveNotification(NotificationEntity notification) async {
    if (!await _ensureStorageReady()) return;

    final currentHistory = _loadRawHistory();
    final newHistory = [jsonEncode(notification.toJson()), ...currentHistory];
    if (newHistory.length > 100) {
      newHistory.removeRange(100, newHistory.length);
    }
    await _saveRawHistory(newHistory);
  }

  @override
  Future<List<NotificationEntity>> getNotificationHistory() async {
    if (!await _ensureStorageReady()) return const [];

    final currentHistory = _loadRawHistory();
    return _decodeHistory(currentHistory);
  }

  @override
  Future<void> markNotificationRead(String notificationId) async {
    if (!await _ensureStorageReady()) return;

    final currentHistory = _loadRawHistory();
    final updatedHistory = currentHistory.map((raw) {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      if (json['id'] == notificationId) {
        json['read'] = true;
      }
      return jsonEncode(json);
    }).toList();

    await _saveRawHistory(updatedHistory);
  }

  @override
  Future<void> clearNotificationHistory() async {
    if (!await _ensureStorageReady()) return;
    await _storage.remove(NotificationConstants.notificationHistoryKey);
  }

  /// Parse incoming RemoteMessage to NotificationModel
  NotificationModel parseRemoteMessage(RemoteMessage message) {
    return NotificationModel.fromRemoteMessage({
      ...message.data,
      'title': message.notification?.title,
      'body': message.notification?.body,
      'image_url': message.notification?.android?.imageUrl ??
          message.notification?.apple?.imageUrl,
    });
  }

  /// Listen to token refresh
  @override
  Stream<String> onTokenRefresh() {
    return _firebaseMessaging.onTokenRefresh.asyncMap((token) async {
      await _secureStorage.write(NotificationConstants.fcmTokenKey, token);
      return token;
    });
  }

  /// Request permission (iOS)
  Future<NotificationSettings> requestPermission() async {
    return await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );
  }

  /// Check authorization status
  Future<AuthorizationStatus> getAuthorizationStatus() async {
    final settings = await _firebaseMessaging.getNotificationSettings();
    return settings.authorizationStatus;
  }
}
