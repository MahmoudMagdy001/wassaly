import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/presentation/bloc/service_booking_bloc.dart';

class BookingCustomerForm extends StatefulWidget {
  const BookingCustomerForm({super.key});

  @override
  State<BookingCustomerForm> createState() => _BookingCustomerFormState();
}

class _BookingCustomerFormState extends State<BookingCustomerForm> {
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _emailController;
  late final TextEditingController _problemController;

  @override
  void initState() {
    super.initState();
    final state = context.read<ServiceBookingBloc>().state;
    _nameController = TextEditingController(text: state.customerName);
    _phoneController = TextEditingController(text: state.customerPhone);
    _emailController = TextEditingController(text: state.customerEmail);
    _problemController = TextEditingController(text: state.problemDescription);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _problemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ServiceBookingBloc, ServiceBookingState>(
      listenWhen: (prev, curr) =>
          prev.customerName != curr.customerName ||
          prev.customerPhone != curr.customerPhone ||
          prev.customerEmail != curr.customerEmail ||
          prev.problemDescription != curr.problemDescription,
      listener: (context, state) {
        if (_nameController.text != state.customerName) {
          _nameController.text = state.customerName;
        }
        if (_phoneController.text != state.customerPhone) {
          _phoneController.text = state.customerPhone;
        }
        if (_emailController.text != state.customerEmail) {
          _emailController.text = state.customerEmail;
        }
        if (_problemController.text != state.problemDescription) {
          _problemController.text = state.problemDescription;
        }
      },
      child: Builder(
        builder: (context) {
          final bloc = context.read<ServiceBookingBloc>();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextField(
                label: context.l10n.service_booking_name,
                controller: _nameController,
                onChanged: (val) =>
                    bloc.add(ServiceBookingFormChanged(name: val)),
              ),
              16.verticalSpace,
              AppTextField(
                label: context.l10n.service_booking_phone,
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                onChanged: (val) =>
                    bloc.add(ServiceBookingFormChanged(phone: val)),
              ),
              16.verticalSpace,
              AppTextField(
                label: context.l10n.service_booking_email,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (val) =>
                    bloc.add(ServiceBookingFormChanged(email: val)),
              ),
              16.verticalSpace,
              AppTextField(
                label: context.l10n.service_booking_problem,
                hint: context.l10n.service_booking_problem_hint,
                controller: _problemController,
                maxLines: 3,
                onChanged: (val) => bloc
                    .add(ServiceBookingFormChanged(problemDescription: val)),
              ),
            ],
          );
        },
      ),
    );
  }
}
