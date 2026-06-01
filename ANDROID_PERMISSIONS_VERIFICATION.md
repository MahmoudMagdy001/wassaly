# Android Permissions & Push Notifications Setup - Verification Checklist

## Current Status ✅

### AndroidManifest.xml Permissions
- ✅ **INTERNET** - Required for all network communication
- ✅ **POST_NOTIFICATIONS** - Required on Android 13+ to show notifications
- ✅ **VIBRATE** - Allows notification vibration
- ✅ **RECEIVE_BOOT_COMPLETED** - Allows receiving notifications after device boot
- ✅ **CAMERA** - For image capture in app

### build.gradle Configuration
- ✅ Firebase messaging dependency included
- ✅ Google services gradle plugin configured

### Current Status: Ready for Testing ✅

---

## Android Permission Breakdown

### Required Permissions (Must Have)

#### 1. INTERNET
```xml
<uses-permission android:name="android.permission.INTERNET" />
```
**Why**: Required for all network communication, Firebase, and API calls
**Runtime**: Granted automatically (not runtime permission)

#### 2. POST_NOTIFICATIONS (Android 13+ Only)
```xml
<uses-permission android:name="android.permission.POST_NOTIFICATIONS" />
```
**Why**: Required to display push notifications on Android 13+ (API 33+)
**Runtime**: Requires runtime permission on Android 13+
**Behavior**:
- Android < 13: Ignored (permission always granted)
- Android ≥ 13: Requires explicit user grant
- Requestable from Settings → App Permissions

### Optional Permissions (Already Configured)

#### 3. VIBRATE
```xml
<uses-permission android:name="android.permission.VIBRATE" />
```
**Why**: Allows notifications to vibrate
**Runtime**: Granted automatically
**User Experience**: Enhances notification feedback

#### 4. RECEIVE_BOOT_COMPLETED
```xml
<uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />
```
**Why**: Allows app to receive notifications after device reboot
**Runtime**: Granted automatically
**User Experience**: Notifications work even after restart

#### 5. CAMERA
```xml
<uses-permission android:name="android.permission.CAMERA" />
```
**Why**: For in-app photo capture and uploads
**Runtime**: Requires runtime permission (separate from notifications)

---

## Android Version Support

### Minimum Requirements
| Component | Minimum API | Target API | Recommended |
|-----------|-----------|-----------|-------------|
| Firebase Messaging | API 21 (5.0) | 21+ | 34+ |
| POST_NOTIFICATIONS | API 33 (13.0) | 33+ | 34+ |
| Gradle | 7.0 | 8.0+ | 8.3+ |
| compileSdk | 33 | 34+ | 35+ |

### Version-Specific Behavior

#### Android 12 (API 31) and Below
```
- POST_NOTIFICATIONS permission: Not used (always allowed)
- Notifications display automatically
- No runtime permission needed
- System respects notification settings
```

#### Android 13 (API 33)
```
- POST_NOTIFICATIONS permission: REQUIRED
- Notifications don't display without permission
- Runtime permission prompt shown first app launch
- User can grant/revoke in Settings
```

#### Android 14+ (API 34+)
```
- POST_NOTIFICATIONS permission: REQUIRED
- Additional privacy controls added
- Notification runtime permission respected
- Recommended target for new apps
```

---

## Gradle Configuration

### Check build.gradle.kts Files

#### android/build.gradle.kts (Project Level)
Should include Google Services plugin:
```kotlin
// At top of file or in plugins block
plugins {
    id("com.google.gms.google-services") version "4.3.15" apply false
}

// Or in dependencies:
classpath("com.google.gms:google-services:4.3.15")
```

#### android/app/build.gradle.kts (App Level)
Should apply Google Services plugin:
```kotlin
plugins {
    id("com.android.application")
    id("com.google.gms.google-services")  // MUST be after android
    id("com.google.firebase.crashlytics")
    id("kotlin-android")
}

android {
    compileSdk = 34  // Current recommended

    defaultConfig {
        minSdk = 21    // Firebase minimum
        targetSdk = 34 // Current recommended
    }
}

dependencies {
    // Firebase Messaging
    implementation("com.google.firebase:firebase-messaging:23.4.1")
}
```

---

## Testing Permissions Flow

