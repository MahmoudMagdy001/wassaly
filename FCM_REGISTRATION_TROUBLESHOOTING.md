# FCM Token & Device ID Not Sending to Backend - Troubleshooting Guide

**Status**: Investigating why token registration isn't working
**Date**: June 1, 2026

---

## 🔍 Most Common Causes (in order of likelihood)

### 1️⃣ **User Not Logged In** ⚠️ (80% likely)
**Symptom**: You opened app, token doesn't register
**Reason**: FCM token registration only triggers on login (`SessionAuthenticated` event)

**Test This**:
```
1. Open app
2. Check if you're logged in (see profile screen or home)
3. If on login page → NOT logged in → needs manual login
4. If on home page → Already logged in → should trigger registration
```

**Fix**:
- Login first, then token should register automatically
- Check session_listener_wrapper.dart - it only calls registerUserNotifications on login

---

### 2️⃣ **Auth Token Not Valid**
**Symptom**: Logged in, but backend returns 401/403
**Reason**: Backend can't authenticate the device registration request

**Test This**:
```
1. Check app logs for: "Token registration failed"
2. Look for HTTP error code
3. If 401/403 → auth token expired or invalid
```

**Fix**:
- Logout and login again to refresh auth token
- Check backend accepting device registration endpoint

---

### 3️⃣ **Backend Endpoint Not Reachable**
**Symptom**: Logged in, but registration seems to hang/fail
**Reason**: `/api/fcm-token-user` endpoint not responding

**Test This**:
```
1. Check console logs for errors
2. Try manual curl to backend:
   curl https://your-backend.com/api/fcm-token-user
3. See if you get response
```

**Fix**:
- Verify backend URL in DioService
- Check backend is running and accepts POST requests
- Check network connectivity

---

### 4️⃣ **Firebase Not Initialized**
**Symptom**: No FCM token generated
**Reason**: Firebase or FCM not properly initialized

**Test This**:
```
1. Check logs for Firebase initialization
2. Look for: "Firebase Initialized" or "Firebase Error"
```

**Fix**:
- Ensure firebase_options.dart is generated correctly
- Run: `flutterfire configure`

---

## 🧪 Step-by-Step Debugging

### Step 1: Check If User is Logged In
```bash
# Look in console logs for:
[auth] User logged in: john@example.com

# OR check app UI:
- If you see "Login" button → NOT logged in
- If you see profile/home → Already logged in
```

### Step 2: If Logged In, Check Token Generation
```
1. Open app
2. Open Developer Console (Xcode/Android Studio)
3. Search logs for: "FCM Token"
4. Expected: [FCM] FCM Token: abc123xyz...

If no token found:
- Firebase not initialized
- Permission denied
- Device issue
```

### Step 3: Check Device ID Generation
```
Search logs for: "Device ID"
Expected: [FCM] Device ID: 1234567890-987654321

If no device ID:
- StorageService not initialized
- Storage permission denied
```

### Step 4: Check Registration Attempt
```
Search logs for: "registerToken" or "Token registration"
Expected patterns:
- [FCM] Registering token with backend
- [FCM] POST /api/fcm-token-user
- [FCM] Token registration successful

OR error:
- [FCM] Token registration failed: error message
```

### Step 5: Check Backend Response
```
If you see "Token registration failed":
- Look for HTTP error code (401, 403, 500, etc.)
- Check backend logs for the request
- Verify endpoint is receiving the payload
```

---

## 📋 Complete Checklist

### Before Testing
- [ ] App installed
- [ ] You have valid login credentials
- [ ] Network connection active (WiFi or cellular)
- [ ] Backend server running and reachable

### Testing Flow
- [ ] Open app
- [ ] See login screen
  - [ ] If yes → Go to "Not Logged In" section below
  - [ ] If no (home screen) → Go to "Logged In" section below

---

## ❌ Scenario A: Not Logged In (See Login Screen)

**What Should Happen**:
1. App launches
2. You see login screen
3. Notification service NOT triggered (user not authenticated yet)

**Expected Logs**:
- No "[FCM]" logs yet

**Why No Token Registration**:
- NotificationLifecycleService only triggers on `SessionAuthenticated` event
- User needs to login first

**Fix**:
1. Click "Login"
2. Enter credentials
3. After successful login → notification registration triggers
4. Check logs for "[FCM] Token registration successful"

---

## ✅ Scenario B: Logged In (See Home Screen)

