import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/reset_password/reset_password_bloc.dart';
import 'package:wassaly/features/auth/presentation/widgets/reset_password/password_strength_indicator.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _newPasswordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();

  @override
  void dispose() {
    _newPasswordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  void _onNewPasswordChanged(String value) {
    context.read<ResetPasswordBloc>().add(NewPasswordChanged(value));
  }

  void _onConfirmPasswordChanged(String value) {
    context.read<ResetPasswordBloc>().add(ConfirmPasswordChanged(value));
  }

  void _onToggleNewPasswordVisibility() {
    context.read<ResetPasswordBloc>().add(
          const PasswordVisibilityToggled(isNewPassword: true),
        );
  }

  void _onToggleConfirmPasswordVisibility() {
    context.read<ResetPasswordBloc>().add(
          const PasswordVisibilityToggled(isNewPassword: false),
        );
  }

  void _onSubmit() {
    context.hideKeyboard();
    if (_formKey.currentState?.validate() ?? false) {
      context.read<ResetPasswordBloc>().add(const ResetPasswordSubmitted());
    }
  }

  String? _validateNewPassword(String? value) {
    if (value == null || value.isEmpty) {
      return context.l10n.auth_password_required;
    }
    final state = context.read<ResetPasswordBloc>().state;
    if (value.length < 8) {
      final errorMsg = state.newPasswordError;
      if (errorMsg == 'auth.password_too_short') {
        return context.l10n.auth_password_too_short;
      }
      return errorMsg;
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return context.l10n.auth_confirm_password_required;
    }
    final state = context.read<ResetPasswordBloc>().state;
    if (value != state.password) {
      final errorMsg = state.confirmPasswordError;
      if (errorMsg == 'auth.passwords_do_not_match') {
        return context.l10n.auth_passwords_do_not_match;
      }
      return errorMsg;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // New Password Field
          Text(
            context.l10n.auth_password,
            style: context.theme.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w500,
              color: cs.onSurface,
            ),
          ),
          8.verticalSpace,
          BlocSelector<ResetPasswordBloc, ResetPasswordState, bool>(
            selector: (state) => state.isNewPasswordVisible,
            builder: (context, isNewPasswordVisible) => AppTextField(
                hint: context.l10n.reset_password_new_password_hint,
                obscureText: !isNewPasswordVisible,
                onChanged: _onNewPasswordChanged,
                onFieldSubmitted: (_) =>
                    _confirmPasswordFocusNode.requestFocus(),
                focusNode: _newPasswordFocusNode,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.visiblePassword,
                validator: _validateNewPassword,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: cs.onSurfaceVariant,
                  size: 20.w,
                ),
                suffixIcon: GestureDetector(
                  onTap: _onToggleNewPasswordVisibility,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                      isNewPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      key: ValueKey<bool>(isNewPasswordVisible),
                      color: cs.onSurfaceVariant,
                      size: 20.w,
                    ),
                  ),
                ),
              ),
          ),

          // Password Strength Indicator
          BlocSelector<ResetPasswordBloc, ResetPasswordState, (String, int)>(
            selector: (state) => (state.password, state.passwordStrength),
            builder: (context, data) {
              final (password, strength) = data;

              return AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: password.isNotEmpty
                    ? Padding(
                        padding: EdgeInsets.only(top: 12.h),
                        child: PasswordStrengthIndicator(
                          strength: strength,
                        ),
                      )
                    : const SizedBox.shrink(),
              );
            },
          ),

          24.verticalSpace,

          // Confirm Password Field
          Text(
            context.l10n.auth_confirm_password,
            style: context.theme.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w500,
              color: cs.onSurface,
            ),
          ),
          8.verticalSpace,
          BlocSelector<ResetPasswordBloc, ResetPasswordState, bool>(
            selector: (state) => state.isConfirmPasswordVisible,
            builder: (context, isConfirmPasswordVisible) => AppTextField(
                hint: context.l10n.reset_password_confirm_password_hint,
                obscureText: !isConfirmPasswordVisible,
                onChanged: _onConfirmPasswordChanged,
                onFieldSubmitted: (_) => _onSubmit(),
                focusNode: _confirmPasswordFocusNode,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                validator: _validateConfirmPassword,
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: cs.onSurfaceVariant,
                  size: 20.w,
                ),
                suffixIcon: GestureDetector(
                  onTap: _onToggleConfirmPasswordVisibility,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                      isConfirmPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      key: ValueKey<bool>(isConfirmPasswordVisible),
                      color: cs.onSurfaceVariant,
                      size: 20.w,
                    ),
                  ),
                ),
              ),
          ),

          32.verticalSpace,

          // Submit Button
          BlocSelector<ResetPasswordBloc, ResetPasswordState,
              (bool, ResetPasswordStatus)>(
            selector: (state) => (state.canSubmit, state.status),
            builder: (context, data) {
              final (canSubmit, status) = data;
              final isLoading = status == ResetPasswordStatus.loading;

              return AppButton(
                label: context.l10n.reset_password_reset_button,
                onPressed: canSubmit ? _onSubmit : null,
                isLoading: isLoading,
                isFullWidth: true,
                variant: ButtonVariant.success,
                suffixIcon: !isLoading
                    ? Icon(
                        Icons.lock_reset_outlined,
                        color: cs.onPrimary,
                        size: 24.w,
                      )
                    : null,
              );
            },
          ),
        ],
      ),
    );
  }
}
