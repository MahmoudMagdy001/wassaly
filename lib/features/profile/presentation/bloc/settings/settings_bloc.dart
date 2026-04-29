import 'package:wassaly/core/imports/imports.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final StorageService _storage;

  static const String _languageKey = 'app_language';
  static const String _themeKey = 'is_dark_mode';

  SettingsBloc({
    required StorageService storage,
  })  : _storage = storage,
        super(const SettingsState()) {
    on<SettingsInitialized>(_onSettingsInitialized);
    on<LanguageToggled>(_onLanguageToggled);
    on<ThemeToggled>(_onThemeToggled);
  }

  Future<void> _onSettingsInitialized(
    SettingsInitialized event,
    Emitter<SettingsState> emit,
  ) async {
    final language = _storage.getString(_languageKey) ?? 'ar';
    final isDarkMode = _storage.getBool(_themeKey) ?? false;

    emit(state.copyWith(
      language: language,
      isDarkMode: isDarkMode,
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

  Future<void> _onThemeToggled(
    ThemeToggled event,
    Emitter<SettingsState> emit,
  ) async {
    final newIsDarkMode = !state.isDarkMode;

    await _storage.setBool(_themeKey, newIsDarkMode);

    emit(state.copyWith(isDarkMode: newIsDarkMode));
  }
}
