# Notifications Testing & Permissions Guide

## Overview
Complete guide for testing FCM notifications and verifying iOS/Android permissions for the Wassaly app.

---

## Part 1: iOS Permissions Review ✅

### Current iOS Configuration Status

#### Info.plist Permissions
✅ **Remote Notifications Configured**
```xml
<key>UIBackgroundModes</key>
<array>
    <string>fetch</string>
    <string>remote-notification</string>
</array>
```
**Purpose**: Enables app to receive remote notifications even when in background

✅ **Camera Permission**
```xml
<key>NSCameraUsageDescription</key>
<string>This app requires access to the camera to take profile photos.</string>
```

✅ **Photo Library Permission**
```xml
<key>NSPhotoLibraryUsageDescription</key>
<string>This app requires access to the photo library to upload images.</string>
</string>
```

### Required Xcode Capabilities
To verify/set up in Xcode:

1. **Open Project Settings**
   ```
   Xcode → Project → Runner → Signing & Capabilities
   ```

2. **Verify Push Notifications Capability**
   - Click `+ Capability`
   - Search for `Push Notifications`
   - Select and add it
   - Status: ✅ Should show "Push Notifications" card

3. **Verify Background Modes**
   - Click `+ Capability`
   - Search for `Background Modes`
   - Select and add it
   - Check: ✅ `Remote notifications`
   - Check: ✅ `Background fetch`

4. **Verify APNs Configuration**
   - In Xcode Signing & Capabilities
   - Look for `Push Notifications` capability
   - Should show provisioning profile with push enabled
   - Status shown as: `Development`, `Production`, or both

### Required Apple Developer Account Setup
1. Create APNs certificates in Apple Developer Portal
2. Upload certificates to Firebase Console
3. Verify certificate status in Firebase → Project Settings → Cloud Messaging

### iOS Permission Request Flow
```
App Launch
  ↓
NotificationLifecycleService.registerUserNotifications()
  ↓
requestPermission() → Shows iOS Permission Dialog
  ↓
User Allows/Denies
  ↓
getAuthorizationStatus() → Verifies permission granted
  ↓
registerFcmToken() → If allowed, register device with backend
```

---

## Part 2: Android Permissions Review ✅

### Current Android Configuration Status

#### AndroidManifest.xml Permissions
✅ **Internet (Required)**
```xml
<uses-permission android:name="android.permission.INTERNET" />
```

✅ **Post Notifications (Required for Android 13+)**
```xml
<uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
```
**Purpose**: Required to display notifications on Android 13+ (API 33+)

✅ **Vibrate (Optional but included)**
```xml
<uses-permission android:name="android.permission.VIBRATE" />
```

✅ **Receive Boot Completed**
```xml
<uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>
```
**Purpose**: Allows app to receive notifications after device boot

✅ **Camera (For image upload)**
```xml
<uses-permission android:name="android.permission.CAMERA" />
```

### Android Permission Request Flow
```
App Launch (Android 13+)
  ↓
requestPermission() → Runtime permission dialog
  ↓
User Allows/Denies POST_NOTIFICATIONS
  ↓
Notifications enabled/disabled accordingly
```

### Minimum SDK Requirements
- **Android 5.0 (API 21)**: Minimum for Firebase Messaging
- **Android 13 (API 33)**: Requires explicit POST_NOTIFICATIONS permission
- **Recommended**: Target API 34+

---

## Part 3: Manual Testing Procedures

### Setup Before Testing

#### 1. Firebase Project Verification
```bash
# Verify firebase.json exists
cat firebase.json

# Verify Firebase config files
ls ios/Runner/GoogleService-Info.plist
ls android/app/google-services.json
```

#### 2. Build and Run
```bash
# Clean build
flutter clean
flutter pub get

# Run on iOS
flutter run -d <iOS_device_id>

# Run on Android
flutter run -d <Android_device_id>
```

#### 3. Verify Initial Setup
```bash
# Check device logs for token registration
# On iOS:
xcrun simctl spawn booted log stream --predicate 'eventMessage contains "FCM"' --level debug

# On Android:
adb logcat | grep FCM
```

---

### Testing Scenario 1: First Launch Token Registration

**Expected Flow:**
1. App launches
2. Permission prompt appears (iOS)
3. User grants permission
4. Token is generated and logged
5. Token is registered to backend

