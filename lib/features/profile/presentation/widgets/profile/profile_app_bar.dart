import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.paddingOf(context).top + AppSpacing.md,
        left: AppSpacing.pagePadding,
        right: AppSpacing.pagePadding,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => context.push(AppRoutes.editProfile),
            icon: Icon(Icons.edit_outlined, color: cs.primary),
            style: IconButton.styleFrom(
              backgroundColor: cs.primaryContainer.withValues(alpha: 0.3),
              shape: const RoundedRectangleBorder(borderRadius: AppBorders.md),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'profile.my_account'.tr(),
                style: tt.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 48.w),
        ],
      ),
    );
  }
}
