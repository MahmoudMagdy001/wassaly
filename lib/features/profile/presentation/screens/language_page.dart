import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/profile/presentation/bloc/settings/settings_bloc.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile.select_language'.tr()),
        centerTitle: true,
      ),
      body: const _LanguageView(),
    );
  }
}

class _LanguageView extends StatelessWidget {
  const _LanguageView();

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return BlocBuilder<SettingsBloc, SettingsState>(
      buildWhen: (prev, curr) => prev.language != curr.language,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: cs.surface,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                      color: cs.outlineVariant.withValues(alpha: 0.5)),
                ),
                child: Column(
                  children: [
                    _buildLanguageOption(
                      context,
                      code: 'ar',
                      name: 'العربية',
                      subName: 'Arabic',
                      isSelected: state.language == 'ar',
                      iconText: 'ع',
                      iconColor: const Color(0xFF4CAF50),
                      iconBgColor: const Color(0xFFE8F5E9),
                    ),
                    Divider(height: 1, indent: 16.w, endIndent: 16.w),
                    _buildLanguageOption(
                      context,
                      code: 'en',
                      name: 'English',
                      subName: 'الإنجليزية',
                      isSelected: state.language == 'en',
                      iconText: 'EN',
                      iconColor: const Color(0xFF2196F3),
                      iconBgColor: const Color(0xFFE3F2FD),
                    ),
                  ],
                ),
              ),
              24.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  label: 'profile.save_changes'.tr(),
                  isFullWidth: true,
                  onPressed: () => context.pop(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLanguageOption(
    BuildContext context, {
    required String code,
    required String name,
    required String subName,
    required bool isSelected,
    required String iconText,
    required Color iconColor,
    required Color iconBgColor,
  }) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return InkWell(
      onTap: () {
        if (!isSelected) {
          context.read<SettingsBloc>().add(const LanguageToggled());
        }
      },
      borderRadius: BorderRadius.circular(16.r),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Row(
          children: [
            // Selection indicator
            Container(
              width: 24.w,
              height: 24.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? const Color(0xFF4CAF50) : cs.surface,
                border: Border.all(
                  color: isSelected ? const Color(0xFF4CAF50) : cs.outline,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Icon(
                      Icons.check,
                      size: 16.r,
                      color: Colors.white,
                    )
                  : null,
            ),
            16.horizontalSpace,
            // Language name
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: tt.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subName,
                    style: tt.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            16.horizontalSpace,
            // Language icon
            Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                color: iconBgColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  iconText,
                  style: tt.titleMedium?.copyWith(
                    color: iconColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
