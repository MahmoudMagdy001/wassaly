# Notification Testing Quick Reference

## 🚀 Quick Start Testing

### 1. Initial Setup (5 min)
```bash
# Clean everything
flutter clean
flutter pub get

# Run on device
flutter run -d <device_id>

# Watch logs
flutter logs | grep -i fcm
```

### 2. Check Initial Permissions
**iOS:**
- App will ask for notification permission
- Grant it → Token registers automatically
- Deny it → No token sent to backend

**Android 13+:**
- Runtime permission requested
- Grant → Token registers
- Deny → Notifications disabled (can enable in Settings later)

### 3. Verify Token Registered
Check console output for:
```
[FCM] Device ID: 1234567890-987654321
[FCM] FCM Token: d1KN3p9...
[FCM] Registering token with backend
[FCM] Token registration successful
```

---

## 📱 Testing Scenarios (Copy-Paste)

### Scenario A: Fresh Install (5 min)
```bash
# Terminal 1: Run app
flutter run -d <device_id>

# Terminal 2: Watch logs
flutter logs

# In app:
1. Grant notification permission
2. Login with test account
3. Check console for "Token registration successful"
```

**Expected**: Device ID persists, token synced to backend

**Verify** by checking:
- Backend DB: user has device_id + fcm_token
- Local storage: SharedPreferences has `fcm_device_id` key

---

### Scenario B: App Resume (2 min)
```bash
# While app is running:
1. Press home button (send to background)
2. Wait 10 seconds
3. Tap app icon (resume)
4. Check console for "verifyAndSyncToken"
```

**Expected**: Token verification happens silently

**Verify** by looking for logs:
```
[FCM] Verifying token on app resume...
[FCM] Token unchanged, no sync needed
```

---

### Scenario C: Offline Retry (5 min)
```bash
# Scenario setup:
1. App running, logged in
2. Enable Airplane Mode
3. Logout → Login (triggers token re-registration)
4. Check logs for retry attempts
5. Disable Airplane Mode
6. Check logs for successful retry
```

**Expected**: Retries every 30 seconds, max 5 times

**Verify** by looking for:
```
[FCM] Token registration failed
[FCM] Scheduling retry 1/5 in 30 seconds
[FCM] Scheduling retry 2/5 in 30 seconds
... (enable network) ...
[FCM] Token registration successful
```

---

### Scenario D: Account Switch (3 min)
```bash
1. Login with Account A
2. Note device_id from logs
3. Logout
4. Login with Account B
5. Note device_id from logs (should be SAME)
6. Verify backend shows device linked to Account B
```

**Expected**: Same device_id, now associated with Account B

---

### Scenario E: Receive Test Notification (3 min)

**Via Firebase Console:**
1. Open https://console.firebase.google.com
2. Select your project
3. Cloud Messaging → Send your first message
4. Title: "Hello World"
5. Body: "Test notification"
6. Click "Send test message"
7. Select your FCM token from console logs
8. Click "Send"
9. Notification appears on device

**Via Backend API:**
```bash
curl -X POST https://your-backend.com/api/send-notification \
  -H "Authorization: Bearer <token>" \
  -H "Content-Type: application/json" \
  -d '{
    "user_id": "current_user_id",
    "title": "Test",
    "body": "Hello from API"
  }'
```

---

## 🔍 Debug Commands

### Check Device ID
```dart
// In Flutter console or debug:
import 'package:wassaly/core/services/device_registration_service.dart';

final deviceId = await DeviceRegistrationService.instance.getDeviceId();
print('Device ID: $deviceId');
```

### Check FCM Token
```dart
import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';
import 'package:wassaly/core/imports/imports.dart';

final token = await sl<NotificationRepository>().getAndCacheFcmToken();
print('FCM Token: $token');
```

### Check Sync Status
```dart
import 'package:wassaly/core/services/device_registration_service.dart';

final service = DeviceRegistrationService.instance;
print('Pending sync: ${service.hasPendingSync()}');
print('Last sync: ${service.getLastSyncTimestamp()}');
```

