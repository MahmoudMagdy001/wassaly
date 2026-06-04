import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/login/login_bloc.dart';

class LoginPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final ValueChanged<bool> onToggleVisibility;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;

  const LoginPasswordField({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.onToggleVisibility,
    this.validator,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return BlocSelector<LoginBloc, LoginState, bool>(
      selector: (state) => state.isPasswordVisible,
      builder: (context, isPasswordVisible) => ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: AppTextField(
            controller: controller,
            focusNode: focusNode,
            onChanged: onChanged,
            validator: validator,
            obscureText: !isPasswordVisible,
            hint: '••••••••',
            prefixIcon: const Icon(Icons.lock_outline),
            suffixIcon: IconButton(
              onPressed: () => onToggleVisibility(isPasswordVisible),
              icon: Icon(
                isPasswordVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: cs.onSurfaceVariant,
                size: 20.sp,
              ),
            ),
          ),
        ),
    );
  }
}
