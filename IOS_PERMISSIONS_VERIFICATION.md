# iOS Permissions & Push Notifications Setup - Verification Checklist

## Current Status ✅

### Info.plist Configuration
- ✅ **UIBackgroundModes** includes `remote-notification`
- ✅ **UIBackgroundModes** includes `fetch`
- ✅ **Camera permission** configured with user description
- ✅ **Photo library permission** configured with user description

### Runner.entitlements Configuration
- ✅ **aps-environment** set to `development`
- ✅ **Associated domains** configured for app links (wasly.bynona.store)

### Current Values
```xml
<!-- Info.plist -->
<key>UIBackgroundModes</key>
<array>
    <string>fetch</string>
    <string>remote-notification</string>
</array>
```

```xml
<!-- Runner.entitlements -->
<key>aps-environment</key>
<string>development</string>
```

---

## Step-by-Step Xcode Setup

### Step 1: Open Project in Xcode
```bash
cd ios
open Runner.xcworkspace  # Use .xcworkspace NOT .xcodeproj
```

### Step 2: Check Project Signing
1. Select **Runner** project in Xcode
2. Select **Runner** target
3. Go to **Signing & Capabilities** tab

### Step 3: Add Push Notifications Capability
1. Click **+ Capability** button
2. Search for `Push Notifications`
3. Click to add it
4. Status should show: **Push Notifications** (green checkmark)

**What you should see:**
```
✓ Push Notifications
  Development
  Production
```

### Step 4: Add Background Modes Capability
1. Click **+ Capability** button
2. Search for `Background Modes`
3. Click to add it
4. Check these boxes:
   - ✅ Remote notifications
   - ✅ Background fetch

**What you should see:**
```
✓ Background Modes
  ☑ Remote notifications
  ☑ Background fetch
```

### Step 5: Verify Bundle ID
1. Still in Signing & Capabilities
2. Look for **Bundle Identifier** field
3. Should be: `com.wassaly.app` (or your configured ID)
4. This must match your Apple Developer provisioning profile

### Step 6: Check Team ID
1. Still in Signing & Capabilities
2. Look for **Team** dropdown
3. Select your Apple Developer Team
4. Provisioning profile should auto-select

---

## Apple Developer Portal Setup

### Step 1: Create App ID
1. Go to https://developer.apple.com
2. **Certificates, Identifiers & Profiles**
3. **Identifiers** → Create new identifier
4. Bundle ID: `com.wassaly.app`
5. Enable: **Push Notifications** capability

### Step 2: Create APNs Certificates

#### For Development (Testing)
1. **Certificates** → Create new certificate
2. Select **Apple Push Notification service (APNs) SSL (Sandbox)**
3. Upload Certificate Signing Request (CSR)
4. Download `.cer` file
5. Double-click to install in Keychain

#### For Production (Release)
1. **Certificates** → Create new certificate
2. Select **Apple Push Notification service (APNs) SSL (Production)**
3. Upload Certificate Signing Request (CSR)
4. Download `.cer` file
5. Double-click to install in Keychain

### Step 3: Create Provisioning Profile
1. **Provisioning Profiles** → Create new
2. Select **iOS App Development** (for testing)
3. Select your App ID (com.wassaly.app)
4. Select your Certificate
5. Select your devices
6. Download and double-click to install

---

## Firebase Console Setup

### Step 1: Upload APNs Certificates
1. Go to https://console.firebase.google.com
2. Select your project
3. **Project Settings** → **Cloud Messaging**
4. Scroll to **Apple Configuration**

### Step 2: Upload Development Certificate
1. Click **Upload** under APNs Certificate
2. Select `.p8` file (or `.cer` converted to `.p8`)
3. Enter **Key ID** (from Apple Developer)
4. Enter **Team ID** (from Apple Developer)
5. Click **Upload**

Status should show: ✅ **Configured**

### Step 3: Verify Configuration
1. Look for **APNs Certificate** section
2. Should show: ✅ **Development configured** or **Production configured**
3. If X: ❌ **Not configured** → repeat upload steps

---

## Testing APNs Connectivity

### Verify Certificate Installation (Mac)
```bash
# List installed certificates
security find-certificate -c "Apple Push Services" ~/Library/Keychains/login.keychain-db

# Should output certificate details
# Look for: "com.apple.push.notification.service"
```

### Test APNs Server Connectivity
```bash
# Development server
openssl s_client -connect api.sandbox.push.apple.com:443 -cert certificate.pem

# Production server
openssl s_client -connect api.push.apple.com:443 -cert certificate.pem

# Expected: "Connected" and SSL handshake successful
```

---

## Deployment Environment Changes

### Switch from Development to Production

**In Xcode:**
1. In **Runner.entitlements**, change:
   ```xml
   <!-- Change from: -->
   <string>development</string>

   <!-- Change to: -->
   <string>production</string>
   ```

2. Go to **Signing & Capabilities**
3. In Push Notifications capability
4. Select **Production** instead of Development

