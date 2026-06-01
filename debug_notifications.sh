#!/bin/bash

# Notification Testing & Debugging Script
# Usage: bash debug_notifications.sh

set -e

echo "=========================================="
echo "Wassaly Notification Debugging Tool"
echo "=========================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

check_mark() {
    echo -e "${GREEN}✓${NC} $1"
}

cross_mark() {
    echo -e "${RED}✗${NC} $1"
}

warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

# Check 1: Firebase Configuration
echo "1. Checking Firebase Configuration..."
if [ -f "firebase.json" ]; then
    check_mark "firebase.json exists"
    PROJECT_ID=$(grep -o '"project_id": "[^"]*' firebase.json | cut -d'"' -f4)
    echo "   Project ID: $PROJECT_ID"
else
    cross_mark "firebase.json not found"
fi

echo ""

# Check 2: iOS Configuration
echo "2. Checking iOS Configuration..."
if [ -f "ios/Runner/GoogleService-Info.plist" ]; then
    check_mark "GoogleService-Info.plist exists"
else
    cross_mark "GoogleService-Info.plist not found"
fi

if grep -q "remote-notification" ios/Runner/Info.plist; then
    check_mark "UIBackgroundModes includes 'remote-notification'"
else
    cross_mark "UIBackgroundModes missing 'remote-notification'"
fi

if grep -q "NSCameraUsageDescription" ios/Runner/Info.plist; then
    check_mark "Camera permission configured"
else
    warning "Camera permission not found"
fi

echo ""

# Check 3: Android Configuration
echo "3. Checking Android Configuration..."
if [ -f "android/app/google-services.json" ]; then
    check_mark "google-services.json exists"
else
    cross_mark "google-services.json not found"
fi

if grep -q "POST_NOTIFICATIONS" android/app/src/main/AndroidManifest.xml; then
    check_mark "POST_NOTIFICATIONS permission configured"
else
    cross_mark "POST_NOTIFICATIONS permission missing"
fi

if grep -q "remote-notification" android/app/build.gradle.kts; then
    check_mark "FCM dependency configured"
else
    warning "FCM dependency not explicitly found in build.gradle.kts"
fi

echo ""

# Check 4: Dart Packages
echo "4. Checking Dart Dependencies..."
if grep -q "firebase_messaging:" pubspec.yaml; then
    check_mark "firebase_messaging package included"
    VERSION=$(grep "firebase_messaging:" pubspec.yaml)
    echo "   $VERSION"
else
    cross_mark "firebase_messaging package not found"
fi

if grep -q "flutter_bloc:" pubspec.yaml; then
    check_mark "flutter_bloc package included"
else
    cross_mark "flutter_bloc package not found"
fi

echo ""

# Check 5: Notification Service Files
echo "5. Checking Notification Service Implementation..."
SERVICES=(
    "lib/core/services/device_registration_service.dart"
    "lib/core/services/fcm_token_registration_service.dart"
    "lib/core/services/notification_lifecycle_service.dart"
    "lib/core/shared/wrappers/notification_app_lifecycle_handler.dart"
)

for service in "${SERVICES[@]}"; do
    if [ -f "$service" ]; then
        check_mark "$(basename $service) exists"
    else
        cross_mark "$(basename $service) missing"
    fi
done

echo ""

# Check 6: Repository Implementation
echo "6. Checking Repository Implementation..."
if [ -f "lib/features/notifications/data/repo/notification_repository_impl.dart" ]; then
    check_mark "NotificationRepositoryImpl exists"

    if grep -q "registerFcmToken" lib/features/notifications/data/repo/notification_repository_impl.dart; then
        check_mark "registerFcmToken method implemented"
    else
        cross_mark "registerFcmToken method not found"
    fi
else
    cross_mark "notification_repository_impl.dart missing"
fi

echo ""

# Check 7: Run Tests
echo "7. Running Code Checks..."
if command -v flutter &> /dev/null; then
    echo "   Running 'flutter analyze'..."
    flutter analyze 2>/dev/null || warning "Some analysis issues found (review manually)"
else
    warning "Flutter CLI not found"
fi

echo ""

# Check 8: Device Connected
echo "8. Checking Connected Devices..."
if command -v flutter &> /dev/null; then
    DEVICES=$(flutter devices 2>/dev/null | grep -E "^[^ ]" | wc -l)
    if [ "$DEVICES" -gt 0 ]; then
        check_mark "$DEVICES device(s) connected"
        flutter devices 2>/dev/null | head -5
    else
        warning "No devices detected - connect a device or start an emulator"
    fi
else
    warning "Flutter CLI not found"
fi

echo ""
echo "=========================================="
echo "Setup Summary"
echo "=========================================="
echo ""
echo "Next Steps:"
echo "1. Run: flutter clean && flutter pub get"
echo "2. Run: flutter run -d <device_id>"
echo "3. Check console logs for FCM token registration"
echo "4. Test with: firebase-send-notification.sh (when available)"
echo ""
echo "For detailed testing guide, see: NOTIFICATION_TESTING_GUIDE.md"
echo ""
