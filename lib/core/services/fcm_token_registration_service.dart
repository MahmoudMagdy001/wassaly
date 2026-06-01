import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';

/// Manages FCM token registration with retry logic, offline handling, and device tracking.
/// Handles all scenarios: first launch, login, token refresh, account switch, logout.
class FcmTokenRegistrationService {
  FcmTokenRegistrationService._internal();

  static final FcmTokenRegistrationService instance =
      FcmTokenRegistrationService._internal();

  final NotificationRepository _repository = sl<NotificationRepository>();
  Timer? _retryTimer;
  static const Duration _retryDelay = Duration(seconds: 30);
  static const int _maxRetries = 5;
  int _retryCount = 0;
  String? _currentUserId;

  /// Register/update FCM token with backend for a user.
  /// Automatically handles retry on failure and offline mode.
  Future<bool> registerToken({
    required String userId,
    String? token,
  }) async {
    try {
      print('[FCM DEBUG] registerToken called - userId: $userId');
      _currentUserId = userId;
      _retryCount = 0;

      final fcmToken = token ?? await _repository.getAndCacheFcmToken();
      print('[FCM DEBUG] FCM Token retrieved: $fcmToken');
      if (fcmToken == null || fcmToken.isEmpty) {
        print(
            '[FCM DEBUG] FCM Token is null or empty - marking pending and scheduling retry');
        try {
          final deviceRegService = DeviceRegistrationService.instance;
          await deviceRegService.markTokenPendingSync();
        } catch (_) {}
        _scheduleRetry();
        return false;
      }

      return await _performRegistration(fcmToken, userId);
    } catch (e) {
      print('[FCM DEBUG] ❌ Error in registerToken: $e');
      _scheduleRetry();
      return false;
    }
  }

  /// Register token for unauthenticated guest device.
  Future<bool> registerGuestToken({String? token}) async {
    try {
      final fcmToken = token ?? await _repository.getAndCacheFcmToken();
      print('[FCM DEBUG] registerGuestToken retrieved token: $fcmToken');
      if (fcmToken == null || fcmToken.isEmpty) {
        print(
            '[FCM DEBUG] Guest token null - marking pending and scheduling retry');
        try {
          await DeviceRegistrationService.instance.markTokenPendingSync();
        } catch (_) {}
        _scheduleRetry();
        return false;
      }

      final deviceId = await DeviceRegistrationService.instance.getDeviceId();
      try {
        await _repository.registerGuestFcmToken(
            token: fcmToken, deviceId: deviceId);
        print('[FCM DEBUG] ✅ Guest token registration successful');
        await DeviceRegistrationService.instance.markTokenSynced(fcmToken);
        return true;
      } catch (e) {
        print('[FCM DEBUG] ❌ Guest token registration failed: $e');
        await DeviceRegistrationService.instance.markTokenPendingSync();
        _scheduleRetry();
        return false;
      }
    } catch (e) {
      print('[FCM DEBUG] ❌ Error in registerGuestToken: $e');
      _scheduleRetry();
      return false;
    }
  }

  /// Verify token hasn't changed since last app start and sync if needed.
  /// Called on app resume/startup to ensure backend always has latest token.
  Future<void> verifyAndSyncToken(String userId) async {
    print('[FCM DEBUG] 🔄 verifyAndSyncToken called - userId: $userId');
    try {
      final deviceRegService = DeviceRegistrationService.instance;
      final currentToken = await _repository.getAndCacheFcmToken();
      print('[FCM DEBUG] Current token: ${currentToken?.substring(0, 10)}...');

      if (currentToken == null || currentToken.isEmpty) {
        print('[FCM DEBUG] ⚠️ Current token is null/empty');
        return;
      }

      // Check if token changed or has pending sync
      if (deviceRegService.shouldSyncToken(currentToken) ||
          deviceRegService.hasPendingSync()) {
        print(
            '[FCM DEBUG] 🔃 Token changed or pending sync detected - re-registering');
        await registerToken(userId: userId, token: currentToken);
      } else {
        print('[FCM DEBUG] ✅ Token unchanged - no sync needed');
      }
    } catch (e) {
      print('[FCM DEBUG] ❌ Error in verifyAndSyncToken: $e');
      // Silently fail - retry will happen next app resume
    }
  }

  /// Unlink device from user (called on logout).
  /// Clears registration state but keeps device ID for future logins.
  Future<void> unlinkDevice() async {
    _cancelRetry();
    _currentUserId = null;
    _retryCount = 0;

    try {
      await _repository.deleteFcmToken();
    } catch (_) {
      // Ignore - device cleanup is best-effort
    }

    try {
      final deviceRegService = DeviceRegistrationService.instance;
      await deviceRegService.clearDeviceState();
    } catch (_) {
      // Ignore - state cleanup is best-effort
    }
  }

  Future<bool> _performRegistration(String token, String userId) async {
    try {
      print(
          '[FCM DEBUG] Starting _performRegistration - token: ${token.substring(0, 10)}..., userId: $userId');
      await _repository.registerFcmToken(token: token, userId: userId);
      print('[FCM DEBUG] ✅ Token registration successful!');

      // Mark as successfully synced
      final deviceRegService = DeviceRegistrationService.instance;
      await deviceRegService.markTokenSynced(token);

      _retryCount = 0;
      _cancelRetry();
      return true;
    } catch (e) {
      print('[FCM DEBUG] ❌ Token registration failed: $e');
      // Mark as pending sync and schedule retry
      final deviceRegService = DeviceRegistrationService.instance;
      await deviceRegService.markTokenPendingSync();
      _scheduleRetry();
      return false;
    }
  }

  void _scheduleRetry() {
    if (_retryCount >= _maxRetries) {
      return;
    }

    _cancelRetry();
    _retryCount++;

    _retryTimer = Timer(_retryDelay, () async {
      if (_currentUserId != null) {
        await registerToken(userId: _currentUserId!);
      }
    });
  }

  void _cancelRetry() {
    _retryTimer?.cancel();
    _retryTimer = null;
  }

  void dispose() {
    _cancelRetry();
  }
}
