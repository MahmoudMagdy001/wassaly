import 'package:wassaly/core/imports/imports.dart';

import '../../domain/entities/order_entity.dart';

class OrderCard extends StatelessWidget {
  final OrderEntity order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return AppCard(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '#${order.orderNumber}',
                style: tt.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildStatusBadge(context, order.status),
            ],
          ),
          12.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.order_total_price,
                style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
              ),
              Text(
                '${order.totalPrice} ${context.l10n.common_currency}',
                style: tt.titleSmall?.copyWith(
                  color: cs.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          8.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.order_items_count,
                style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
              ),
              Text(
                '${order.items.length}',
                style: tt.bodyMedium,
              ),
            ],
          ),
          8.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.order_date,
                style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
              ),
              Text(
                order.createdAt,
                style: tt.bodySmall,
              ),
            ],
          ),
          12.verticalSpace,
          const AppDivider(),
          12.verticalSpace,
          Text(
            context.l10n.order_payment_method,
            style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
          ),
          4.verticalSpace,
          Text(
            order.paymentMethod,
            style: tt.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(BuildContext context, String status) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    Color color;
    switch (status.toLowerCase()) {
      case 'pending':
        color = Colors.orange;
        break;
      case 'completed':
        color = Colors.green;
        break;
      case 'cancelled':
        color = Colors.red;
        break;
      default:
        color = cs.outline;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: color, width: 1),
      ),
      child: Text(
        status,
        style: tt.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
