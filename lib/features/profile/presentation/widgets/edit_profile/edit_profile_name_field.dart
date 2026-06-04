import 'package:wassaly/core/imports/imports.dart';

class EditProfileNameField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;

  const EditProfileNameField({
    required this.controller,
    super.key,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) => AppTextField(
        label: context.l10n.auth_name,
        hint: context.l10n.auth_name_placeholder,
        controller: controller,
        focusNode: focusNode,
        prefixIcon: const Icon(Icons.person_outline),
        validator: (v) => v!.isEmpty ? context.l10n.auth_name_required : null,
      );
}
