part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final String language;
  final bool isDarkMode;

  const SettingsState({
    this.language = 'ar',
    this.isDarkMode = false,
  });

  SettingsState copyWith({
    String? language,
    bool? isDarkMode,
  }) {
    return SettingsState(
      language: language ?? this.language,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }

  @override
  List<Object?> get props => [language, isDarkMode];
}
