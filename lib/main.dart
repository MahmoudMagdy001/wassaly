import 'package:firebase_core/firebase_core.dart';
import 'package:wassaly/core/services/fcm_background_handler.dart';
import 'package:wassaly/firebase_options.dart';

import 'app.dart';
import 'core/imports/imports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables
  await dotenv.load(fileName: '.env');

  // Initialize Core Services
  await Future.wait([
    StorageService.instance.init(),
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform),
    HiveService.init(),
  ]);

  // Firebase Background Message Handler
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  unawaited(
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  );

  initDependencies();
  runApp(const App());
}
