import 'package:firebase_core/firebase_core.dart';
import 'package:wassaly/app.dart';
import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/services/fcm_background_handler.dart';
import 'package:wassaly/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Global uncaught Flutter error handler
  FlutterError.onError = (details) {
    AppLogger.error(
      '[FlutterError] Uncaught error: ${details.exceptionAsString()}',
      details.exception,
      details.stack,
    );
  };

  // Global platform async error handler
  PlatformDispatcher.instance.onError = (error, stack) {
    AppLogger.error(
      '[PlatformDispatcher] Uncaught async error: $error',
      error,
      stack,
    );
    return true;
  };

  // Safely load environment variables if available
  try {
    await dotenv.load();
  } on Object {
    AppLogger.info('[App] .env file not found or loaded via dart-define.');
  }

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
