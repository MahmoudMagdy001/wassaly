import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/order_entity.dart';
import 'order_status_badge.dart';

class OrderItemWidget extends StatelessWidget {
  final OrderEntity? order;
  final VoidCallback? onTap;

  const OrderItemWidget({
    super.key,
    this.order,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return AppCard(
      onTap: onTap,
      showShadow: true,
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                order != null ? '#${order!.orderNumber}' : '#123456789',
                style: tt.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: cs.primary,
                ),
              ),
              if (order != null)
                OrderStatusBadge(status: order!.status)
              else
                const Bone.button(width: 80, height: 24),
            ],
          ),
          12.verticalSpace,
          Row(
            children: [
              Icon(Icons.calendar_today_outlined, size: 16.w, color: cs.onSurfaceVariant),
              8.horizontalSpace,
              Text(
                order != null
                    ? order!.createdAt.toLocal().toString().split(' ').first
                    : '2024-01-01',
                style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
              ),
              16.horizontalSpace,
              Icon(Icons.payments_outlined, size: 16.w, color: cs.onSurfaceVariant),
              8.horizontalSpace,
              Text(
                order != null
                    ? '${order!.totalPrice} ${'shared.currency_egp'.tr()}'
                    : '1000.00 ${'shared.currency_egp'.tr()}',
                style: tt.bodySmall?.copyWith(
                  color: cs.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          12.verticalSpace,
          Divider(height: 1, color: cs.outlineVariant),
          12.verticalSpace,
          Row(
            children: [
              Text(
                order != null
                    ? 'cart.items'.plural(order!.items.length, args: [order!.items.length.toString()])
                    : 'cart.items'.plural(3, args: ['3']),
                style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
              ),
              const Spacer(),
              Icon(Icons.chevron_right, color: cs.onSurfaceVariant),
            ],
          ),
        ],
      ),
    );
  }
}

