import 'package:wassaly/core/imports/imports.dart';
import '../widgets/order_success_header.dart';
import '../widgets/order_delivery_details_card.dart';

class OrderSuccessPage extends StatelessWidget {
  final String orderNumber;
  final String paymentMethod;
  final String deliveryAddress;

  const OrderSuccessPage({
    super.key,
    required this.orderNumber,
    required this.paymentMethod,
    required this.deliveryAddress,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                40.verticalSpace,
                OrderSuccessHeader(orderNumber: orderNumber),
                40.verticalSpace,
                OrderDeliveryDetailsCard(
                  paymentMethod: paymentMethod,
                  deliveryAddress: deliveryAddress,
                ),
                24.verticalSpace,
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () => context.go(AppRoutes.myOrders),
                    style: FilledButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                    ),
                    child: Text(
                      'profile.my_orders'.tr(),
                      style: tt.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.onPrimary,
                      ),
                    ),
                  ),
                ),
                16.verticalSpace,
                // Back to Home Button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => context.go(AppRoutes.home),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      side: BorderSide(color: cs.primary),
                    ),
                    child: Text(
                      'order.back_to_home'.tr(),
                      style: tt.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.primary,
                      ),
                    ),
                  ),
                ),
                24.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
