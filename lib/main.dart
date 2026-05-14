import 'dart:async';

import 'app.dart';
import 'core/imports/imports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // فقط الحاجات اللي لازم تكون قبل runApp
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  initDependencies();

  runApp(const LocalizationWrapper(
    child: StateWrapper(
      child: App(),
    ),
  ));
}
