import 'dart:math';

import 'package:wassaly/core/imports/imports.dart';

/// Manages device identification and registration state for FCM notifications.
/// Persists device ID locally and tracks registration state for syncing.
class DeviceRegistrationService {
  DeviceRegistrationService._internal();

  static final DeviceRegistrationService instance =
      DeviceRegistrationService._internal();

  static const String _deviceIdKey = 'fcm_device_id';
  static const String _lastSyncedTokenKey = 'fcm_last_synced_token';
  static const String _pendingSyncKey = 'fcm_pending_sync';
  static const String _lastSyncTimestampKey = 'fcm_last_sync_timestamp';

  Future<String> getDeviceId() async {
    final storage = StorageService.instance;
    final existingId = storage.getString(_deviceIdKey);

    if (existingId != null && existingId.isNotEmpty) {
      return existingId;
    }

    final newDeviceId = _generateDeviceId();
    await storage.setString(_deviceIdKey, newDeviceId);
    return newDeviceId;
  }

  String _generateDeviceId() {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final random = Random.secure().nextInt(0x7FFFFFFF);
    return '$timestamp-$random';
  }

  /// Check if current token differs from last synced token.
  /// Returns true if token needs to be synced.
  bool shouldSyncToken(String currentToken) {
    final storage = StorageService.instance;
    final lastToken = storage.getString(_lastSyncedTokenKey);
    return lastToken != currentToken;
  }

  /// Mark token as successfully synced to backend.
  Future<void> markTokenSynced(String token) async {
    final storage = StorageService.instance;
    await storage.setString(_lastSyncedTokenKey, token);
    await storage.setString(
        _lastSyncTimestampKey, DateTime.now().toIso8601String());
    await storage.setBool(_pendingSyncKey, false);
  }

  /// Mark token as pending sync (for retry logic).
  Future<void> markTokenPendingSync() async {
    final storage = StorageService.instance;
    await storage.setBool(_pendingSyncKey, true);
  }

  /// Check if there's a pending sync that needs retry.
  bool hasPendingSync() {
    final storage = StorageService.instance;
    return storage.getBool(_pendingSyncKey) ?? false;
  }

  /// Get last successful sync timestamp (useful for debugging/monitoring).
  DateTime? getLastSyncTimestamp() {
    final storage = StorageService.instance;
    final timestamp = storage.getString(_lastSyncTimestampKey);
    if (timestamp != null) {
      return DateTime.tryParse(timestamp);
    }
    return null;
  }

  /// Clear all device registration state (used on logout).
  Future<void> clearDeviceState() async {
    final storage = StorageService.instance;
    await storage.remove(_lastSyncedTokenKey);
    await storage.remove(_pendingSyncKey);
    await storage.remove(_lastSyncTimestampKey);
    // Note: _deviceIdKey is NOT cleared - device ID persists across logouts
  }
}
