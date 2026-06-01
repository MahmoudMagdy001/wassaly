#!/bin/bash
cat << 'EOF'

╔══════════════════════════════════════════════════════════════════════════════╗
║                  WASSALY NOTIFICATIONS - TESTING WORKFLOW                    ║
║                                                                              ║
║  Start → Config Check → Build → Run → Test → Verify → Done ✓                ║
╚══════════════════════════════════════════════════════════════════════════════╝

═══════════════════════════════════════════════════════════════════════════════
STEP 1: VERIFY CONFIGURATION (5 min)
═══════════════════════════════════════════════════════════════════════════════

  Command: bash debug_notifications.sh

  Expected Output:
  ✓ firebase.json exists
  ✓ GoogleService-Info.plist exists (iOS)
  ✓ google-services.json exists (Android)
  ✓ UIBackgroundModes includes 'remote-notification' (iOS)
  ✓ POST_NOTIFICATIONS permission configured (Android)
  ✓ All notification service files exist
  ✓ registerFcmToken method implemented
  ✓ Devices connected and ready


═══════════════════════════════════════════════════════════════════════════════
STEP 2: BUILD & RUN (10 min)
═══════════════════════════════════════════════════════════════════════════════

  Commands:
    flutter clean
    flutter pub get
    flutter run -d <device_id>

  What to Watch For:
    → Build completes without errors
    → App launches successfully
    → No permission request yet (app needs to init first)


