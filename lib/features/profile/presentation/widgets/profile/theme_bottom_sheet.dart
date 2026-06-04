import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/profile/presentation/bloc/settings/settings_bloc.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return BlocSelector<SettingsBloc, SettingsState, ThemeMode>(
      selector: (state) => state.themeMode,
      builder: (context, themeMode) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  context.l10n.profile_theme,
                  style: tt.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: cs.onSurface,
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  _ThemeOption(
                    icon: Icons.phone_iphone,
                    title: context.l10n.profile_system,
                    subtitle: context.l10n.profile_system_description,
                    isSelected: themeMode == ThemeMode.system,
                    onTap: () {
                      if (themeMode != ThemeMode.system) {
                        context
                            .read<SettingsBloc>()
                            .add(const ThemeModeChanged(ThemeMode.system));
                      }
                      if (context.mounted) context.pop();
                    },
                  ),
                  12.verticalSpace,
                  _ThemeOption(
                    icon: Icons.light_mode_outlined,
                    title: context.l10n.profile_light,
                    subtitle: context.l10n.profile_light_theme_subtitle,
                    isSelected: themeMode == ThemeMode.light,
                    onTap: () {
                      if (themeMode != ThemeMode.light) {
                        context
                            .read<SettingsBloc>()
                            .add(const ThemeModeChanged(ThemeMode.light));
                      }
                      if (context.mounted) context.pop();
                    },
                  ),
                  12.verticalSpace,
                  _ThemeOption(
                    icon: Icons.dark_mode_outlined,
                    title: context.l10n.profile_dark,
                    subtitle: context.l10n.profile_dark_theme_subtitle,
                    isSelected: themeMode == ThemeMode.dark,
                    onTap: () {
                      if (themeMode != ThemeMode.dark) {
                        context
                            .read<SettingsBloc>()
                            .add(const ThemeModeChanged(ThemeMode.dark));
                      }
                      if (context.mounted) context.pop();
                    },
                  ),
                ],
              ),
            ),
            32.verticalSpace,
          ],
        ),
    );
  }
}

class _ThemeOption extends StatelessWidget {
  const _ThemeOption({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: isSelected ? cs.primary.withValues(alpha: 0.08) : cs.surface,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: isSelected ? cs.primary : cs.outlineVariant,
          width: isSelected ? 2 : 1,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          splashColor: cs.primary.withValues(alpha: 0.1),
          highlightColor: cs.primary.withValues(alpha: 0.05),
          child: Padding(
            padding: EdgeInsets.all(14.r),
            child: Row(
              children: [
                Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? cs.primary.withValues(alpha: 0.12)
                        : cs.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    icon,
                    color: isSelected ? cs.primary : cs.onSurfaceVariant,
                    size: 22.sp,
                  ),
                ),
                14.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: tt.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: isSelected ? cs.primary : cs.onSurface,
                        ),
                      ),
                      4.verticalSpace,
                      Text(
                        subtitle,
                        style: tt.bodySmall?.copyWith(
                          color: isSelected
                              ? cs.primary.withValues(alpha: 0.7)
                              : cs.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  child: isSelected
                      ? Container(
                          key: const ValueKey('check'),
                          width: 24.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                            color: cs.primary,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.check_rounded,
                            color: cs.onPrimary,
                            size: 14.sp,
                          ),
                        )
                      : SizedBox(
                          key: const ValueKey('empty'),
                          width: 24.w,
                          height: 24.h,
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
