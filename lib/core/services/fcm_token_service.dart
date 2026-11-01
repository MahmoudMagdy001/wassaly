import 'dart:async';
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

  String? _currentToken;
  int? _registeredUserId;
  StreamSubscription<String>? _tokenRefreshSubscription;

  /// Must be called once after DI is initialized.
  set useCase(RegisterFcmTokenUseCase value) {
    _registerFcmTokenUseCase = value;
  }

  /// Triggers FCM registration, obtains token via onRegistered, and registers with backend.
  /// Errors are swallowed — this must never block the login flow.
  Future<void> registerToken(int userId) async {
    _logger.i('[FcmTokenService] registerToken started for user $userId');
    try {
      if (_currentToken != null && _registeredUserId == userId) {
        _logger.i(
          '[FcmTokenService] Token already registered for user $userId, skipping redundant registration.',
        );
        return;
      }

      if (_currentToken != null) {
        await _sendTokenToBackend(_currentToken!, userId);
        return;
      }

      final completer = Completer<String?>();
      final sub = FirebaseMessaging.instance.onRegistered.listen(
        (token) {
          if (!completer.isCompleted) completer.complete(token);
        },
        onError: (Object e) {
          _logger.w('[FcmTokenService] onRegistered error: $e');
          if (!completer.isCompleted) completer.complete(null);
        },
      );

      try {
        await FirebaseMessaging.instance.register();
        final token = await completer.future.timeout(
          const Duration(seconds: 10),
          onTimeout: () => null,
        );

        if (token != null) {
          _currentToken = token;
          await _sendTokenToBackend(token, userId);
        } else {
          _logger.e(
            '[FcmTokenService] ❌ Failed to obtain token from onRegistered within timeout.',
          );
        }
      } finally {
        await sub.cancel();
      }
    } on Object catch (e) {
      _logger.e(
        '[FcmTokenService] Unexpected error during token registration: $e',
      );
    }
  }

  /// Listens to token registration/refresh events and re-registers with the backend.
  void setupTokenRefresh(int userId) {
    unawaited(_tokenRefreshSubscription?.cancel());
    try {
      _tokenRefreshSubscription =
          FirebaseMessaging.instance.onRegistered.listen(
        (newToken) async {
          _logger.i(
            '[FcmTokenService] Token registered/refreshed — re-registering for user $userId',
          );
          await _sendTokenToBackend(newToken, userId);
        },
        onError: (Object e) =>
            _logger.e('[FcmTokenService] onRegistered error: $e'),
      );
    } on Object catch (e) {
      _logger.w('[FcmTokenService] Firebase Messaging not initialized: $e');
    }
  }

  /// Cancels the token refresh listener (e.g. on logout).
  void cancelTokenRefresh() {
    unawaited(_tokenRefreshSubscription?.cancel());
    _tokenRefreshSubscription = null;
    _registeredUserId = null;
    _logger.i('[FcmTokenService] Token refresh listener cancelled.');
  }

  Future<void> _sendTokenToBackend(String token, int userId) async {
    if (_currentToken == token && _registeredUserId == userId) {
      return;
    }

    _logger.i(
      '[FcmTokenService] FCM token obtained: ${token.length > 10 ? token.substring(0, 10) : token}...',
    );
    final deviceId = await _getDeviceId();

    final result = await _registerFcmTokenUseCase(
      FcmTokenParams(token: token, deviceId: deviceId, userId: userId),
    );

    result.fold(
      (failure) => _logger.w(
        '[FcmTokenService] Registration failed: ${failure.message}',
      ),
      (_) {
        _currentToken = token;
        _registeredUserId = userId;
        _logger.i(
          '[FcmTokenService] Token registered successfully for user $userId',
        );
      },
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
    } on Object catch (_) {}
    return 'unknown-device';
  }
}