### Scenario 1: Fresh Install on Android 13+

**Expected Flow:**
1. App installs
2. First time app launches → Permission prompt appears
   ```
   "Wassaly" wants to send you notifications
   [Don't Allow] [Allow]
   ```
3. User taps **Allow**
4. FCM token generated and registered
5. Notifications now work

**Test Steps:**
```bash
# Fresh install
adb uninstall com.wassaly.app
flutter run -d <device_id>

# Grant permission when prompted
# Check logs for: "FCM Token registered successfully"
```

### Scenario 2: Permission Previously Denied

**User sees notifications disabled:**
1. Open Settings
2. Navigate to Apps → Wassaly
3. Go to Permissions
4. Find "Notifications"
5. Grant permission
6. Return to app
7. Notifications now work

**Test Steps:**
```bash
# Install app
flutter run -d <device_id>

# Deny permission
# Uninstall and reinstall to reset (or clear app data)
# Grant permission second time
```

### Scenario 3: Runtime Permission Request

**Programmatic Permission Check:**
```dart
import 'package:permission_handler/permission_handler.dart';

// Check current status
final status = await Permission.notification.status;
print('Notification permission: $status');  // granted, denied, restricted, etc

// Request permission if needed
if (!status.isGranted) {
  final result = await Permission.notification.request();
  print('Permission result: $result');
}

// Grant status
if (status.isDenied) {
  print('User denied permission');
} else if (status.isGranted) {
  print('User granted permission');
} else if (status.isDenied) {
  print('User can grant permission in Settings');
}
```

---

## Firebase Setup for Android

### Step 1: Download google-services.json
1. Go to https://console.firebase.google.com
2. Select your project
3. **Project Settings** → **General**
4. Under "Your apps" section
5. Find Android app
6. Download `google-services.json`

### Step 2: Place in Correct Location
```
android/app/google-services.json
```
**NOT:**
- ❌ android/google-services.json
- ❌ google-services.json (root)
- ❌ Any other location

### Step 3: Verify Contents
```bash
# Check file exists and has content
cat android/app/google-services.json | grep -i "project_id"

# Output should show:
# "project_id": "your-project-id"
```

### Step 4: Configure Gradle Plugin
```bash
# Verify plugin applied in app build.gradle.kts
grep "google-services" android/app/build.gradle.kts

# Output should show:
# id("com.google.gms.google-services")
```

---

## Notification Channel Configuration (Android 8+)

### What is a Notification Channel?
Android 8.0+ requires notifications to be organized in "channels"
- Each channel has its own settings (sound, vibration, importance)
- Users can manage each channel independently
- Firebase Messaging creates default channel automatically

### Default Channel (Auto-created by Firebase)
```dart
// Firebase creates:
// Channel ID: "high_importance_channel"
// Name: "High importance notifications"
// Importance: max
// Sound: Default system sound
// Vibration: Enabled
```

### Custom Channel (Optional)
To create custom notification channels:
```dart
// In main.dart or notification service setup
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> setupNotificationChannels() async {
  // This is handled automatically by firebase_messaging
  // No manual setup needed unless you want custom channels
}
```

---

## Testing Checklist

### Before Testing
- [ ] Android device or emulator running (Android 8.0+)
- [ ] Google Play Services installed on emulator
- [ ] Device has internet connection
- [ ] Developer options enabled on device
- [ ] USB debugging enabled (if using real device)
- [ ] `flutter run -d <device_id>` works

### Permissions Testing
- [ ] App installs without permission errors
- [ ] Permission prompt appears on first launch
- [ ] User can grant permission
- [ ] User can revoke permission in Settings
- [ ] After grant: notifications work
- [ ] After revoke: notifications don't appear
- [ ] Re-grant works after revoke

### Firebase Integration Testing
- [ ] Token is generated on app startup
- [ ] Token is successfully sent to backend
- [ ] Device ID persists across app restarts
- [ ] Switching accounts changes user but keeps device ID
- [ ] Logout clears sync state

### Push Notification Testing
- [ ] Send test notification via Firebase Console
- [ ] Notification appears on device
- [ ] Notification sound/vibration works
- [ ] Tapping notification opens app
- [ ] Notification data is accessible in app

---

## Common Issues & Solutions

