import 'package:wassaly/core/imports/core_imports.dart';

class EditProfilePhoneField extends StatelessWidget {
  final TextEditingController controller;

  const EditProfilePhoneField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: 'auth.phone'.tr(),
      hint: 'auth.phone'.tr(),
      controller: controller,
      prefixIcon: const Icon(Icons.phone_outlined),
      keyboardType: TextInputType.phone,
    );
  }
}
