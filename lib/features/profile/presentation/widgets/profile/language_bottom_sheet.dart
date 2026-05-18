import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/profile/presentation/bloc/settings/settings_bloc.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return BlocSelector<SettingsBloc, SettingsState, String>(
      selector: (state) => state.language,
      builder: (context, language) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  context.l10n.profile_language,
                  style: tt.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: cs.onSurface,
                  ),
                ),
              ),
            ),

            20.verticalSpace,

            // Language options
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  _LanguageOption(
                    title: context.l10n.profile_arabic,
                    subtitle: 'Arabic',
                    flagEmoji: '🇸🇦',
                    isSelected: language == 'ar',
                    onTap: () async {
                      final currentContext = context;
                      if (language != 'ar') {
                        final confirmed =
                            await _showLanguageChangeDialog(currentContext);
                        if ((confirmed ?? false) && currentContext.mounted) {
                          currentContext
                              .read<SettingsBloc>()
                              .add(const LanguageToggled());
                        }
                      }
                      if (currentContext.mounted) currentContext.pop();
                    },
                  ),
                  12.verticalSpace,
                  _LanguageOption(
                    title: context.l10n.profile_english,
                    subtitle: 'الإنجليزية',
                    flagEmoji: '🇬🇧',
                    isSelected: language == 'en',
                    onTap: () async {
                      final currentContext = context;
                      if (language != 'en') {
                        final confirmed =
                            await _showLanguageChangeDialog(currentContext);
                        if ((confirmed ?? false) && currentContext.mounted) {
                          currentContext
                              .read<SettingsBloc>()
                              .add(const LanguageToggled());
                        }
                      }
                      if (currentContext.mounted) currentContext.pop();
                    },
                  ),
                ],
              ),
            ),

            32.verticalSpace,
          ],
        );
      },
    );
  }

  Future<bool?> _showLanguageChangeDialog(BuildContext context) async {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return await showAppDialog<bool>(
      child: AlertDialog(
        title: Text(
          context.l10n.profile_language_change_title,
          style: tt.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: cs.onSurface,
          ),
        ),
        content: Text(
          context.l10n.profile_language_change_message,
          style: tt.bodyMedium?.copyWith(color: cs.onSurface),
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(false),
            child: Text(
              context.l10n.profile_language_change_cancel,
              style: TextStyle(color: cs.onSurface),
            ),
          ),
          AppButton(
            label: context.l10n.profile_language_change_confirm,
            onPressed: () => context.pop(true),
          ),
        ],
      ),
    );
  }
}

class _LanguageOption extends StatelessWidget {
  const _LanguageOption({
    required this.title,
    required this.subtitle,
    required this.flagEmoji,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String flagEmoji;
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
                // Flag icon container
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
                  child: Text(
                    flagEmoji,
                    style: TextStyle(fontSize: 22.sp),
                  ),
                ),
                14.horizontalSpace,

                // Text
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

                // Check indicator
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
