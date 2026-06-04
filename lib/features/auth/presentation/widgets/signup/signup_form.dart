import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/signup/signup_bloc.dart';
import 'package:wassaly/features/auth/presentation/widgets/signup/avatar_picker_widget.dart';
import 'package:wassaly/features/auth/presentation/widgets/signup/signup_email_field.dart';
import 'package:wassaly/features/auth/presentation/widgets/signup/signup_form_container.dart';
import 'package:wassaly/features/auth/presentation/widgets/signup/signup_name_field.dart';
import 'package:wassaly/features/auth/presentation/widgets/signup/signup_password_field.dart';
import 'package:wassaly/features/auth/presentation/widgets/signup/signup_phone_field.dart';
import 'package:wassaly/features/auth/presentation/widgets/signup/signup_terms_checkbox.dart';
import 'package:wassaly/features/auth/presentation/widgets/social_login_section.dart';

class SignupForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onPhoneChanged;
  final ValueChanged<String> onEmailChanged;
  final ValueChanged<String> onPasswordChanged;
  final ValueChanged<bool> onTogglePasswordVisibility;
  final ValueChanged<String> onConfirmPasswordChanged;
  final ValueChanged<bool> onToggleConfirmPasswordVisibility;
  final VoidCallback onSignup;
  final VoidCallback onTermsPressed;
  final VoidCallback onPrivacyPressed;
  final File? avatarFile;
  final VoidCallback onAvatarCleared;
  final void Function(File) onAvatarSelected;

  const SignupForm({
    required this.formKey, required this.nameController, required this.phoneController, required this.emailController, required this.passwordController, required this.confirmPasswordController, required this.onNameChanged, required this.onPhoneChanged, required this.onEmailChanged, required this.onPasswordChanged, required this.onTogglePasswordVisibility, required this.onConfirmPasswordChanged, required this.onToggleConfirmPasswordVisibility, required this.onSignup, required this.onTermsPressed, required this.onPrivacyPressed, required this.onAvatarCleared, required this.onAvatarSelected, super.key,
    this.avatarFile,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Column(
      children: [
        AvatarPickerWidget(
          avatarFile: avatarFile,
          onAvatarCleared: onAvatarCleared,
          onAvatarSelected: onAvatarSelected,
        ),
        20.verticalSpace,
        Form(
          key: formKey,
          child: SignupFormContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  context.l10n.auth_name,
                  textAlign: TextAlign.start,
                  style: tt.bodyMedium?.copyWith(
                    color: cs.primary,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                12.verticalSpace,
                SignupNameField(
                  controller: nameController,
                  onChanged: onNameChanged,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return context.l10n.auth_name_required;
                    }
                    return null;
                  },
                ),
                16.verticalSpace,
                Text(
                  context.l10n.auth_phone,
                  textAlign: TextAlign.start,
                  style: tt.bodyMedium?.copyWith(
                    color: cs.primary,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                12.verticalSpace,
                SignupPhoneField(
                  controller: phoneController,
                  onChanged: onPhoneChanged,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return context.l10n.auth_phone_required;
                    }
                    if (!value!.isValidPhoneNumber) {
                      return context.l10n.auth_phone_invalid;
                    }
                    return null;
                  },
                ),
                16.verticalSpace,
                Text(
                  context.l10n.auth_email,
                  textAlign: TextAlign.start,
                  style: tt.bodyMedium?.copyWith(
                    color: cs.primary,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                12.verticalSpace,
                SignupEmailField(
                  controller: emailController,
                  onChanged: onEmailChanged,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return context.l10n.auth_email_required;
                    }
                    if (!value!.isValidEmail) {
                      return context.l10n.auth_email_invalid;
                    }
                    return null;
                  },
                ),
                16.verticalSpace,
                Text(
                  context.l10n.auth_password,
                  textAlign: TextAlign.start,
                  style: tt.bodyMedium?.copyWith(
                    color: cs.primary,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                12.verticalSpace,
                SignupPasswordField(
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
                16.verticalSpace,
                Text(
                  context.l10n.auth_confirm_password,
                  textAlign: TextAlign.start,
                  style: tt.bodyMedium?.copyWith(
                    color: cs.primary,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                12.verticalSpace,
                SignupPasswordField(
                  controller: confirmPasswordController,
                  onChanged: onConfirmPasswordChanged,
                  onToggleVisibility: onToggleConfirmPasswordVisibility,
                  isConfirmPassword: true,
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return context.l10n.auth_confirm_password_required;
                    }
                    if (value != passwordController.text) {
                      return context.l10n.auth_passwords_do_not_match;
                    }
                    return null;
                  },
                ),
                16.verticalSpace,
                SignupTermsCheckbox(
                  onTermsPressed: onTermsPressed,
                  onPrivacyPressed: onPrivacyPressed,
                ),
                20.verticalSpace,
                BlocSelector<SignupBloc, SignupState, (bool, bool)>(
                  selector: (state) => (state.isLoading, state.isTermsAccepted),
                  builder: (context, data) {
                    final (isLoading, isTermsAccepted) = data;

                    return AppButton(
                      label: context.l10n.auth_create_account_button,
                      onPressed:
                          (isLoading || !isTermsAccepted) ? null : onSignup,
                      isLoading: isLoading,
                      variant: ButtonVariant.success,
                      isFullWidth: true,
                    );
                  },
                ),
                20.verticalSpace,
                const SocialLoginSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
