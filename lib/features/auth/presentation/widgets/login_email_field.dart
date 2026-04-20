import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

class LoginEmailField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const LoginEmailField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: AppTextField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: TextInputType.emailAddress,
        hint: 'auth.email_placeholder'.tr(),
        prefixIcon: Icon(
          Icons.alternate_email,
          color: cs.onSurfaceVariant,
          size: 20.sp,
        ),
      ),
    );
  }
}
