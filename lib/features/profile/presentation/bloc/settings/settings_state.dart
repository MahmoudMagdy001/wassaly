part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final String language;
  final ThemeMode themeMode;
  final bool notificationsEnabled;

  const SettingsState({
    this.language = 'ar',
    this.themeMode = ThemeMode.system,
    this.notificationsEnabled = true,
  });

  SettingsState copyWith({
    String? language,
    ThemeMode? themeMode,
    bool? notificationsEnabled,
  }) {
    return SettingsState(
      language: language ?? this.language,
      themeMode: themeMode ?? this.themeMode,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
    );
  }

  @override
  List<Object?> get props => [language, themeMode, notificationsEnabled];
}
