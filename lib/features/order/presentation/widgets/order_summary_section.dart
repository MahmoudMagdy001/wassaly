import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/order_entity.dart';

class OrderSummarySection extends StatelessWidget {
  final OrderEntity order;
  const OrderSummarySection({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return AppCard(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          _SummaryRow(label: 'cart.subtotal'.tr(), value: '${order.subTotal} ${'shared.currency_egp'.tr()}'),
          8.verticalSpace,
          _SummaryRow(label: 'cart.delivery'.tr(), value: '${order.deliveryFees} ${'shared.currency_egp'.tr()}'),
          if (order.discountAmount > 0) ...[
            8.verticalSpace,
            _SummaryRow(
              label: 'cart.discount'.tr(),
              value: '-${order.discountAmount} ${'shared.currency_egp'.tr()}',
              valueColor: Colors.green,
            ),
          ],
          12.verticalSpace,
          const Divider(),
          12.verticalSpace,
          _SummaryRow(
            label: 'cart.total'.tr(),
            value: '${order.totalPrice} ${'shared.currency_egp'.tr()}',
            isBold: true,
          ),
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;
  final Color? valueColor;

  const _SummaryRow({required this.label, required this.value, this.isBold = false, this.valueColor});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    final style = isBold
        ? tt.bodyLarge?.copyWith(fontWeight: FontWeight.bold, color: cs.onSurface)
        : tt.bodyMedium?.copyWith(color: cs.onSurface);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: style),
        Text(value, style: style?.copyWith(color: valueColor ?? cs.onSurface)),
      ],
    );
  }
}
