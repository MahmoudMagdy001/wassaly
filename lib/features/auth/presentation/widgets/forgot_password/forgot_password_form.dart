import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/forgot_password/forgot_password_bloc.dart';
import 'package:wassaly/features/auth/presentation/widgets/forgot_password/forgot_password_email_field.dart';

class ForgotPasswordForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final ValueChanged<String> onEmailChanged;
  final VoidCallback onSubmit;

  const ForgotPasswordForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.onEmailChanged,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ForgotPasswordEmailField(
            controller: emailController,
            onChanged: onEmailChanged,
            validator: (value) {
              if (value.isNullOrEmpty) {
                return context.l10n.auth_email_required;
              }
              if (!value!.isValidEmail && !value.isValidPhoneNumber) {
                return context.l10n.auth_email_invalid;
              }
              return null;
            },
          ),
          24.verticalSpace,
          BlocSelector<ForgotPasswordBloc, ForgotPasswordState, bool>(
            selector: (state) => state.isLoading,
            builder: (context, isLoading) {
              return AppButton(
                label: context.l10n.auth_send_code,
                onPressed: isLoading ? null : onSubmit,
                isLoading: isLoading,
                variant: ButtonVariant.success,
                isFullWidth: true,
                height: ButtonSize.medium,
                prefixIcon: Icon(
                  Icons.send_outlined,
                  color: cs.onPrimary,
                  size: 18.w,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
