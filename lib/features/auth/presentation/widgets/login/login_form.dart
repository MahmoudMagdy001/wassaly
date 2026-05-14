import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:wassaly/features/auth/presentation/widgets/login/forgot_password_link.dart';
import 'package:wassaly/features/auth/presentation/widgets/login/login_email_field.dart';
import 'package:wassaly/features/auth/presentation/widgets/login/login_form_container.dart';
import 'package:wassaly/features/auth/presentation/widgets/login/login_password_field.dart';
import 'package:wassaly/features/auth/presentation/widgets/social_login_section.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final ValueChanged<String> onEmailChanged;
  final ValueChanged<String> onPasswordChanged;
  final ValueChanged<bool> onTogglePasswordVisibility;
  final VoidCallback onLogin;
  final VoidCallback onForgotPassword;

  const LoginForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onEmailChanged,
    required this.onPasswordChanged,
    required this.onTogglePasswordVisibility,
    required this.onLogin,
    required this.onForgotPassword,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Form(
      key: formKey,
      child: LoginFormContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.l10n.auth_email_or_phone,
              textAlign: TextAlign.start,
              style: tt.bodyMedium?.copyWith(
                color: cs.primary,
                fontWeight: FontWeight.w900,
              ),
            ),
            12.verticalSpace,
            LoginEmailField(
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
            16.verticalSpace,
            ForgotPasswordLink(onPressed: onForgotPassword),
            8.verticalSpace,
            LoginPasswordField(
              controller: passwordController,
              onChanged: onPasswordChanged,
              onToggleVisibility: onTogglePasswordVisibility,
              validator: (value) {
                if (value.isNullOrEmpty) {
                  return context.l10n.auth_password_required;
                }
                if (value!.length < 6) {
                  return context.l10n.auth_password_too_short;
                }
                return null;
              },
            ),
            24.verticalSpace,
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (previous, current) =>
                  previous.isLoading != current.isLoading,
              builder: (context, state) {
                return AppButton(
                  label: context.l10n.auth_login_button,
                  onPressed: state.isLoading ? null : onLogin,
                  isLoading: state.isLoading,
                  variant: ButtonVariant.success,
                  isFullWidth: true,
                  height: ButtonSize.medium,
                );
              },
            ),
            20.verticalSpace,
            const SocialLoginSection(),
          ],
        ),
      ),
    );
  }
}
