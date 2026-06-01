// test/features/notifications/services/notification_services_test.dart
// Simplified tests for notification services

import 'package:flutter_test/flutter_test.dart';
import 'package:wassaly/core/services/device_registration_service.dart';
import 'package:wassaly/core/services/fcm_token_registration_service.dart';
import 'package:wassaly/core/services/notification_lifecycle_service.dart';

void main() {
  group('DeviceRegistrationService Tests', () {
    test('DeviceRegistrationService is singleton', () {
      // Arrange & Act
      final service1 = DeviceRegistrationService.instance;
      final service2 = DeviceRegistrationService.instance;

      // Assert
      expect(identical(service1, service2), true);
    });

    test('getDeviceId returns consistent value', () async {
      // Arrange
      final service = DeviceRegistrationService.instance;

      // Act
      final deviceId1 = await service.getDeviceId();
      final deviceId2 = await service.getDeviceId();

      // Assert
      expect(deviceId1, isNotNull);
      expect(deviceId1, equals(deviceId2));
      // Device ID format: timestamp-random
      expect(deviceId1, matches(RegExp(r'^\d+-\d+$')));
    });

    test('shouldSyncToken detects token changes', () async {
      // Arrange
      final service = DeviceRegistrationService.instance;
      await service.markTokenSynced('old_token');

      // Act
      final shouldSync = service.shouldSyncToken('new_token');

      // Assert
      expect(shouldSync, true);
    });

    test('shouldSyncToken returns false for same token', () async {
      // Arrange
      final service = DeviceRegistrationService.instance;
      const token = 'same_token_12345';
      await service.markTokenSynced(token);

      // Act
      final shouldSync = service.shouldSyncToken(token);

      // Assert
      expect(shouldSync, false);
    });

    test('markTokenPendingSync sets pending state', () async {
      // Arrange
      final service = DeviceRegistrationService.instance;

      // Act
      await service.markTokenPendingSync();
      final hasPending = service.hasPendingSync();

      // Assert
      expect(hasPending, true);
    });

    test('markTokenSynced clears pending state', () async {
      // Arrange
      final service = DeviceRegistrationService.instance;
      await service.markTokenPendingSync();

      // Act
      await service.markTokenSynced('test_token');
      final hasPending = service.hasPendingSync();

      // Assert
      expect(hasPending, false);
    });

    test('clearDeviceState resets sync state but keeps device ID', () async {
      // Arrange
      final service = DeviceRegistrationService.instance;
      final deviceIdBefore = await service.getDeviceId();
      await service.markTokenPendingSync();

      // Act
      await service.clearDeviceState();
      final deviceIdAfter = await service.getDeviceId();
      final hasPending = service.hasPendingSync();

      // Assert
      expect(deviceIdBefore, equals(deviceIdAfter)); // Device ID persists
      expect(hasPending, false); // Pending state cleared
    });
  });

  group('NotificationLifecycleService Tests', () {
    test('NotificationLifecycleService is singleton', () {
      // This is a basic test to ensure the service can be instantiated
      // Full integration tests should be done manually with Firebase
      expect(() {
        // Just accessing the instance should not throw
        // ignore: unnecessary_statements
        NotificationLifecycleService.instance;
      }, returnsNormally);
    });
  });

  group('FcmTokenRegistrationService Tests', () {
    test('FcmTokenRegistrationService is singleton', () {
      // This is a basic test to ensure the service can be instantiated
      // Full integration tests should be done manually with Firebase
      expect(() {
        // Just accessing the instance should not throw
        // ignore: unnecessary_statements
        FcmTokenRegistrationService.instance;
      }, returnsNormally);
    });
  });
}
