import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';

class RescheduleDetailsCard extends StatelessWidget {
  final RescheduleDetailsEntity rescheduleDetails;
  final String? bookingStatus;

  const RescheduleDetailsCard({
    required this.rescheduleDetails, super.key,
    this.bookingStatus,
  });

  @override
  Widget build(BuildContext context) {
    final tt = context.theme.textTheme;

    return AppCard(
      showShadow: true,
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.schedule_rounded, color: Colors.orange, size: 24.r),
              12.horizontalSpace,
              Expanded(
                child: Text(
                  _getRescheduleHeader(context),
                  style: tt.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade800,
                  ),
                ),
              ),
            ],
          ),
          16.verticalSpace,
          const AppDivider(),
          16.verticalSpace,
          Row(
            children: [
              Expanded(
                child: _buildInfoItem(
                  context,
                  icon: Icons.calendar_today_rounded,
                  label: context.l10n.booking_reschedule_suggested_day,
                  value: rescheduleDetails.suggestedDay,
                ),
              ),
              if (rescheduleDetails.suggestedTime != null)
                Expanded(
                  child: _buildInfoItem(
                    context,
                    icon: Icons.access_time_rounded,
                    label: context.l10n.booking_reschedule_suggested_time,
                    value: rescheduleDetails.suggestedTime!.to12HourFormat(),
                  ),
                ),
            ],
          ),
          if (rescheduleDetails.rescheduleNote != null &&
              rescheduleDetails.rescheduleNote!.isNotEmpty) ...[
            16.verticalSpace,
            const AppDivider(),
            16.verticalSpace,
            _buildInfoItem(
              context,
              icon: Icons.note_outlined,
              label: context.l10n.booking_reschedule_note,
              value: rescheduleDetails.rescheduleNote!,
            ),
          ],
        ],
      ),
    );
  }

  String _getRescheduleHeader(BuildContext context) {
    final normalizedStatus = bookingStatus?.trim().toLowerCase();
    if (normalizedStatus == 'reschedule_by_customer') {
      return context.l10n.booking_reschedule_customer_suggested;
    }
    return context.l10n.booking_reschedule_provider_suggested;
  }

  Widget _buildInfoItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    return Row(
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
