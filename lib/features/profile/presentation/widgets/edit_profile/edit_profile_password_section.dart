import 'package:wassaly/core/imports/imports.dart';

class EditProfilePasswordSection extends StatefulWidget {
  final TextEditingController currentPasswordController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmationController;
  final FocusNode? currentPasswordFocusNode;
  final FocusNode? passwordFocusNode;
  final FocusNode? passwordConfirmationFocusNode;

  const EditProfilePasswordSection({
    super.key,
    required this.currentPasswordController,
    required this.passwordController,
    required this.passwordConfirmationController,
    this.currentPasswordFocusNode,
    this.passwordFocusNode,
    this.passwordConfirmationFocusNode,
  });

  @override
  State<EditProfilePasswordSection> createState() =>
      _EditProfilePasswordSectionState();
}

class _EditProfilePasswordSectionState
    extends State<EditProfilePasswordSection> {
  final ValueNotifier<bool> _obscureCurrentPassword = ValueNotifier(true);
  final ValueNotifier<bool> _obscurePassword = ValueNotifier(true);
  final ValueNotifier<bool> _obscureConfirmPassword = ValueNotifier(true);

  @override
  void dispose() {
    _obscureCurrentPassword.dispose();
    _obscurePassword.dispose();
    _obscureConfirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tt = context.theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.profile_change_password,
          style: tt.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        16.verticalSpace,
        ValueListenableBuilder<bool>(
          valueListenable: _obscureCurrentPassword,
          builder: (context, obscure, child) => AppTextField(
              label: context.l10n.profile_current_password,
              controller: widget.currentPasswordController,
              focusNode: widget.currentPasswordFocusNode,
              obscureText: obscure,
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                onPressed: () => _obscureCurrentPassword.value = !obscure,
                icon: Icon(
                  obscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
            ),
        ),
        16.verticalSpace,
        ValueListenableBuilder<bool>(
          valueListenable: _obscurePassword,
          builder: (context, obscure, child) => AppTextField(
              label: context.l10n.auth_password,
              controller: widget.passwordController,
              focusNode: widget.passwordFocusNode,
              obscureText: obscure,
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                onPressed: () => _obscurePassword.value = !obscure,
                icon: Icon(
                  obscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
            ),
        ),
        16.verticalSpace,
        ValueListenableBuilder<bool>(
          valueListenable: _obscureConfirmPassword,
          builder: (context, obscure, child) => AppTextField(
              label: context.l10n.auth_confirm_password,
              controller: widget.passwordConfirmationController,
              focusNode: widget.passwordConfirmationFocusNode,
              obscureText: obscure,
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                onPressed: () => _obscureConfirmPassword.value = !obscure,
                icon: Icon(
                  obscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
              validator: (v) {
                final password = widget.passwordController.text;
                if (password.isNotEmpty && v != password) {
                  return context.l10n.auth_passwords_do_not_match;
                }
                return null;
              },
            ),
        ),
      ],
    );
  }
}