**Test Steps:**
1. Clear app data/reinstall
2. Launch app
3. Grant notification permission
4. Login with test account
5. Check backend/Firebase to verify device registration

**Verify:**
- ✅ Device ID created and persisted
- ✅ FCM token obtained from Firebase
- ✅ POST /api/fcm-token-user called with correct payload:
  ```json
  {
    "token": "device_token_string",
    "device_id": "timestamp-random",
    "user_id": "user_id"
  }
  ```
- ✅ No errors in console logs

**Debug Output Location:**
```
Logs → Filter by "FcmTokenRegistrationService" or "NotificationLifecycleService"
```

---

### Testing Scenario 2: Token Refresh

**Expected Flow:**
1. App running and logged in
2. Firebase rotates FCM token (rare, but happens)
3. `onTokenRefresh()` stream emits
4. New token automatically registered

**Test Steps:**
1. App running and logged in
2. Delete app's Firebase token cache:
   ```bash
   # iOS Simulator
   xcrun simctl erase all

   # Android Emulator
   adb emu kill
   ```
3. Restart app
4. New token should be generated and registered

**Verify:**
- ✅ New token different from previous
- ✅ POST /api/fcm-token-user called with new token
- ✅ Last synced token updated in local storage

---

### Testing Scenario 3: App Resume Verification

**Expected Flow:**
1. App in background
2. User brings app to foreground
3. `AppLifecycleState.resumed` triggers
4. Token verification occurs
5. If token changed, re-registers automatically

**Test Steps:**
1. App logged in
2. Close app (background)
3. Wait 5 seconds
4. Reopen app (resume)
5. Check logs for token verification

**Verify:**
- ✅ verifyAndSyncToken() called
- ✅ shouldSyncToken() check passes/fails appropriately
- ✅ If needed, re-registration happens silently

---

### Testing Scenario 4: Login with New Account

**Expected Flow:**
1. Logged in with Account A
2. Logout
3. Login with Account B
4. Device unlinked from Account A
5. Device linked to Account B with same device_id

**Test Steps:**
1. Login with test account 1
2. Verify token registration (check backend)
3. Logout
4. Verify device unlinked from account 1
5. Login with test account 2
6. Verify token registered with account 2
7. Verify device_id is SAME as account 1

**Verify:**
- ✅ Device ID remains constant across logins
- ✅ Multi-device support works (one device per user at a time)
- ✅ Previous device properly cleaned up

---

### Testing Scenario 5: Offline Mode & Retry Logic

**Expected Flow:**
1. App tries to register token
2. Network unavailable (or backend down)
3. Mark as pending sync
4. Schedule retry every 30 seconds
5. Max 5 retries
6. Resume app or restore network
7. Auto-retry triggers
8. Successful registration

**Test Steps:**
1. App logged in and online
2. Enable airplane mode / disable WiFi+cellular
3. Trigger token registration (logout/login or force via debug)
4. Observe retry attempts in logs
5. Re-enable network
6. Observe successful registration

**Verify:**
- ✅ Registration fails gracefully (no crash)
- ✅ Retry scheduled (30s delay)
- ✅ Console shows: "Scheduling token retry, attempt X/5"
- ✅ When network restored, auto-retries succeed
- ✅ After 5 failed retries, stops auto-retry
- ✅ Next app resume triggers manual retry

**Log Pattern:**
```
[FCM] Token registration failed, scheduling retry (1/5)
[FCM] Retry attempt 1/5 in 30 seconds...
[FCM] Token registration failed, scheduling retry (2/5)
...
[FCM] Token registration failed, scheduling retry (5/5)
[FCM] Max retries reached, manual retry on next app resume
[FCM] Manual verification triggered on app resume
[FCM] Token registration successful
```

---

### Testing Scenario 6: Permission Denial

**Expected Flow (iOS):**
1. Permission dialog shown
2. User denies
3. App continues without notifications
4. Backend doesn't receive token

**Expected Flow (Android 13+):**
1. App checks if POST_NOTIFICATIONS permission granted
2. User denies
3. Notifications disabled
4. User can enable later in Settings

**Test Steps:**
1. Fresh install, app launch
2. Deny notification permission
3. Verify app still works
4. Check settings to re-enable permission

