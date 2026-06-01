import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';

/// Manages FCM notification lifecycle tied to user authentication.
/// Handles: login, logout, token refresh, offline retries, and device unlinking.
class NotificationLifecycleService {
  NotificationLifecycleService._internal();

  static final NotificationLifecycleService instance =
      NotificationLifecycleService._internal();

  final NotificationRepository _repository = sl<NotificationRepository>();
  StreamSubscription<String>? _tokenRefreshSubscription;

  /// Called on user login/authentication.
  /// Registers current FCM token with backend and listens for future token changes.
  Future<void> registerUserNotifications(String userId) async {
    print('[FCM DEBUG] 📱 registerUserNotifications called - userId: $userId');
    await _cancelTokenRefreshSubscription();

    // Start listening for token refresh events first so incoming tokens
    // will be handled and trigger registration automatically.
    _listenForTokenRefresh(userId);

    // Ensure notification permission is requested (iOS will prompt the user).
    try {
      final settings = await FirebaseMessaging.instance.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
      print(
          '[FCM DEBUG] Notification permission status: ${settings.authorizationStatus}');

      // On iOS the APNs token must be available for FCM token generation.
      if (Platform.isIOS) {
        final apns = await FirebaseMessaging.instance.getAPNSToken();
        print('[FCM DEBUG] APNs token: $apns');

        if (apns == null || apns.isEmpty) {
          // Wait briefly for the APNs/FCM token to arrive via onTokenRefresh.
          try {
            print('[FCM DEBUG] Waiting up to 15s for onTokenRefresh (iOS)');
            final t = await FirebaseMessaging.instance.onTokenRefresh.first
                .timeout(const Duration(seconds: 15));
            print(
                '[FCM DEBUG] onTokenRefresh produced token: ${t.substring(0, 10)}...');
          } catch (e) {
            print('[FCM DEBUG] No token arrived within timeout: $e');
          }
        }
      }
    } catch (e) {
      print('[FCM DEBUG] Permission/APNs check failed: $e');
    }

    // Try registering current token (may still be null and FcmTokenRegistrationService will schedule retry)
    await FcmTokenRegistrationService.instance.registerToken(userId: userId);

    // Sync notification preferences
    await _refreshNotificationStatus();
  }

  /// Called on app startup/resume to verify token is still valid.
  /// Re-syncs token if it changed or if there are pending updates.
  Future<void> verifyNotificationsOnResume(String userId) async {
    try {
      await FcmTokenRegistrationService.instance.verifyAndSyncToken(userId);
    } catch (_) {
      // Silently fail - will retry on next resume
    }
  }

  /// Called on app startup/resume for guests to verify token is still valid.
  /// Re-syncs guest token if it changed or if there are pending updates.
  Future<void> verifyGuestNotificationsOnResume() async {
    try {
      await FcmTokenRegistrationService.instance.verifyAndSyncGuestToken();
    } catch (_) {
      // Silently fail - will retry on next resume
    }
  }

  /// Called on user logout.
  /// Unlinks device from user, stops listening to token changes, and registers guest notifications.
  Future<void> unregister() async {
    await _cancelTokenRefreshSubscription();

    // Unlink device from user account
    await FcmTokenRegistrationService.instance.unlinkDevice();

    // Immediately fetch a clean guest token and register it
    try {
      final guestToken = await _repository.getAndCacheFcmToken();
      if (guestToken != null && guestToken.isNotEmpty) {
        await FcmTokenRegistrationService.instance.registerGuestToken(token: guestToken);
      }
    } catch (e) {
      print('[FCM DEBUG] ❌ Error registering guest token after logout: $e');
    }
  }

  void _listenForTokenRefresh(String userId) {
    _tokenRefreshSubscription = _repository.onTokenRefresh().listen(
      (token) async {
        if (token.isEmpty) return;
        // Re-register with new token
        await FcmTokenRegistrationService.instance
            .registerToken(userId: userId, token: token);
      },
    );
  }

  Future<void> _cancelTokenRefreshSubscription() async {
    await _tokenRefreshSubscription?.cancel();
    _tokenRefreshSubscription = null;
  }

  Future<void> _refreshNotificationStatus() async {
    try {
      await _repository.getNotificationStatus();
    } catch (_) {
      // Ignore status sync failure - not critical
    }
  }

  void dispose() {
    _tokenRefreshSubscription?.cancel();
    FcmTokenRegistrationService.instance.dispose();
  }
}
