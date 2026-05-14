import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';

class BookingCard extends StatelessWidget {
  final BookingEntity booking;

  const BookingCard({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return AppCard(
      showShadow: true,
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.all(12.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50.w,
                height: 50.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: cs.primaryContainer,
                ),
                child: CommonImage(
                  imageUrl: booking.service.image ?? '',
                  width: 50.w,
                  height: 50.w,
                  memCacheHeight: 50 * 2,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      booking.service.name,
                      style: tt.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      booking.provider.name,
                      style: tt.bodySmall?.copyWith(
                        color: cs.outline,
                      ),
                    ),
                  ],
                ),
              ),
              _StatusBadge(status: booking.status),
            ],
          ),
          Divider(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _InfoItem(
                icon: Icons.calendar_today_outlined,
                label: booking.day,
              ),
              _InfoItem(
                icon: Icons.access_time,
                label: booking.time,
              ),
              Text(
                '${booking.service.price} ${context.l10n.shared_currency_egp}',
                style: tt.titleMedium?.copyWith(
                  color: cs.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String status;

  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    Color color;
    String label;

    switch (status.toLowerCase()) {
      case 'pending':
        color = Colors.orange;
        label = context.l10n.order_status_pending;
        break;
      case 'confirmed':
      case 'completed':
        color = Colors.green;
        label = context.l10n.order_status_completed;
        break;
      case 'cancelled':
        color = Colors.red;
        label = context.l10n.order_status_cancelled;
        break;
      default:
        color = cs.primary;
        label = status;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4.r),
        // border: Border.all(color: color.withValues(alpha: 0.5)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 10.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Row(
      children: [
        Icon(icon, size: 14.sp, color: cs.outline),
        SizedBox(width: 4.w),
        Text(
          label,
          style: tt.bodySmall,
        ),
      ],
    );
  }
}
