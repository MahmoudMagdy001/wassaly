import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';
import 'package:wassaly/features/cart/presentation/bloc/checkout/checkout_bloc.dart';
import 'package:wassaly/features/cart/presentation/widgets/checkout_coupon_section.dart';
import 'package:wassaly/features/cart/presentation/widgets/checkout_form_section.dart';
import 'package:wassaly/features/cart/presentation/widgets/checkout_order_summary_section.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Scaffold(
      backgroundColor: cs.surface,
      appBar: AppBar(
        title: Text(
          'checkout.title'.tr(),
          style: tt.titleLarge?.copyWith(color: cs.primary),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: cs.surface,
      ),
      body: BlocConsumer<CheckoutBloc, CheckoutState>(
        listenWhen: (prev, curr) =>
            prev.status != curr.status ||
            (prev.errorMessage != curr.errorMessage &&
                curr.errorMessage != null),
        listener: (context, state) {
          if (state.status == CheckoutStatus.success) {
            // Refresh cart items after successful order
            context.read<CartBloc>().add(const LoadCartItemsEvent());

            // Navigate to order confirmation — pop back to cart for now
            // Replace with actual order confirmation route when available
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('checkout.order_success'.tr()),
                backgroundColor: cs.primary,
              ),
            );
          } else if (state.status == CheckoutStatus.error &&
              state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage!),
                backgroundColor: cs.error,
              ),
            );
          }
        },
        builder: (context, state) {
          // Show full-screen loading while loading governorates initially
          if (state.status == CheckoutStatus.loading &&
              state.governorates.isEmpty) {
            return const Center(child: AppLoading());
          }

          // Show error if governorates failed to load
          if (state.status == CheckoutStatus.error &&
              state.governorates.isEmpty) {
            return Center(
              child: AppErrorWidget(
                title: 'errors.error_occurred_title'.tr(),
                message:
                    state.errorMessage ?? 'errors.error_occurred_message'.tr(),
                onRetry: () {
                  final cartState = context.read<CheckoutBloc>().state;
                  context.read<CheckoutBloc>().add(
                        CheckoutInitialized(cartState: cartState as CartState),
                      );
                },
              ),
            );
          }

          final isSubmitting = state.status == CheckoutStatus.submitting;

          return Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 120.h),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        // ─── Shipping Address Form ────────────────────────────
                        AppCard(
                          title: 'checkout.shipping_address'.tr(),
                          child: const CheckoutFormSection(),
                        ),
                        16.verticalSpace,

                        // ─── Coupon Section ───────────────────────────────────
                        AppCard(
                          title: 'checkout.coupon_code'.tr(),
                          child: const CheckoutCouponSection(),
                        ),
                        16.verticalSpace,

                        // ─── Order Summary ────────────────────────────────────
                        AppCard(
                          title: 'checkout.order_summary'.tr(),
                          child: const CheckoutOrderSummarySection(),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),

              // ─── Submit Button (pinned at bottom) ─────────────────────────
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w,
                      24.h + MediaQuery.of(context).padding.bottom),
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
                  child: AppButton(
                    label: 'checkout.complete_order'.tr(),
                    isFullWidth: true,
                    height: ButtonSize.large,
                    isLoading: isSubmitting,
                    onPressed: (!state.isFormValid || isSubmitting)
                        ? null
                        : () => context
                            .read<CheckoutBloc>()
                            .add(const CheckoutSubmitted()),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