| Issue | Symptom | Solution |
|-------|---------|----------|
| **Permissions never asked** | App installs, no prompt | Uninstall → Clear cache → Reinstall |
| **POST_NOTIFICATIONS permission not used** | Android < 13 | Not needed for older versions (expected) |
| **google-services.json not found** | Build fails | Verify file at `android/app/google-services.json` |
| **Notification doesn't appear** | Firebase shows sent | Check permission granted in Settings |
| **Token not registered** | "Token registration failed" | Check network, verify backend URL |
| **Token invalid error** | Backend rejects token | Verify token format, check Firebase sync |
| **App crashes on startup** | Immediate crash | Check Firebase configuration, gradle sync |
| **Device doesn't receive after permission grant** | Permission granted but no notification | Check notification channel, Firebase config |

---

## Debug Commands

### Check Installed Permissions
```bash
# List all permissions for app
adb shell pm list permissions | grep wassaly

# Check specific permission status
adb shell pm dump com.wassaly.app | grep -i "notification"
```

### View App Logs
```bash
# Real-time logs
adb logcat -s FCM | grep -i "notification\|token\|permission"

# Search for Firebase Messaging logs
adb logcat | grep "FirebaseMessaging"

# See all app logs
flutter logs
```

### Send Test Notification
```bash
# Via ADB to real device
adb shell input text "com.wassaly.app"

# View Firebase token in logs
flutter run -d <device_id>  # Launch app
# Look for log: "FCM Token: ..."
```

### Reset Permission State
```bash
# Clear app data (resets permission state)
adb shell pm clear com.wassaly.app

# Uninstall completely
adb uninstall com.wassaly.app

# Reinstall
flutter run -d <device_id>
```

---

## Production Deployment

### Pre-Release Verification
- [ ] Target SDK set to 34+
- [ ] Minimum SDK set to 21+
- [ ] POST_NOTIFICATIONS permission in manifest
- [ ] google-services.json with production Firebase project
- [ ] Tested on real Android device (not just emulator)
- [ ] Tested permission grant + deny flows
- [ ] Tested receiving push notification
- [ ] Verified notification data accessibility
- [ ] Tested device ID persistence
- [ ] Tested account switching
- [ ] Offline retry tested
- [ ] Backend ready to receive FCM tokens

### Release Build
```bash
# Build release APK
flutter build apk --release

# Build App Bundle (for Google Play)
flutter build appbundle --release

# Sign with keystore (if not auto-signed)
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 \
  -keystore ~/.android/release-key.jks \
  build/app/outputs/apk/release/app-release-unsigned.apk \
  release-key
```

---

## Post-Deployment Monitoring

### Track Key Metrics
- Permission grant rate (% users who allow notifications)
- Token registration success rate
- Notification delivery rate
- Retry attempt success rate
- Device ID consistency

### Common Production Issues
1. **High permission denial rate** → Review permission UX/timing
2. **Token registration failures** → Check backend endpoint availability
3. **Notifications not delivered** → Verify FCM project configuration
4. **Offline retry not working** → Check network error handling

---

## Reference: Android Notification Flow

```
Firebase Messaging
├─ onMessage (App Foreground)
│  └─ Notification received while app open
│     └─ Handler can customize display
│
├─ onMessageOpenedApp (User Taps Notification)
│  └─ App opens with notification data
│     └─ Can navigate to specific screen
│
└─ Background Handler (App Background)
   └─ Notification received while app closed
      └─ Displays system notification automatically
         └─ Tapping opens app
```

---

## Permission Model Comparison

### iOS Model
```
System Permission (one-time request)
├─ Alerts
├─ Badges
└─ Sounds
User grants once, app can send notifications forever
```

### Android Model (Pre-13)
```
App Default Permission
└─ POST_NOTIFICATIONS automatically granted
   (no user action required)
User can disable in app settings or system settings
```

### Android Model (13+)
```
System Runtime Permission (like app permissions)
├─ POST_NOTIFICATIONS
└─ Similar to Camera, Microphone, Location
User grant shows permission dialog
User can revoke in Settings anytime
```

---

**Last Updated**: June 1, 2026
**Status**: ✅ All Android permissions properly configured
**Next Step**: Run app on Android device and grant notification permission
