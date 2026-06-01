import 'package:firebase_core/firebase_core.dart';

import 'app.dart';
import 'core/imports/imports.dart';
import 'core/services/fcm_background_handler.dart';
import 'core/services/notification_service.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  await Future.wait([
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform),
    StorageService.instance.init(),
    HiveService.init(),
  ]);

  // Set background messaging handler
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  initDependencies();

  // Initialize notifications
  await NotificationService.instance.initialize();

  runApp(const StateWrapper(
    child: App(),
  ));
}