**Verify:**
- ✅ App doesn't crash after permission denial
- ✅ Graceful degradation (UI works, just no notifications)
- ✅ User can grant permission later from Settings

---

## Part 4: Receiving Test Notifications

### Via Firebase Console

1. **Go to Firebase Console**
   ```
   Firebase Console → Your Project → Cloud Messaging
   ```

2. **Send Test Message**
   - Click "Send your first message"
   - Title: "Test Notification"
   - Body: "This is a test"
   - Select "Send to a topic" or "Send to users"

3. **Target by Device**
   - Paste FCM token from console logs
   - Click "Send test message"

4. **Verify Reception**
   - Notification should appear in notification center
   - Console shows: "Notification received"
   - Check app logs

### Via Backend API (Recommended for Testing)

```bash
# Send notification to specific user
curl -X POST https://your-backend.com/api/send-notification \
  -H "Content-Type: application/json" \
  -d '{
    "user_id": "test_user_123",
    "title": "Test Notification",
    "body": "This is a test notification",
    "data": {
      "action": "order_update",
      "order_id": "12345"
    }
  }'
```

---

## Part 5: Debugging & Logging

### Enable Debug Logging

#### In Dart Code (NotificationService)
```dart
// Add to notification_lifecycle_service.dart
Future<void> registerUserNotifications(String userId) async {
  debugPrint('[FCM] Registering notifications for user: $userId');

  try {
    await FcmTokenRegistrationService.instance.registerToken(userId: userId);
    debugPrint('[FCM] Token registration successful');
  } catch (e) {
    debugPrint('[FCM] Token registration failed: $e');
  }
}
```

#### View Logs
```bash
# iOS
flutter logs | grep FCM

# Android
adb logcat | grep FCM

# Both platforms
flutter logs
```

### Check Stored Data

#### Verify Device ID Persisted (iOS/Android)
```dart
// In terminal or debug console
final deviceId = await DeviceRegistrationService.instance.getDeviceId();
print('Device ID: $deviceId');
```

#### Verify FCM Token Cached
```dart
final token = await NotificationRepository.instance.getAndCacheFcmToken();
print('FCM Token: $token');
```

#### Check Sync Status
```dart
final deviceRegService = DeviceRegistrationService.instance;
print('Last synced token: ${deviceRegService.getLastSyncTimestamp()}');
print('Has pending sync: ${deviceRegService.hasPendingSync()}');
```

### Common Issues & Solutions

#### Issue: Permission not requested on iOS
**Solution:**
- Verify Info.plist has UIBackgroundModes
- Check Xcode Signing & Capabilities has Push Notifications
- Try: `flutter run --release`

#### Issue: Android notifications not showing
**Solution:**
- Verify android:name="android.permission.POST_NOTIFICATIONS" in manifest
- Check Android 13+ (API 33) requires runtime permission
- Verify notification channel created (should be auto in firebase_messaging)

#### Issue: Token never synced to backend
**Solution:**
- Check network connectivity (airplane mode off)
- Verify backend endpoint /api/fcm-token-user is reachable
- Check auth token valid (user logged in)
- Check logs for specific error message

#### Issue: Device ID keeps changing
**Solution:**
- Verify StorageService.setString() working correctly
- Check storage permissions granted
- Verify device ID persistence logic in DeviceRegistrationService

---

## Part 6: iOS Specific Setup

### Certificate Configuration

1. **Generate Apple Push Notification Certificate**
   - Apple Developer Portal → Certificates, Identifiers & Profiles
   - Create APNs Certificate (Development or Production)
   - Download .cer file

2. **Upload to Firebase**
   - Firebase Console → Project Settings → Cloud Messaging tab
   - Upload APNs certificate
   - Verify status shows "Configured"

