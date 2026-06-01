import 'package:wassaly/core/imports/imports.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final StorageService _storage;

  static const String _languageKey = 'app_language';
  static const String _themeKey = 'theme_mode';
  static const String _legacyThemeKey = 'is_dark_mode';

  SettingsBloc({
    required StorageService storage,
  })  : _storage = storage,
        super(const SettingsState()) {
    on<SettingsInitialized>(_onSettingsInitialized);
    on<LanguageToggled>(_onLanguageToggled);
    on<LanguageChanged>(_onLanguageChanged);
    on<ThemeToggled>(_onThemeToggled);
    on<ThemeModeChanged>(_onThemeModeChanged);
  }

  Future<void> _onSettingsInitialized(
    SettingsInitialized event,
    Emitter<SettingsState> emit,
  ) async {
    await _storage.init();
    final language = _storage.getString(_languageKey) ?? 'ar';
    final themeModeString = _storage.getString(_themeKey);
    final legacyDarkMode = _storage.getBool(_legacyThemeKey);

    final themeMode = themeModeString != null
        ? _themeModeFromString(themeModeString)
        : legacyDarkMode == null
            ? ThemeMode.system
            : (legacyDarkMode ? ThemeMode.dark : ThemeMode.light);

    if (themeModeString == null && legacyDarkMode != null) {
      await _storage.setString(_themeKey, _themeModeToString(themeMode));
    }

    emit(state.copyWith(
      language: language,
      themeMode: themeMode,
    ));
  }

  Future<void> _onLanguageToggled(
    LanguageToggled event,
    Emitter<SettingsState> emit,
  ) async {
    final newLanguage = state.language == 'ar' ? 'en' : 'ar';

    await _storage.setString(_languageKey, newLanguage);

    emit(state.copyWith(language: newLanguage));
  }

  Future<void> _onLanguageChanged(
    LanguageChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _storage.setString(_languageKey, event.language);

    emit(state.copyWith(language: event.language));
  }

  Future<void> _onThemeToggled(
    ThemeToggled event,
    Emitter<SettingsState> emit,
  ) async {
    final newThemeMode =
        state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;

    await _storage.setString(_themeKey, _themeModeToString(newThemeMode));

    emit(state.copyWith(themeMode: newThemeMode));
  }

  Future<void> _onThemeModeChanged(
    ThemeModeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _storage.setString(_themeKey, _themeModeToString(event.themeMode));

    emit(state.copyWith(themeMode: event.themeMode));
  }

  String _themeModeToString(ThemeMode themeMode) {
    return themeMode.toString().split('.').last;
  }

  ThemeMode _themeModeFromString(String themeModeString) {
    switch (themeModeString) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }
}
