import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/cart/presentation/bloc/checkout/checkout_bloc.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Container(
      padding: EdgeInsets.fromLTRB(
        16.w,
        12.h,
        16.w,
        context.bottomPadding + 12.h,
      ),
      decoration: BoxDecoration(
        color: cs.surface,
        boxShadow: [
          BoxShadow(
            color: cs.shadow.withValues(alpha: 0.08),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: BlocSelector<CheckoutBloc, CheckoutState, (bool, bool)>(
        selector: (state) => (
          state.isFormValid,
          state.status == CheckoutStatus.submitting,
        ),
        builder: (context, data) {
          final (isFormValid, isSubmitting) = data;

          return AppButton(
            label: context.l10n.checkout_complete_order,
            isFullWidth: true,
            height: ButtonSize.large,
            isLoading: isSubmitting,
            onPressed: (!isFormValid || isSubmitting)
                ? null
                : () => context
                    .read<CheckoutBloc>()
                    .add(const CheckoutSubmitted()),
          );
        },
      ),
    );
  }
}
