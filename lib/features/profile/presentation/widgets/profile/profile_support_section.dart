import 'package:go_router/go_router.dart';
import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/features/profile/presentation/widgets/profile/profile_menu_tile.dart';

class ProfileSupportSection extends StatelessWidget {
  const ProfileSupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: AppSpacing.sm, bottom: AppSpacing.ms),
            child: Text(
              'profile.support_and_privacy'.tr(),
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
                  icon: Icons.help_outline,
                  title: 'profile.help_center'.tr(),
                  onTap: () {},
                ),
                ProfileMenuTile(
                  icon: Icons.privacy_tip_outlined,
                  title: 'profile.privacy_policy'.tr(),
                  onTap: () =>
                      GoRouter.of(context).push(AppRoutes.privacyPolicy),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