**What Should Happen**:
1. App detects you're logged in
2. Automatically triggers `SessionAuthenticated`
3. Calls `NotificationLifecycleService.registerUserNotifications(userId)`
4. Device ID created
5. FCM token retrieved
6. Token sent to backend: `POST /api/fcm-token-user`

**Expected Flow in Logs**:
```
SessionBloc → SessionAuthenticated
↓
SessionListenerWrapper → Listener triggered
↓
NotificationLifecycleService.registerUserNotifications(userId)
↓
FcmTokenRegistrationService.registerToken()
↓
Get Device ID: ✓
Get FCM Token: ✓
POST to backend: /api/fcm-token-user
↓
[FCM] Token registration successful ✓
```

**Expected Specific Logs**:
```
[Session] User authenticated: user_123
[FCM] Device ID: 1234567890-987654321
[FCM] FCM Token: d1KN3p9X...
[FCM] Registering token with backend
[HTTP] POST /api/fcm-token-user
[HTTP] Status: 200
[FCM] Token registration successful
```

### If You Don't See These Logs:

**Issue 1: Device ID not showing**
```
Cause: StorageService not initialized
Fix: Check that StorageService.instance.init() is called
```

**Issue 2: FCM Token not showing**
```
Cause:
- Firebase not initialized
- Permission denied
- Device issue
Fix:
- Verify firebase_options.dart
- Check notification permission granted
```

**Issue 3: Registration failed with 401/403**
```
Cause: Auth token invalid
Fix:
- Logout → Login to refresh auth token
- Check backend auth middleware
```

**Issue 4: Registration failed with 500**
```
Cause: Backend error
Fix:
- Check backend logs
- Verify endpoint /api/fcm-token-user exists
- Check payload format matches backend expectations
```

**Issue 5: No logs at all**
```
Cause:
- SessionListenerWrapper not triggered
- SessionBloc not emitting events
- Notification service not initialized
Fix:
- Verify SessionBloc properly initialized
- Check SessionListenerWrapper is in widget tree
- Verify state change happens
```

---

## 🔧 Debugging Commands

### View All FCM-Related Logs
```bash
flutter logs | grep -i fcm
```

### View Token Registration Details
```bash
flutter logs | grep -i "token\|device"
```

### View Session/Auth Logs
```bash
flutter logs | grep -i "session\|auth"
```

### View Backend/Network Logs
```bash
flutter logs | grep -i "http\|dio\|post"
```

### View All App Logs with Timestamps
```bash
flutter logs --verbose
```

---

## ❓ Common Questions

**Q: I'm logged in but still no token registration?**
A: Check logs for errors. Most common: auth token invalid, backend unreachable, or endpoint wrong.

**Q: How do I know if permission was granted?**
A: iOS shows dialog, Android 13+ shows dialog. Check Settings if unsure.

**Q: Is it normal to not see FCM token in logs?**
A: No, if logged in, you should always see it. If missing → Firebase issue.

**Q: Can I manually trigger registration?**
A: Not easily, but logout/login will trigger it.

**Q: Does it work on simulator?**
A: iOS simulator won't receive notifications but should register. Android emulator needs Google Play Services.

---

## 🚨 What to Report If Still Broken

Collect these logs and share:

```
1. Permission grant/deny:
   flutter logs | grep -i "permission"

2. Device ID generation:
   flutter logs | grep -i "device"

3. FCM Token retrieval:
   flutter logs | grep -i "token"

4. Registration attempt:
   flutter logs | grep -i "register\|http"

5. Full app start logs:
   flutter logs | tail -100
```

---

## 📊 Verification Flow

```
START
  ↓
Logged in?
  ├─ NO → Login first → Go to home
  └─ YES → Continue
  ↓
Check logs for "[FCM] Device ID"
  ├─ Not found → Check StorageService
  └─ Found → Continue
  ↓
Check logs for "[FCM] FCM Token"
  ├─ Not found → Check Firebase
  └─ Found → Continue
  ↓
Check logs for "Token registration"
  ├─ Success → ✓ DONE
  ├─ Failed 401/403 → Check auth token
  ├─ Failed 500 → Check backend
  └─ Not found → Check endpoint URL
```

---

**Run these commands first:**

```bash
# 1. Check if logged in
flutter logs | grep -i "authenticated"

# 2. Check for FCM token
flutter logs | grep -i "fcm"

# 3. Check for registration
flutter logs | grep -i "register"

# 4. If nothing shows, app might not be running properly
flutter run --verbose
```

Let me know what logs you see and I can help diagnose further! 🚀
