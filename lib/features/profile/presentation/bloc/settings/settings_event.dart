import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.freezed.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.settingsInitialized() = SettingsInitialized;

  const factory SettingsEvent.languageToggled() = LanguageToggled;

  const factory SettingsEvent.languageChanged(String language) =
      LanguageChanged;

  const factory SettingsEvent.themeToggled() = ThemeToggled;

  const factory SettingsEvent.themeModeChanged(ThemeMode themeMode) =
      ThemeModeChanged;
}