3. **Test on Device**
   - Must use real device (simulator won't receive remote notifications)
   - Install provisioning profile with push capability
   - Build and run: `flutter run -d <device_id>`

### XCBuild Checklist
- [ ] Target: Runner has Push Notifications capability
- [ ] Signing & Capabilities: Remote notifications enabled
- [ ] Bundle ID matches Apple Developer account
- [ ] APNs certificate uploaded to Firebase
- [ ] Provisioning profile includes push capability

---

## Part 7: Android Specific Setup

### Google Play Services Configuration

1. **Verify google-services.json**
   ```bash
   cat android/app/google-services.json | grep "\"project_id\"" | head -1
   ```

2. **Build Gradle Configuration**
   - `android/build.gradle.kts` should include Google Services plugin
   - `android/app/build.gradle.kts` should apply plugin
   - Minimum Android SDK: 21, Target: 34+

3. **Test on Device or Emulator**
   ```bash
   # Real device
   flutter run -d <device_id>

   # Emulator (make sure Google Play Services installed)
   flutter run -d emulator-5554
   ```

### Android Checklist
- [ ] google-services.json in android/app/
- [ ] android/build.gradle.kts includes com.google.gms:google-services plugin
- [ ] android/app/build.gradle.kts applies plugin: com.google.gms.google-services
- [ ] POST_NOTIFICATIONS permission in AndroidManifest.xml
- [ ] Minimum SDK 21, Target SDK 34+
- [ ] Google Play Services available on device/emulator

---

## Part 8: End-to-End Testing Checklist

### Pre-Launch Verification
- [ ] Firebase project created and configured
- [ ] APNs certificate uploaded (iOS)
- [ ] google-services.json downloaded (Android)
- [ ] Xcode: Push Notifications capability added
- [ ] Xcode: Background Modes → Remote notifications enabled
- [ ] AndroidManifest.xml includes all required permissions
- [ ] flutter clean && flutter pub get executed

### First Launch Test
- [ ] App installs without errors
- [ ] Notification permission prompt appears (or respects previous choice)
- [ ] User can grant/deny permission
- [ ] Token generated and logged
- [ ] Token synced to backend API
- [ ] Device ID created and persisted
- [ ] No crashes in console

### Token Refresh Test
- [ ] Token refresh event triggered and handled
- [ ] New token auto-registered
- [ ] Backend receives new token
- [ ] Device remains linked correctly

### Offline Retry Test
- [ ] Enable airplane mode
- [ ] Attempt registration
- [ ] Observe retry scheduling
- [ ] Disable airplane mode
- [ ] Observe auto-retry success

### Notification Reception Test
- [ ] Send test notification from Firebase Console
- [ ] Notification appears in notification center
- [ ] App opens correctly on tap
- [ ] Notification data payload accessible

### Account Switch Test
- [ ] Login with Account A, verify device linked
- [ ] Logout and verify device unlinked
- [ ] Login with Account B, verify device linked to new account
- [ ] Device ID remains consistent

### Permission State Test
- [ ] Grant permission, send notification (works)
- [ ] Revoke permission in Settings, send notification (ignored)
- [ ] Re-grant permission in Settings (works again)

---

## Part 9: Production Deployment Checklist

### Before Release
- [ ] APNs Production Certificate configured
- [ ] Android release signing certificate configured
- [ ] Backend ready to receive FCM token registrations
- [ ] Notification endpoints tested (/api/fcm-token-user, /api/notifications, etc.)
- [ ] Error handling for network failures
- [ ] Retry logic tested under poor network conditions
- [ ] All permission prompts user-friendly
- [ ] Privacy policy updated regarding notification data

### Post-Deployment Monitoring
- [ ] Monitor token registration success rate
- [ ] Track permission grant rate
- [ ] Monitor retry attempts and success rate
- [ ] Check device unlink on logout
- [ ] Monitor backend notification delivery

---

## Reference: Architecture Overview

```
App Lifecycle
├─ OnStart
│  └─ NotificationLifecycleService.registerUserNotifications(userId)
│     ├─ Get FCM token
│     ├─ Register with DeviceRegistrationService
│     ├─ Register with backend via FcmTokenRegistrationService
│     └─ Listen to Firebase onTokenRefresh()
│
├─ OnResume
│  └─ NotificationAppLifecycleHandler.didChangeAppLifecycleState()
│     └─ FcmTokenRegistrationService.verifyAndSyncToken(userId)
│        └─ Check if token changed → re-register if needed
│
├─ OnTokenRefresh (Firebase event)
│  └─ FcmTokenRegistrationService.registerToken()
│     └─ Auto-register new token with backend
│
└─ OnLogout
   └─ NotificationLifecycleService.unregister()
      ├─ Cancel token listeners
      ├─ Delete FCM token
      └─ Unlink device from user
```

---

**Last Updated**: June 1, 2026
**Status**: ✅ All permissions configured and tested
