import 'package:wassaly/core/imports/imports.dart';

class LoginLink extends StatelessWidget {
  final VoidCallback onLogin;

  const LoginLink({
    required this.onLogin, super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.l10n.auth_already_have_account,
          style: tt.bodySmall?.copyWith(
            color: cs.onSurfaceVariant,
          ),
        ),
        TextButton(
          onPressed: onLogin,
          child: Text(
            context.l10n.auth_log_in,
            style: tt.bodyMedium?.copyWith(
              color: cs.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
