part of 'settings_bloc.dart';

sealed class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object?> get props => [];
}

class SettingsInitialized extends SettingsEvent {
  const SettingsInitialized();
}

class LanguageToggled extends SettingsEvent {
  const LanguageToggled();
}

class LanguageChanged extends SettingsEvent {
  final String language;

  const LanguageChanged(this.language);

  @override
  List<Object?> get props => [language];
}

class ThemeToggled extends SettingsEvent {
  const ThemeToggled();
}

class ThemeModeChanged extends SettingsEvent {
  final ThemeMode themeMode;

  const ThemeModeChanged(this.themeMode);

  @override
  List<Object?> get props => [themeMode];
}
