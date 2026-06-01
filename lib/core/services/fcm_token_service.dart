import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger/logger.dart';
import 'package:wassaly/features/auth/domain/usecases/register_fcm_token_usecase.dart';

class FcmTokenService {
  FcmTokenService._();
  static final FcmTokenService instance = FcmTokenService._();

  final _logger = Logger();
  late RegisterFcmTokenUseCase _registerFcmTokenUseCase;

  /// Must be called once after DI is initialized.
  set useCase(RegisterFcmTokenUseCase value) {
    _registerFcmTokenUseCase = value;
  }

  /// Fetches FCM token + device ID and registers them with the backend.
  /// Errors are swallowed — this must never block the login flow.
  Future<void> registerToken(int userId) async {
    _logger.i('[FcmTokenService] registerToken started for user $userId');
    try {
      String? token;
      int retryCount = 0;
      const maxRetries = 3;

      while (token == null && retryCount < maxRetries) {
        if (retryCount > 0) {
          _logger.i(
              '[FcmTokenService] FCM token was null, retrying ($retryCount/$maxRetries) after 2s...');
          await Future<void>.delayed(const Duration(seconds: 2));
        }

        token = await FirebaseMessaging.instance.getToken();
        retryCount++;
      }

      if (token == null) {
        _logger.e(
            '[FcmTokenService] ❌ FCM token is still NULL after $maxRetries attempts. Registration aborted.');
        return;
      }

      _logger.i(
          '[FcmTokenService] FCM token obtained: ${token.substring(0, 10)}...');
      final deviceId = await _getDeviceId();

      final result = await _registerFcmTokenUseCase(
        FcmTokenParams(token: token, deviceId: deviceId, userId: userId),
      );

      result.fold(
        (failure) => _logger
            .w('[FcmTokenService] Registration failed: ${failure.message}'),
        (_) => _logger.i(
            '[FcmTokenService] Token registered successfully for user $userId'),
      );
    } catch (e) {
      _logger.e(
          '[FcmTokenService] Unexpected error during token registration: $e');
    }
  }

  /// Listens to token refresh events and re-registers with the backend.
  void setupTokenRefresh(int userId) {
    FirebaseMessaging.instance.onTokenRefresh.listen(
      (newToken) async {
        _logger.i(
            '[FcmTokenService] Token refreshed — re-registering for user $userId');
        final deviceId = await _getDeviceId();

        final result = await _registerFcmTokenUseCase(
          FcmTokenParams(token: newToken, deviceId: deviceId, userId: userId),
        );
        result.fold(
          (failure) => _logger.w(
              '[FcmTokenService] Refresh registration failed: ${failure.message}'),
          (_) => _logger
              .i('[FcmTokenService] Refresh token registered for user $userId'),
        );
      },
      onError: (e) => _logger.e('[FcmTokenService] onTokenRefresh error: $e'),
    );
  }

  Future<String> _getDeviceId() async {
    final deviceInfo = DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        final info = await deviceInfo.androidInfo;
        return info.id;
      } else if (Platform.isIOS) {
        final info = await deviceInfo.iosInfo;
        return info.identifierForVendor ?? 'unknown-ios';
      }
    } catch (_) {}
    return 'unknown-device';
  }
}
