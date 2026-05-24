import 'package:wassaly/core/imports/imports.dart';

class BackToLoginLink extends StatelessWidget {
  final VoidCallback onPressed;

  const BackToLoginLink({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: cs.primary,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.l10n.auth_back_to_login,
            style: tt.bodyLarge?.copyWith(
              color: cs.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          4.horizontalSpace,
          AppIcon(
            materialIcon: Icons.arrow_back,
            size: 18.w,
            color: cs.primary,
          ),
        ],
      ),
    );
  }
}
