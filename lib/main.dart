import 'dart:async';

import 'app.dart';
import 'core/imports/core_imports.dart';
import 'core/imports/packages_imports.dart';
import 'core/injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await initDependencies();

  runApp(
    const LocalizationWrapper(
      child: StateWrapper(
        child: App(),
      ),
    ),
  );
}
