import 'package:wassaly/core/imports/imports.dart';

class ForgotPasswordLink extends StatelessWidget {
  final VoidCallback onPressed;

  const ForgotPasswordLink({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.l10n.auth_password,
          style: tt.bodyMedium?.copyWith(
            color: cs.primary,
            fontWeight: FontWeight.w900,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            context.l10n.auth_forgot_password,
            style: tt.bodySmall?.copyWith(
              color: cs.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}
