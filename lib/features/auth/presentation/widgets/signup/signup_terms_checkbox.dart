import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/signup/signup_bloc.dart';

class SignupTermsCheckbox extends StatelessWidget {
  final VoidCallback onTermsPressed;
  final VoidCallback onPrivacyPressed;

  const SignupTermsCheckbox({
    super.key,
    required this.onTermsPressed,
    required this.onPrivacyPressed,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return BlocSelector<SignupBloc, SignupState, bool>(
      selector: (state) => state.isTermsAccepted,
      builder: (context, isTermsAccepted) {
        return Row(
          children: [
            Checkbox(
              value: isTermsAccepted,
              onChanged: (value) {
                context
                    .read<SignupBloc>()
                    .add(TermsAcceptedChanged(value ?? false));
              },
              activeColor: cs.primary,
              side: BorderSide(color: cs.outline),
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            Expanded(
              child: Wrap(
                children: [
                  Text(
                    context.l10n.auth_agree_to,
                    style: tt.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTermsPressed,
                    child: Text(
                      context.l10n.auth_terms_of_service,
                      style: tt.bodySmall?.copyWith(
                        color: cs.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    ' ${context.l10n.auth_and} ',
                    style: tt.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                    ),
                  ),
                  GestureDetector(
                    onTap: onPrivacyPressed,
                    child: Text(
                      context.l10n.auth_privacy_policy,
                      style: tt.bodySmall?.copyWith(
                        color: cs.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
