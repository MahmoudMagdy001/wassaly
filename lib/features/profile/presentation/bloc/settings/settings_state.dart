part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final String language;
  final ThemeMode themeMode;

  const SettingsState({
    this.language = 'ar',
    this.themeMode = ThemeMode.system,
  });

  SettingsState copyWith({
    String? language,
    ThemeMode? themeMode,
  }) {
    return SettingsState(
      language: language ?? this.language,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  List<Object?> get props => [language, themeMode];
}
