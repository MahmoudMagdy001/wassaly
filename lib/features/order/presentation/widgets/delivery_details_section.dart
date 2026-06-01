import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/order_entity.dart';

class DeliveryDetailsSection extends StatelessWidget {
  final OrderEntity order;
  const DeliveryDetailsSection({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return AppCard(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'order.delivery_details'.tr(),
            style: tt.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: cs.onSurface,
            ),
          ),
          12.verticalSpace,
          if (order.customerName != null) ...[
            _DetailRow(icon: Icons.person_outline, label: 'order.customer_name'.tr(), value: order.customerName!),
            12.verticalSpace,
          ],
          if (order.customerPhone != null) ...[
            _DetailRow(icon: Icons.phone_outlined, label: 'order.customer_phone'.tr(), value: order.customerPhone!),
            12.verticalSpace,
          ],
          _DetailRow(
            icon: Icons.location_on_outlined,
            label: 'order.delivery_address'.tr(),
            value: [
              order.governorateName,
              order.centerName,
              order.deliveryAddress,
            ].where((e) => e != null && e.isNotEmpty).join(', '),
          ),
          12.verticalSpace,
          _DetailRow(icon: Icons.payments_outlined, label: 'order.payment_method'.tr(), value: order.paymentMethod.tr()),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailRow({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20.w, color: cs.primary),
        12.horizontalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: tt.labelSmall?.copyWith(color: cs.onSurfaceVariant)),
              Text(value, style: tt.bodyMedium?.copyWith(color: cs.onSurface)),
            ],
          ),
        ),
      ],
    );
  }
}
