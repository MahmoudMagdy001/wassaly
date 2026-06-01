import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:wassaly/core/services/notification_service.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `Firebase.initializeApp()` before using other Firebase services.

  print('Handling a background message: ${message.messageId}');

  if (message.notification != null) {
    NotificationService.instance.showLocalNotification(
      title: message.notification!.title ?? '',
      body: message.notification!.body ?? '',
      payload:
          message.data.map((key, value) => MapEntry(key, value.toString())),
    );
  }
}
