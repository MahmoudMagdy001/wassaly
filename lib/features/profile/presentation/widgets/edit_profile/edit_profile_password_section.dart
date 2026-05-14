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
  bool _obscureCurrentPassword = true;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

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
        AppTextField(
          label: context.l10n.profile_current_password,
          controller: widget.currentPasswordController,
          focusNode: widget.currentPasswordFocusNode,
          obscureText: _obscureCurrentPassword,
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            onPressed: () => setState(
                () => _obscureCurrentPassword = !_obscureCurrentPassword),
            icon: Icon(
              _obscureCurrentPassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
          ),
        ),
        16.verticalSpace,
        AppTextField(
          label: context.l10n.auth_password,
          controller: widget.passwordController,
          focusNode: widget.passwordFocusNode,
          obscureText: _obscurePassword,
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            onPressed: () =>
                setState(() => _obscurePassword = !_obscurePassword),
            icon: Icon(
              _obscurePassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
          ),
        ),
        16.verticalSpace,
        AppTextField(
          label: context.l10n.auth_confirm_password,
          controller: widget.passwordConfirmationController,
          focusNode: widget.passwordConfirmationFocusNode,
          obscureText: _obscureConfirmPassword,
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            onPressed: () => setState(
                () => _obscureConfirmPassword = !_obscureConfirmPassword),
            icon: Icon(
              _obscureConfirmPassword
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
      ],
    );
  }
}