### View Stored Tokens
**iOS/Android - via SharedPreferences:**
```bash
# Connect to device
adb shell

# Navigate to app data
cd /data/data/com.wassaly.app/

# View SharedPreferences
cat shared_prefs/com.example.wassaly_flutter.xml | grep fcm
```

---

## 🐛 Common Issues & Quick Fixes

| Issue | Symptom | Fix |
|-------|---------|-----|
| **Token not syncing** | "Token registration failed" in logs | Check network, verify backend URL, check auth token |
| **Permission not showing** | No dialog on first launch | Run `flutter run --release` or reinstall app |
| **Notification not received** | Firebase shows sent, but no notification | Check permission granted in Settings, check app in foreground |
| **Retry not happening** | Failed token registration just fails once | Check network restored, check logs for retry scheduling |
| **Device ID changes** | Every app launch has new device ID | Check StorageService initialized, check permissions, check cache clearing |
| **Same device_id with multiple users** | Device linked to wrong user | Verify logout calls `unlinkDevice()`, check backend upsert logic |

---

## 📊 Log Patterns to Watch For

### ✅ Good Logs (Successful Flow)
```
[FCM] Device ID: 1234567890-987654321
[FCM] FCM Token: abc123def456...
[FCM] Registering token with backend
[FCM] Token registration successful
[FCM] Listening for token refresh events
```

### ⚠️ Warning Logs (Retrying)
```
[FCM] Token registration failed: ConnectionError
[FCM] Marking token as pending sync
[FCM] Scheduling retry 1/5 in 30 seconds
```

### ❌ Error Logs (Issues)
```
[FCM] getAndCacheFcmToken() failed: FirebaseException
[FCM] Backend returned error: 500 Internal Server Error
[FCM] deviceRegistration service not initialized
```

---

## 📋 Pre-Release Checklist

- [ ] Tested on real iOS device (not simulator)
- [ ] Tested on real Android device (or emulator with Google Play)
- [ ] iOS APNs certificate uploaded to Firebase
- [ ] Android google-services.json downloaded
- [ ] Xcode: Push Notifications capability added
- [ ] AndroidManifest: POST_NOTIFICATIONS permission added
- [ ] Notification permission flow tested (grant + deny)
- [ ] Offline retry tested
- [ ] Account switch tested
- [ ] Test notification received successfully
- [ ] Backend endpoints verified working
- [ ] Privacy policy updated

---

## 🎯 Success Criteria

✅ **You've successfully set up notifications when:**

1. **Token registers on first launch**
   - Device ID generated and persists
   - FCM token obtained and synced to backend
   - No errors in console

2. **Token verifies on app resume**
   - App detects when token changes
   - Automatically re-registers if needed
   - No user intervention required

3. **Offline handling works**
   - Gracefully handles network failures
   - Retries automatically (30s intervals, max 5x)
   - Succeeds when network restored

4. **Multi-device support works**
   - Each device has unique device_id
   - Device_id persists across sessions
   - Can switch between accounts

5. **Notifications received**
   - Can send test notification via Firebase Console
   - Notification appears in notification center
   - Tapping notification opens app correctly

6. **Logout unlinks device**
   - Device unlinked from user
   - Device ID still persists locally
   - Next login links device to new user

---

## 🔗 Reference Links

- [Firebase Cloud Messaging Docs](https://firebase.google.com/docs/cloud-messaging)
- [Flutter Firebase Messaging Plugin](https://pub.dev/packages/firebase_messaging)
- [iOS APNs Setup](https://developer.apple.com/documentation/usernotifications)
- [Android Push Notifications](https://developer.android.com/training/notify-user/build-notification)
- [Wassaly Detailed Testing Guide](./NOTIFICATION_TESTING_GUIDE.md)

---

**Last Updated**: June 1, 2026
**Version**: 1.0 - Quick Reference
