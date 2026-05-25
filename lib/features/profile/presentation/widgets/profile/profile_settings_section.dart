import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/profile/presentation/bloc/settings/settings_bloc.dart';
import 'package:wassaly/features/profile/presentation/widgets/profile/profile_menu_tile.dart';

import 'language_bottom_sheet.dart';
import 'theme_bottom_sheet.dart';

class ProfileSettingsSection extends StatelessWidget {
  const ProfileSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.w, bottom: 8.h),
            child: Text(
              context.l10n.profile_general_settings,
              style: tt.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: cs.primary,
              ),
            ),
          ),
          AppCard(
            showShadow: true,
            child: Column(
              children: [
                ProfileMenuTile(
                  icon: Icons.location_on_outlined,
                  title: context.l10n.profile_saved_addresses,
                  onTap: () => context.push(AppRoutes.addresses),
                ),
                BlocSelector<SettingsBloc, SettingsState, String>(
                  selector: (state) => state.language,
                  builder: (context, language) {
                    return ProfileMenuTile(
                      icon: Icons.language_outlined,
                      title: context.l10n.profile_language,
                      subtitle: language == 'ar'
                          ? context.l10n.profile_arabic
                          : context.l10n.profile_english,
                      onTap: () => context.showAppBottomSheet<void>(
                        builder: (context) => const LanguageBottomSheet(),
                      ),
                    );
                  },
                ),
                BlocSelector<SettingsBloc, SettingsState, ThemeMode>(
                  selector: (state) => state.themeMode,
                  builder: (context, themeMode) {
                    String themeSubtitle;
                    IconData themeIcon;

                    switch (themeMode) {
                      case ThemeMode.dark:
                        themeSubtitle = context.l10n.profile_dark;
                        themeIcon = Icons.dark_mode_outlined;
                        break;
                      case ThemeMode.light:
                        themeSubtitle = context.l10n.profile_light;
                        themeIcon = Icons.light_mode_outlined;
                        break;
                      case ThemeMode.system:
                        themeSubtitle = context.l10n.profile_system;
                        themeIcon = Icons.phone_iphone_outlined;
                        break;
                    }

                    return ProfileMenuTile(
                      icon: themeIcon,
                      title: context.l10n.profile_theme,
                      subtitle: themeSubtitle,
                      onTap: () => context.showAppBottomSheet<void>(
                        builder: (context) => const ThemeBottomSheet(),
                      ),
                    );
                  },
                ),
                ProfileMenuTile(
                  icon: Icons.notifications_outlined,
                  title: context.l10n.profile_notifications,
                  trailing: BlocSelector<SettingsBloc, SettingsState, bool>(
                    selector: (state) => state.notificationsEnabled,
                    builder: (context, notificationsEnabled) {
                      return Switch.adaptive(
                        value: notificationsEnabled,
                        onChanged: (value) {
                          context
                              .read<SettingsBloc>()
                              .add(SettingsNotificationsToggled(value));
                        },
                        activeThumbColor: cs.primary,
                        activeTrackColor: cs.primaryContainer,
                      );
                    },
                  ),
                  onTap: null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
