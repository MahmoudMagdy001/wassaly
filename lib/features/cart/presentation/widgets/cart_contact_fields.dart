import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';

class CartContactFields extends StatefulWidget {
  final CartState state;

  const CartContactFields({
    super.key,
    required this.state,
  });

  @override
  State<CartContactFields> createState() => _CartContactFieldsState();
}

class _CartContactFieldsState extends State<CartContactFields> {
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.state.customerName);
    _phoneController = TextEditingController(text: widget.state.phoneNumber);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartBloc, CartState>(
      listenWhen: (previous, current) =>
          previous.customerName != current.customerName ||
          previous.phoneNumber != current.phoneNumber,
      listener: (context, state) {
        if (state.customerName != _nameController.text) {
          _nameController.text = state.customerName;
        }
        if (state.phoneNumber != _phoneController.text) {
          _phoneController.text = state.phoneNumber;
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'cart.contact_details'.tr(),
            style: context.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          8.verticalSpace,
          AppTextField(
            controller: _nameController,
            hint: 'cart.customer_name'.tr(),
            onChanged: (value) =>
                context.read<CartBloc>().add(CustomerNameChangedEvent(value)),
          ),
          10.verticalSpace,
          AppTextField(
            controller: _phoneController,
            hint: 'cart.phone_number'.tr(),
            keyboardType: TextInputType.phone,
            onChanged: (value) =>
                context.read<CartBloc>().add(PhoneNumberChangedEvent(value)),
          ),
          if (widget.state.phoneNumber.trim().isNotEmpty &&
              !widget.state.isPhoneValid) ...[
            6.verticalSpace,
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'auth.phone_invalid'.tr(),
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colors.error,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
