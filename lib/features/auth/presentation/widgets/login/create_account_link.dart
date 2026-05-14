import 'package:wassaly/core/imports/imports.dart';

class CreateAccountLink extends StatelessWidget {
  final VoidCallback onCreateAccount;

  const CreateAccountLink({
    super.key,
    required this.onCreateAccount,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.l10n.auth_dont_have_account,
          style: tt.bodySmall?.copyWith(
            color: cs.onSurfaceVariant,
          ),
        ),
        TextButton(
          onPressed: onCreateAccount,
          child: Text(
            context.l10n.auth_sign_up,
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