**In Firebase Console:**
1. Upload production APNs certificate
2. Verify status shows ✅ **Production configured**

**In Apple Developer Portal:**
1. Update provisioning profile to include production certificate
2. Download and install new profile

---

## Debugging Checklist

### If Push Notifications Not Working

#### Check 1: Verify Certificate Chain
```bash
# Export private key from Keychain
security export-keychain-item -p p@ssw0rd ~/Library/Keychains/login.keychain-db

# Verify certificate matches APNs requirement
openssl x509 -in certificate.cer -text -noout | grep -i "push\|notification"
```

#### Check 2: Verify App Entitlements
```bash
# Unzip app and check entitlements
unzip -p app.ipa Payload/Runner.app/Runner.entitlements | plutil -p -

# Should show:
# "aps-environment" => "development" (or "production")
```

#### Check 3: Verify Bundle ID
```bash
# Check bundle ID in app
unzip -p app.ipa Payload/Runner.app/Info.plist | grep -A 1 CFBundleIdentifier

# Should match provisioning profile and Apple Developer App ID
```

#### Check 4: Check Provisioning Profile
```bash
# List installed provisioning profiles
ls ~/Library/MobileDevice/Provisioning\ Profiles/

# Verify your profile includes push capability
```

---

## Common Issues & Solutions

| Issue | Cause | Solution |
|-------|-------|----------|
| **No Permission Prompt** | App already denied permission | Uninstall, delete from Xcode, reinstall |
| **Permission Shows as Denied** | Previous denial cached | Settings → Wassaly → Allow Notifications |
| **Notifications Never Arrive** | APNs cert not uploaded | Upload cert to Firebase Console |
| **Certificate Expired** | APNs cert outdated | Renew cert in Apple Developer Portal |
| **Wrong Bundle ID** | Xcode signing mismatch | Verify Bundle ID matches Developer Portal |
| **Provisioning Profile Error** | Profile doesn't include push | Recreate profile with push capability |
| **Token Fails to Register** | Permission denied | Check Settings → Wassaly → Notifications |
| **Backend Receives Token but No Delivery** | Firebase not configured | Verify APNs cert in Firebase Console |

---

## Pre-Launch Verification (Production)

- [ ] Xcode: Runner has Push Notifications capability
- [ ] Xcode: Runner has Background Modes (Remote notifications + fetch)
- [ ] Xcode: Signing certificate is production, not development
- [ ] Runner.entitlements: aps-environment is "production"
- [ ] Apple Developer: Production APNs certificate created
- [ ] Firebase Console: Production APNs certificate uploaded
- [ ] Firebase Console: Status shows ✅ Configured
- [ ] Test on real device (simulator won't work)
- [ ] Test sending push notification from Firebase Console
- [ ] Test notification permissions (grant and deny)
- [ ] Verify app opens when notification tapped

---

## Reference Files Location

| File | Path | Purpose |
|------|------|---------|
| Info.plist | `ios/Runner/Info.plist` | App configuration (permissions, background modes) |
| Entitlements | `ios/Runner/Runner.entitlements` | APNs environment (dev/production) |
| Project Settings | `ios/Runner.xcodeproj` | Signing, capabilities, certificates |
| GoogleService-Info.plist | `ios/Runner/GoogleService-Info.plist` | Firebase configuration |

---

## Quick Test: Send Notification

### Via Firebase Console
1. Firebase Console → Cloud Messaging
2. Send your first message
3. Title: "Hello World"
4. Body: "Test notification"
5. Send to device with token from console logs
6. Should appear on device

### Via Flutter Debug Console
```dart
// In debug console while app running
import 'package:firebase_messaging/firebase_messaging.dart';

final messaging = FirebaseMessaging.instance;
final token = await messaging.getToken();
print('FCM Token: $token');  // Copy this token
```

Then use token in Firebase Console to send test message.

---

## Monitoring & Troubleshooting

### View FCM Token in App Logs
```
Filter logs for: "FCM Token:"
Should show: "FCM Token: d1KN3p9X..."
```

### View Permission Status
```
Filter logs for: "Permission:"
Should show: "Permission: GRANTED" or "DENIED"
```

### View Registration Status
```
Filter logs for: "registration"
Should show: "Token registration successful"
```

### View APNs Status (Xcode Console)
```
Filter logs for: "APNs"
Should show: "APNs registration successful"
```

---

## iOS Permissions Architecture

```
iOS System
├─ APNs (Apple Push Notification service)
│  ├─ Certificate-based authentication
│  ├─ Requires APNs certificate + key
│  └─ Firebase proxies notifications to APNs
│
├─ User Permission (iOS Settings)
│  ├─ Alerts/Badges/Sounds
│  ├─ Managed by app + iOS Settings
│  └─ App shows system permission dialog
│
└─ Device Token
   ├─ Generated by iOS system
   ├─ Passed to app via Firebase Messaging
   └─ Sent to backend for targeting
```

---

**Last Updated**: June 1, 2026
**Status**: ✅ All iOS permissions properly configured
**Next Step**: Run app on real device and grant notification permission
