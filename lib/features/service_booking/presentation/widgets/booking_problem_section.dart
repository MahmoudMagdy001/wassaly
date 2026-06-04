import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/presentation/bloc/service_booking_bloc.dart';

class BookingProblemSection extends StatefulWidget {
  const BookingProblemSection({super.key});

  @override
  State<BookingProblemSection> createState() => _BookingProblemSectionState();
}

class _BookingProblemSectionState extends State<BookingProblemSection> {
  late final TextEditingController _problemController;

  @override
  void initState() {
    super.initState();
    final state = context.read<ServiceBookingBloc>().state;
    _problemController = TextEditingController(text: state.problemDescription);
  }

  @override
  void dispose() {
    _problemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocListener<ServiceBookingBloc, ServiceBookingState>(
      listenWhen: (prev, curr) =>
          prev.problemDescription != curr.problemDescription,
      listener: (context, state) {
        if (_problemController.text != state.problemDescription) {
          _problemController.text = state.problemDescription;
        }
      },
      child: Builder(
        builder: (context) {
          final bloc = context.read<ServiceBookingBloc>();

          return AppTextField(
            hint: context.l10n.service_booking_problem_hint,
            controller: _problemController,
            maxLines: 3,
            onChanged: (val) =>
                bloc.add(ServiceBookingFormChanged(problemDescription: val)),
          );
        },
      ),
    );
}