═══════════════════════════════════════════════════════════════════════════════
STEP 3: GRANT NOTIFICATION PERMISSION (1 min)
═══════════════════════════════════════════════════════════════════════════════

  iOS:
    → Dialog: "Wassaly Would Like to Send You Notifications"
    → Actions: [Allow] [Don't Allow]
    → Tap: [Allow]

  Android 13+:
    → Dialog: "Allow Wassaly to send you notifications?"
    → Actions: [Allow] [Don't allow]
    → Tap: [Allow]

  Android < 13:
    → No dialog (notifications auto-enabled)

  ✓ After granting, check console logs:
    [INFO] FCM permission granted
    [INFO] FCM Token: abc123xyz...


═══════════════════════════════════════════════════════════════════════════════
STEP 4: VERIFY TOKEN REGISTRATION (2 min)
═══════════════════════════════════════════════════════════════════════════════

  In Console Logs, Look For:

    [FCM] Device ID: 1234567890-987654321
            ↓
    [FCM] FCM Token: d1KN3p9X...truncated...
            ↓
    [FCM] Registering token with backend
            ↓
    [FCM] POST /api/fcm-token-user
    [FCM] Payload: {
    [FCM]   "token": "d1KN3p9X...",
    [FCM]   "device_id": "1234567890-987654321",
    [FCM]   "user_id": "current_user_123"
    [FCM] }
            ↓
    [FCM] Token registration successful ✓

  ❌ If you see: "Token registration failed"
     → Check: Network connectivity
     → Check: Backend endpoint /api/fcm-token-user is reachable
     → Check: User is logged in
     → Try: Login again to trigger registration


═══════════════════════════════════════════════════════════════════════════════
STEP 5: TEST SCENARIO - SEND TEST NOTIFICATION (5 min)
═══════════════════════════════════════════════════════════════════════════════

  Option A: Firebase Console (Easiest)
    1. Go to: https://console.firebase.google.com
    2. Project: Your Project
    3. Cloud Messaging → "Send your first message"
    4. Title: "Hello World"
    5. Body: "Test notification"
    6. Click: "Send test message"
    7. FCM Token: Paste token from console logs
    8. Click: "Send"

  Expected Result:
    → Notification appears on device
    → Console shows: "Notification received"
    → Device vibrates/sounds (if enabled)
    → Notification stays in notification center

  Option B: Via Backend API
    curl -X POST https://your-backend.com/api/send-notification \
      -H "Authorization: Bearer <token>" \
      -H "Content-Type: application/json" \
      -d '{
        "user_id": "current_user_123",
        "title": "Test",
        "body": "Hello from API"
      }'


═══════════════════════════════════════════════════════════════════════════════
STEP 6: TEST ALL SCENARIOS (30 min)
═══════════════════════════════════════════════════════════════════════════════

  Scenario A: Fresh Install ✓
    ├─ App installed, first launch
    ├─ Permission granted
    ├─ Token registered
    └─ Device ID created and persists

  Scenario B: App Resume ✓
    ├─ App running, send to background
    ├─ Wait 10 seconds
    ├─ Tap app icon (resume)
    ├─ Check logs: "verifyAndSyncToken"
    └─ Token verified (no action if same)

  Scenario C: Offline Retry ✓
    ├─ Enable Airplane Mode
    ├─ Logout → Login (forces re-registration)
    ├─ Check logs: "Scheduling retry 1/5..."
    ├─ Disable Airplane Mode
    └─ Check logs: "Token registration successful"

  Scenario D: Account Switch ✓
    ├─ Login with Account A
    ├─ Note device_id from logs
    ├─ Logout
    ├─ Login with Account B
    ├─ Device_id should be SAME
    └─ Backend shows device linked to Account B

  Scenario E: Receive Notification ✓
    ├─ App running, logged in
    ├─ Send test notification (Firebase)
    ├─ Notification appears on device
    ├─ Tap notification → app opens
    └─ Notification data accessible in app


═══════════════════════════════════════════════════════════════════════════════
STEP 7: VERIFY SUCCESS CRITERIA
═══════════════════════════════════════════════════════════════════════════════

  ✓ First Launch
    └─ Token registers automatically

  ✓ Token Changes
    └─ Auto-detected and re-registered

  ✓ App Resume
    └─ Token verified on foreground

  ✓ Offline Mode
    └─ Retries when network restored

  ✓ Multi-Device
    └─ Same device_id across accounts

  ✓ Notifications
    └─ Received and displayed correctly

  ✓ Logout
    └─ Device unlinked, device_id persists

  ✓ Permissions
    └─ Grant/revoke works correctly


═══════════════════════════════════════════════════════════════════════════════
DEBUGGING COMMANDS (When Something Fails)
═══════════════════════════════════════════════════════════════════════════════

  View Logs by Category:
    flutter logs | grep FCM           # FCM specific logs
    flutter logs | grep -i token      # Token related logs
    flutter logs | grep -i permission # Permission related logs
    flutter logs | grep -i error      # Error logs

  Check Device ID in App:
    # In Flutter debug console:
    import 'package:wassaly/core/services/device_registration_service.dart';
    var deviceId = await DeviceRegistrationService.instance.getDeviceId();
    print('Device ID: $deviceId');

  Check FCM Token in App:
    # In Flutter debug console:
    import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';
    import 'package:wassaly/core/imports/imports.dart';
    var token = await sl<NotificationRepository>().getAndCacheFcmToken();
    print('FCM Token: $token');

  Reset and Try Again:
    adb uninstall com.wassaly.app              # Remove app
    flutter run -d <device_id>                 # Fresh install
    # Grant permission when prompted


═══════════════════════════════════════════════════════════════════════════════
UNIT TESTS (For Developers)
═══════════════════════════════════════════════════════════════════════════════

  Run All Notification Tests:
    flutter test test/features/notifications/services/notification_services_test.dart

  Expected Output:
    ✓ Device ID is generated on first call
    ✓ shouldSyncToken returns true when token changed
    ✓ shouldSyncToken returns false when token unchanged
    ✓ markTokenSynced persists token and timestamp
    ✓ ... (40+ tests total)

    All tests passed! ✓


═══════════════════════════════════════════════════════════════════════════════
COMMON ISSUES & QUICK FIXES
═══════════════════════════════════════════════════════════════════════════════

  Issue: Token registration failed
    Fix 1: Check network connectivity
    Fix 2: Verify backend endpoint is reachable
    Fix 3: Check user is logged in
    Fix 4: Try logout and login again

  Issue: Permission dialog doesn't appear
    Fix 1: Uninstall and reinstall app
    Fix 2: For iOS, run: flutter run --release
    Fix 3: Check Info.plist has UIBackgroundModes

  Issue: Notification never arrives
    Fix 1: Verify permission is granted in Settings
    Fix 2: Verify FCM token is non-empty
    Fix 3: Verify backend received token registration
    Fix 4: Check Firebase project configuration

  Issue: Device ID keeps changing
    Fix 1: Verify StorageService is initialized
    Fix 2: Check app doesn't clear storage on startup
    Fix 3: Verify device has sufficient storage

  Issue: Same device linked to multiple users
    Fix 1: Verify logout calls unlinkDevice()
    Fix 2: Check backend upsert logic (by device_id)


═══════════════════════════════════════════════════════════════════════════════
DOCUMENTATION REFERENCE
═══════════════════════════════════════════════════════════════════════════════

  Quick Reference:
    → NOTIFICATION_QUICK_REFERENCE.md          (5-30 min read)

  Comprehensive Guide:
    → NOTIFICATION_TESTING_GUIDE.md            (2+ hour read)

  iOS Setup:
    → IOS_PERMISSIONS_VERIFICATION.md          (Step-by-step guide)

  Android Setup:
    → ANDROID_PERMISSIONS_VERIFICATION.md      (Step-by-step guide)

  Unit Tests:
    → test/features/notifications/services/notification_services_test.dart

  This Visual Guide:
    → NOTIFICATION_TESTING_WORKFLOW.md         (You are here!)


═══════════════════════════════════════════════════════════════════════════════
CHECKLIST: BEFORE GOING TO PRODUCTION
═══════════════════════════════════════════════════════════════════════════════

  Pre-Testing:
    ☐ Run bash debug_notifications.sh
    ☐ All checks passed
    ☐ Flutter clean && pub get executed

  Feature Testing:
    ☐ Token registers on first launch
    ☐ Token verifies on app resume
    ☐ Offline retry works
    ☐ Account switch works (same device_id)
    ☐ Test notification received

  Platform Testing:
    iOS:
      ☐ Tested on real iOS device
      ☐ Permission dialog appears
      ☐ Notification received
      ☐ Xcode: Push Notifications capability added
      ☐ Firebase: APNs certificate uploaded

    Android:
      ☐ Tested on Android device/emulator
      ☐ Runtime permission granted
      ☐ Notification received
      ☐ Permissions in manifest verified

  Production:
    ☐ iOS entitlements: aps-environment = "production"
    ☐ Production APNs certificate uploaded
    ☐ Android using production google-services.json
    ☐ Backend ready to receive registrations
    ☐ Monitoring/logging configured


═══════════════════════════════════════════════════════════════════════════════
SUCCESS! 🎉
═══════════════════════════════════════════════════════════════════════════════

  When you see this:
    ✓ Permission granted
    ✓ FCM Token: [non-empty token]
    ✓ Token registration successful
    ✓ Notification received
    ✓ Device ID persists

  → You're ready to test in production!


═══════════════════════════════════════════════════════════════════════════════
Need Help?
═══════════════════════════════════════════════════════════════════════════════

  1. Check logs: flutter logs | grep FCM
  2. Read guide: NOTIFICATION_TESTING_GUIDE.md
  3. Run tests: flutter test test/...
  4. Verify config: bash debug_notifications.sh
  5. Check permissions: IOS_PERMISSIONS_VERIFICATION.md or ANDROID_PERMISSIONS_VERIFICATION.md


═══════════════════════════════════════════════════════════════════════════════
Last Updated: June 1, 2026
Status: Production Ready ✓
═══════════════════════════════════════════════════════════════════════════════

EOF
