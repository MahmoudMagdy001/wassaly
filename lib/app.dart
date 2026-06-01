import 'package:intl/intl.dart';
import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_state.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilWrapper(
      builder: (context) => SettingsListenerWrapper(
        builder: (context, themeMode, language) =>
            _buildMaterialApp(context, themeMode, language),
      ),
    );
  }

  Widget _buildMaterialApp(
      BuildContext context, ThemeMode themeMode, String language) {
    Intl.defaultLocale = language;
    final isIOS = PlatformInfo.isIOS;
    final primaryColor = isIOS ? '#093773' : '#1A73E8';

    if (isIOS) {
      return CupertinoApp.router(
        key: ValueKey(language),
        onGenerateTitle: (context) => context.l10n.app_title,
        debugShowCheckedModeBanner: false,
        theme: buildCupertinoTheme(primaryColorHex: primaryColor),
        routerConfig: appRouter,
        localizationsDelegates: S.localizationsDelegates,
        supportedLocales: S.supportedLocales,
        locale: Locale(language),
        builder: (context, child) {
          // Provide the app's Material ThemeData (with extensions) even when
          // running under CupertinoApp so existing Theme.of(...) calls,
          // extensions and dark theme continue to work as before.
          final materialTheme = themeMode == ThemeMode.dark
              ? buildDarkTheme(primaryColorHex: primaryColor)
              : buildLightTheme(primaryColorHex: primaryColor);

          return ScaffoldMessenger(
            child: Theme(
              data: materialTheme,
              child: BlocListener<FavoriteBloc, FavoriteState>(
                listenWhen: (previous, current) =>
                    previous.errorMessage != current.errorMessage,
                listener: (context, state) {},
                child: NotificationAppLifecycleHandler(
                  child: SessionListenerWrapper(
                    child: InternetConnectionWrapper(child: child!),
                  ),
                ),
              ),
            ),
          );
        },
      );
    }

    return MaterialApp.router(
      key: ValueKey(language),
      onGenerateTitle: (context) => context.l10n.app_title,
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(primaryColorHex: primaryColor),
      darkTheme: buildDarkTheme(primaryColorHex: primaryColor),
      themeMode: themeMode,
      routerConfig: appRouter,
      localizationsDelegates: S.localizationsDelegates,
      supportedLocales: S.supportedLocales,
      locale: Locale(language),
      builder: (context, child) {
        return BlocListener<FavoriteBloc, FavoriteState>(
          listenWhen: (previous, current) =>
              previous.errorMessage != current.errorMessage,
          listener: (context, state) {},
          child: NotificationAppLifecycleHandler(
            child: SessionListenerWrapper(
              child: InternetConnectionWrapper(child: child!),
            ),
          ),
        );
      },
    );
  }
}
