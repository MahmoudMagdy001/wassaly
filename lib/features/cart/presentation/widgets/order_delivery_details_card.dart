import 'package:wassaly/core/imports/imports.dart';
import 'order_detail_row.dart';

class OrderDeliveryDetailsCard extends StatelessWidget {
  final String paymentMethod;
  final String deliveryAddress;

  const OrderDeliveryDetailsCard({
    super.key,
    required this.paymentMethod,
    required this.deliveryAddress,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: cs.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'order.delivery_details'.tr(),
            style: tt.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          16.verticalSpace,
          OrderDetailRow(
            icon: Icons.payments_outlined,
            label: 'order.payment_method'.tr(),
            value: paymentMethod,
          ),
          16.verticalSpace,
          OrderDetailRow(
            icon: Icons.location_on_outlined,
            label: 'order.delivery_address'.tr(),
            value: deliveryAddress,
          ),
        ],
      ),
    );
  }
}
