import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/auth/presentation/widgets/social_button.dart';

class SocialLoginSection extends StatelessWidget {
  final VoidCallback onLoginWithGoogle;
  final VoidCallback onLoginWithFacebook;

  const SocialLoginSection({
    super.key,
    required this.onLoginWithGoogle,
    required this.onLoginWithFacebook,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                color: cs.outlineVariant,
                thickness: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                'auth.or_login_with'.tr(),
                style: tt.bodySmall?.copyWith(
                  color: cs.onSurfaceVariant,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                color: cs.outlineVariant,
                thickness: 1,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          children: [
            Expanded(
              child: SocialButton(
                label: 'auth.sign_up_facebook'.tr(),
                iconPath: AppAssets.facebookIcon,
                backgroundColor: cs.primary,
                foregroundColor: cs.onPrimary,
                onPressed: onLoginWithFacebook,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: SocialButton(
                label: 'auth.sign_up_google'.tr(),
                iconPath: AppAssets.googleIcon,
                backgroundColor: cs.surfaceContainerHighest,
                foregroundColor: cs.onSurface,
                onPressed: onLoginWithGoogle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
