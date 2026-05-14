import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/profile/presentation/bloc/settings/settings_bloc.dart';
import 'package:wassaly/features/profile/presentation/widgets/profile/profile_menu_tile.dart';

import 'language_bottom_sheet.dart';

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
                ProfileMenuTile(
                  icon: Icons.credit_card_outlined,
                  title: context.l10n.profile_payment_methods,
                  onTap: () {},
                ),
                BlocBuilder<SettingsBloc, SettingsState>(
                  buildWhen: (prev, curr) => prev.language != curr.language,
                  builder: (context, state) {
                    return ProfileMenuTile(
                      icon: Icons.language_outlined,
                      title: context.l10n.profile_language,
                      subtitle: state.language == 'ar'
                          ? context.l10n.profile_arabic
                          : context.l10n.profile_english,
                      onTap: () => context.showAppBottomSheet<void>(
                        builder: (context) => const LanguageBottomSheet(),
                      ),
                    );
                  },
                ),
                BlocBuilder<SettingsBloc, SettingsState>(
                  buildWhen: (prev, curr) =>
                      prev.isDarkMode != curr.isDarkMode ||
                      prev.language != curr.language,
                  builder: (context, state) {
                    return ProfileMenuTile(
                      icon: state.isDarkMode
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode_outlined,
                      title: context.l10n.profile_theme,
                      subtitle: state.isDarkMode
                          ? context.l10n.profile_dark
                          : context.l10n.profile_light,
                      trailing: Switch.adaptive(
                        value: state.isDarkMode,
                        onChanged: (_) {
                          context
                              .read<SettingsBloc>()
                              .add(const ThemeToggled());
                        },
                        activeThumbColor: cs.primary,
                        activeTrackColor: cs.primaryContainer,
                      ),
                      onTap: null,
                    );
                  },
                ),
                ProfileMenuTile(
                  icon: Icons.notifications_outlined,
                  title: context.l10n.profile_notifications,
                  trailing: BlocBuilder<SettingsBloc, SettingsState>(
                    buildWhen: (prev, curr) =>
                        prev.notificationsEnabled != curr.notificationsEnabled,
                    builder: (context, state) {
                      return Switch.adaptive(
                        value: state.notificationsEnabled,
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
