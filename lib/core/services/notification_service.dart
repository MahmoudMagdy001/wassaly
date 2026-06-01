import 'dart:convert';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/domain/usecases/get_cached_user_usecase.dart';

class NotificationConstants {
  // Channel Keys
  static const String basicChannelKey = 'basic_channel';
  static const String basicChannelGroupKey = 'basic_channel_group';
  static const String highImportanceChannelKey = 'high_importance_channel';

  // Storage Keys
  static const String fcmTokenKey = 'fcm_token';
  static const String notificationsEnabledKey = 'notifications_enabled';
  static const String lastNotificationIdKey = 'last_notification_id';
  static const String notificationTopicsKey = 'notification_topics';
  static const String notificationHistoryKey = 'notification_history';

  // Notification Types
  static const String typeOrder = 'order';
  static const String typePromo = 'promo';
  static const String typeChat = 'chat';
  static const String typeSystem = 'system';

  // Payload Keys
  static const String payloadType = 'type';
  static const String payloadId = 'id';
  static const String payloadRoute = 'route';
}

// Global background handler for Firebase
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Initialize Firebase if it hasn't been already. This is required for background handler.
  await Firebase.initializeApp();
  await NotificationService._createNotificationFromMessage(message);
}

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();

  factory NotificationService() {
    return _instance;
  }

  NotificationService._internal();

  Future<void> initialize() async {
    await AwesomeNotifications().initialize(
      null, // or 'resource://drawable/res_app_icon' if you have a specific icon
      [
        NotificationChannel(
          channelGroupKey: 'basic_channel_group',
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic notifications',
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white,
          importance: NotificationImportance.High,
        )
      ],
      channelGroups: [
        NotificationChannelGroup(
          channelGroupKey: 'basic_channel_group',
          channelGroupName: 'Basic group',
        )
      ],
      debug: true,
    );

    AwesomeNotifications().setListeners(
      onActionReceivedMethod: onActionReceivedMethod,
      onNotificationCreatedMethod: onNotificationCreatedMethod,
      onNotificationDisplayedMethod: onNotificationDisplayedMethod,
      onDismissActionReceivedMethod: onDismissActionReceivedMethod,
    );

    // Request permissions
    await requestPermission();

    // Setup Firebase Messaging foreground listener
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Global token refresh listener: cache token and attempt registration
    FirebaseMessaging.instance.onTokenRefresh.listen((token) async {
      print('[FCM DEBUG] onTokenRefresh produced token: $token');
      try {
        await SecureStorageService.instance
            .write(NotificationConstants.fcmTokenKey, token);
      } catch (e) {
        print('[FCM DEBUG] Failed to write token to secure storage: $e');
      }

      try {
        // If there's a cached authenticated user, attempt immediate registration
        final getCachedUser = sl<GetCachedUserUseCase>();
        final result = await getCachedUser();
        final user = result.fold((l) => null, (r) => r);
        if (user != null) {
          print(
              '[FCM DEBUG] User found in cache: ${user.id} - registering token');
          await FcmTokenRegistrationService.instance.registerToken(
            userId: user.id.toString(),
            token: token,
          );
        } else {
          // No user signed in — register guest token so backend can target device
          print('[FCM DEBUG] No signed user — registering guest token');
          final success = await FcmTokenRegistrationService.instance
              .registerGuestToken(token: token);
          if (!success) {
            // mark pending so we retry later
            await DeviceRegistrationService.instance.markTokenPendingSync();
          }
        }
      } catch (e) {
        print('[FCM DEBUG] onTokenRefresh handling error: $e');
      }
    });
  }

  Future<void> requestPermission() async {
    final bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      await AwesomeNotifications().requestPermissionToSendNotifications();
    }

    // Also request permissions for iOS Firebase Messaging
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<String?> getFcmToken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  static Future<void> _handleForegroundMessage(RemoteMessage message) async {
    _createNotificationFromMessage(message);
  }

  static Future<void> _createNotificationFromMessage(
      RemoteMessage message) async {
    // Usually only parse Data messages since Notification messages are handled by OS
    final data = message.data;

    // Fallback title/body if not provided in data payload
    final title =
        data['title'] ?? message.notification?.title ?? 'New Notification';
    final body = data['body'] ?? message.notification?.body ?? '';

    final payload = Map<String, String>.from(data);
    final historyItem = {
      'id': DateTime.now().millisecondsSinceEpoch.toString(),
      'title': title,
      'body': body,
      'payload': payload,
      'receivedAt': DateTime.now().toIso8601String(),
      'read': false,
      'imageUrl': data['image_url'] ??
          message.notification?.android?.imageUrl ??
          message.notification?.apple?.imageUrl,
      'deepLink':
          data['deep_link'] ?? data[NotificationConstants.payloadRoute] ?? '',
    };

    await _saveNotificationHistory(historyItem);

    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: DateTime.now().millisecondsSinceEpoch.remainder(100000),
        channelKey: NotificationConstants.basicChannelKey,
        title: title,
        body: body,
        notificationLayout: NotificationLayout.Default,
        payload: payload,
      ),
    );
  }

  static Future<void> _saveNotificationHistory(
      Map<String, dynamic> notification) async {
    final initResult = await StorageService.instance.init();
    if (initResult.isLeft()) {
      return;
    }

    final history = StorageService.instance
            .getStringList(NotificationConstants.notificationHistoryKey) ??
        [];
    final updatedHistory = [jsonEncode(notification), ...history];
    if (updatedHistory.length > 100) {
      updatedHistory.removeRange(100, updatedHistory.length);
    }

    await StorageService.instance.setStringList(
      NotificationConstants.notificationHistoryKey,
      updatedHistory,
    );
  }

  /// Use this method to detect when a new notification or a schedule is created
  @pragma('vm:entry-point')
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect every time that a new notification is displayed
  @pragma('vm:entry-point')
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect if the user dismissed a notification
  @pragma('vm:entry-point')
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes here
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma('vm:entry-point')
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Handle notification tap, e.g., navigate to a specific screen based on payload
    debugPrint('Notification tapped: ${receivedAction.payload}');
  }
}
