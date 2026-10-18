# ==============================================================================
# ProGuard & R8 Rules for Wassaly App (com.fourthpyramid.wassaly)
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. Flutter Engine, Wrapper & Core Plugins
# ------------------------------------------------------------------------------
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-dontwarn io.flutter.embedding.**

# Keep essential attributes for reflection, debugging & stack traces
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes EnclosingMethod
-keepattributes Deprecated
-keepattributes SourceFile
-keepattributes LineNumberTable

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep custom exceptions
-keep public class * extends java.lang.Exception

# ------------------------------------------------------------------------------
# 2. Firebase & Google Play Services
# ------------------------------------------------------------------------------
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.android.gms.**

# Firebase Messaging
-keep class com.google.firebase.messaging.** { *; }
-dontwarn com.google.firebase.messaging.**

# ------------------------------------------------------------------------------
# 3. Awesome Notifications
# ------------------------------------------------------------------------------
-keep class me.carda.awesome_notifications.** { *; }
-dontwarn me.carda.awesome_notifications.**

# ------------------------------------------------------------------------------
# 4. Networking: Dio, OkHttp, Okio & Retrofit
# ------------------------------------------------------------------------------
-dontwarn com.squareup.okhttp.**
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }
-dontwarn okhttp3.**
-dontwarn okio.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**
-dontwarn org.bouncycastle.**
-dontwarn org.openjsse.**

# Retrofit / Call & Response
-keep,allowobfuscation,allowshrinking interface retrofit2.Call
-keep,allowobfuscation,allowshrinking class retrofit2.Response

# ------------------------------------------------------------------------------
# 5. Serialization (Gson, JSON & App Models)
# ------------------------------------------------------------------------------
-keepclassmembers,allowobfuscation class * {
    @com.google.gson.annotations.SerializedName <fields>;
}
-keep,allowobfuscation,allowshrinking class com.google.gson.reflect.TypeToken
-keep,allowobfuscation,allowshrinking class * extends com.google.gson.reflect.TypeToken

# Keep application domain & data classes
-keep class com.fourthpyramid.wassaly.** { *; }

# ------------------------------------------------------------------------------
# 6. Local Storage: Hive & Flutter Secure Storage & Shared Preferences
# ------------------------------------------------------------------------------
-keep class io.hivedb.** { *; }
-dontwarn io.hivedb.**
-keep class com.it_nomads.fluttersecurestorage.** { *; }
-dontwarn com.it_nomads.fluttersecurestorage.**

# ------------------------------------------------------------------------------
# 7. Device, Permissions & System Plugins
# ------------------------------------------------------------------------------
-keep class com.baseflow.permissionhandler.** { *; }
-dontwarn com.baseflow.permissionhandler.**
-keep class dev.fluttercommunity.plus.device_info.** { *; }
-dontwarn dev.fluttercommunity.plus.device_info.**

# App Links & URL Launcher
-keep class com.llfbandit.app_links.** { *; }
-dontwarn com.llfbandit.app_links.**
-keep class io.flutter.plugins.urllauncher.** { *; }
-dontwarn io.flutter.plugins.urllauncher.**

# App Version Update (Play Core In-App Updates)
-keep class com.google.android.play.core.** { *; }
-dontwarn com.google.android.play.core.**

# Media Pickers
-keep class io.flutter.plugins.imagepicker.** { *; }
-dontwarn io.flutter.plugins.imagepicker.**

# ------------------------------------------------------------------------------
# 8. Kotlin & Coroutines
# ------------------------------------------------------------------------------
-dontwarn kotlin.Unit
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}

# Static analysis and annotations warnings suppression
-dontwarn com.google.j2objc.annotations.**
-dontwarn javax.annotation.**
-dontwarn org.checkerframework.**
-dontwarn com.google.errorprone.annotations.**

# ------------------------------------------------------------------------------
# 9. Release Optimization: Strip Debug Logs
# ------------------------------------------------------------------------------
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
    public static int e(...);
}
-assumenosideeffects class java.io.PrintStream {
    public void println(...);
    public void print(...);
}
