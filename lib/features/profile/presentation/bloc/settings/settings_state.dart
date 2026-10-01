import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default('ar') String language,
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _SettingsState;
}
