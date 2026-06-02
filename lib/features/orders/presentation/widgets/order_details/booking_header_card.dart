import 'package:wassaly/core/imports/imports.dart';
import '../../../../service_booking/domain/entities/booking_entity.dart';

class BookingHeaderCard extends StatelessWidget {
  final BookingEntity booking;
  final bool isCancelled;

  const BookingHeaderCard({
    super.key,
    required this.booking,
    required this.isCancelled,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    return AppCard(
      showShadow: true,
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.booking_details_title,
                style: tt.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: cs.onSurface,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: isCancelled
                      ? Colors.red.withValues(alpha: 0.1)
                      : cs.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  _getStatusText(context, booking.status),
                  style: tt.bodyMedium?.copyWith(
                    color: isCancelled ? Colors.red : cs.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          12.verticalSpace,
          const AppDivider(),
          12.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHeaderInfoItem(
                context,
                icon: Icons.calendar_today_rounded,
                label: context.l10n.service_booking_day,
                value: booking.day,
              ),
              _buildHeaderInfoItem(
                context,
                icon: Icons.access_time_rounded,
                label: context.l10n.service_booking_time,
                value: booking.time.to12HourFormat(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getStatusText(BuildContext context, String status) {
    final norm = status.trim().toLowerCase();
    if (norm.contains('pending') ||
        norm.contains('waiting') ||
        norm.contains('قيد الانتظار')) {
      return context.l10n.order_status_pending;
    } else if (norm.contains('accepted') || norm.contains('تم القبول')) {
      return context.l10n.order_status_accepted;
    } else if (norm.contains('confirmed') || norm.contains('مؤكد')) {
      return context.l10n.order_status_confirmed;
    } else if (norm.contains('completed') || norm.contains('مكتمل')) {
      return context.l10n.order_status_completed;
    } else if (norm.contains('cancelled') || norm.contains('ملغي')) {
      return context.l10n.order_status_cancelled;
    } else if (norm.contains('reschedule')) {
      return context.l10n.order_status_reschedule;
    }
    return status;
  }

  Widget _buildHeaderInfoItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18.r, color: cs.primary),
          8.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: tt.bodySmall?.copyWith(
                    color: cs.onSurfaceVariant,
                    fontSize: 10.sp,
                  ),
                ),
                4.verticalSpace,
                Text(
                  value,
                  style: tt.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: cs.onSurface,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
