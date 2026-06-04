import 'package:wassaly/core/imports/imports.dart';

class EditProfilePhoneField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;

  const EditProfilePhoneField({
    required this.controller,
    super.key,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) => AppTextField(
        label: context.l10n.auth_phone,
        hint: context.l10n.auth_phone,
        controller: controller,
        focusNode: focusNode,
        prefixIcon: const Icon(Icons.phone_outlined),
        keyboardType: TextInputType.phone,
      );
}
