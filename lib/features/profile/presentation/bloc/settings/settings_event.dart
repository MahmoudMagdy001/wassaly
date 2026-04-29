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

class ThemeToggled extends SettingsEvent {
  const ThemeToggled();
}
