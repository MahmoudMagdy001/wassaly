import 'package:wassaly/core/imports/core_imports.dart';

class EditProfileNameField extends StatelessWidget {
  final TextEditingController controller;

  const EditProfileNameField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: 'auth.name'.tr(),
      hint: 'auth.name_placeholder'.tr(),
      controller: controller,
      prefixIcon: const Icon(Icons.person_outline),
      validator: (v) => v!.isEmpty ? 'auth.name_required'.tr() : null,
    );
  }
}
