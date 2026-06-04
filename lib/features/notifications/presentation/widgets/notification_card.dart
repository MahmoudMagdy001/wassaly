import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';

class NotificationCard extends StatelessWidget {
  final NotificationEntity notification;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;

  const NotificationCard({
    required this.notification, super.key,
    this.onTap,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Dismissible(
        key: ValueKey(notification.id),
        direction: DismissDirection.endToStart,
        onDismissed: (_) => onDelete?.call(),
        confirmDismiss: (_) async => context.showAppDialog<bool>(
            builder: (ctx) => _DeleteConfirmDialog(context: ctx),
          ),
        background: _buildDismissBackground(context, cs),
        child: AppCard(
          showShadow: true,
          onTap: onTap,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: EdgeInsets.all(12.r),
          color: notification.isRead
              ? cs.surface
              : cs.primary.withValues(alpha: 0.05),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildIcon(cs),
              12.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            notification.title,
                            style: tt.bodyLarge?.copyWith(
                              fontWeight: notification.isRead
                                  ? FontWeight.w500
                                  : FontWeight.bold,
                              color: notification.isRead
                                  ? cs.onSurface
                                  : cs.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      notification.createdAt.timeAgo(context),
                      style: tt.labelSmall?.copyWith(
                        color: notification.isRead ? cs.outline : cs.primary,
                        fontWeight: notification.isRead
                            ? FontWeight.normal
                            : FontWeight.w600,
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      notification.body,
                      style: tt.bodyMedium?.copyWith(
                        color: notification.isRead
                            ? cs.onSurfaceVariant
                            : cs.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDismissBackground(BuildContext context, ColorScheme cs) => Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: cs.error,
        borderRadius: BorderRadius.circular(16.r),
      ),
      // FIX: was centerLeft — swipe is endToStart so icon must be on the right
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 20.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.delete_outline_rounded, color: cs.onError, size: 28.r),
          12.horizontalSpace,
          Text(
            context.l10n.shared_delete,
            style: TextStyle(
              color: cs.onError,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

  // FIX: made static + accepts only ColorScheme — no closure over BuildContext
  Widget _buildIcon(ColorScheme cs) {
    final IconData iconData;
    final Color iconColor;

    switch (notification.type) {
      case 'new_offer':
      case 'cart_offer_discount':
      case 'favorite_offer_discount':
        iconData = Icons.local_offer_outlined;
        iconColor = Colors.orange;
      case 'general':
        iconData = Icons.info_outline;
        iconColor = Colors.blue;
      case 'order_status_updated':
        iconData = Icons.shopping_bag_outlined;
        iconColor = Colors.blue;
      case 'booking_accepted':
      case 'booking_reschedule_proposed':
        iconData = Icons.calendar_today_outlined;
        iconColor = Colors.green;
      default:
        iconData = Icons.notifications_outlined;
        iconColor = cs.primary;
    }

    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: iconColor.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(iconData, color: iconColor, size: 24.r),
    );
  }
}

/// Reusable delete-confirm dialog used by [NotificationCard] confirmDismiss.
class _DeleteConfirmDialog extends StatelessWidget {
  final BuildContext context;

  const _DeleteConfirmDialog({required this.context});

  @override
  Widget build(BuildContext _) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.delete_outline, size: 48.r, color: cs.error),
            16.verticalSpace,
            Text(
              context.l10n.notification_remove_title,
              style: tt.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: cs.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            8.verticalSpace,
            Text(
              context.l10n.notification_remove_confirm,
              style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
              textAlign: TextAlign.center,
            ),
            24.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    label: context.l10n.shared_cancel,
                    variant: ButtonVariant.ghost,
                    onPressed: () => Navigator.of(context).pop(false),
                  ),
                ),
                12.horizontalSpace,
                Expanded(
                  child: AppButton(
                    label: context.l10n.shared_delete,
                    variant: ButtonVariant.danger,
                    isFullWidth: true,
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
