import 'package:wassaly/core/imports/imports.dart';

class EditProfileNameField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;

  const EditProfileNameField({
    super.key,
    required this.controller,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: context.l10n.auth_name,
      hint: context.l10n.auth_name_placeholder,
      controller: controller,
      focusNode: focusNode,
      prefixIcon: const Icon(Icons.person_outline),
      validator: (v) => v!.isEmpty ? context.l10n.auth_name_required : null,
    );
  }
}
