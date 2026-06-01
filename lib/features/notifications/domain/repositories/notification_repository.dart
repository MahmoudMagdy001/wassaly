import '../entities/notification_entity.dart';

abstract class NotificationRepository {
  Future<String?> getAndCacheFcmToken();
  Future<void> deleteFcmToken();
  Future<void> subscribeToTopic(String topic);
  Future<void> unsubscribeFromTopic(String topic);
  List<String> getSubscribedTopics();
  bool areNotificationsEnabled();
  Future<void> setNotificationsEnabled(bool enabled);
  Future<void> registerFcmToken({
    required String token,
    required String userId,
  });

  /// Register a FCM token for unauthenticated (guest) device.
  /// Backend will store token associated with device_id for guest notifications.
  Future<void> registerGuestFcmToken({
    required String token,
    required String deviceId,
  });
  Stream<String> onTokenRefresh();
  Future<bool> getNotificationStatus();
  Future<List<NotificationEntity>> fetchNotifications();
  Future<void> markNotificationReadRemote(String notificationId);
  Future<void> markAllNotificationsRead();
  Future<void> deleteAllNotifications();
  Future<void> saveNotification(NotificationEntity notification);
  Future<List<NotificationEntity>> getNotificationHistory();
  Future<void> markNotificationRead(String notificationId);
  Future<void> clearNotificationHistory();
}
