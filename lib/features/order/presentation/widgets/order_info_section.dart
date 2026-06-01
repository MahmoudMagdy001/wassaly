import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/order_entity.dart';
import 'order_status_badge.dart';

class OrderInfoSection extends StatelessWidget {
  final OrderEntity order;
  const OrderInfoSection({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return AppCard(
      padding: EdgeInsets.all(16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#${order.orderNumber}',
                style: tt.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: cs.onSurface,
                ),
              ),
              4.verticalSpace,
              Text(
                order.createdAt.toLocal().toString().split('.').first,
                style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
              ),
            ],
          ),
          OrderStatusBadge(status: order.status),
        ],
      ),
    );
  }
}
