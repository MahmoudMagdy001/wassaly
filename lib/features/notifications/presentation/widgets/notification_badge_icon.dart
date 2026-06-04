import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_bloc.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_state.dart';

class AppNotificationBadgeIcon extends StatelessWidget {
  const AppNotificationBadgeIcon({
    super.key,
    this.color,
    this.size,
  });

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) => BlocSelector<NotificationsBloc, NotificationsState, int>(
      selector: (state) => state.unreadCount,
      builder: (context, unreadCount) => Badge(
        label: unreadCount > 0
            ? Text(
                unreadCount > 99 ? '99+' : unreadCount.toString(),
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colors.onError,
                  fontWeight: FontWeight.bold,
                  fontSize: 8.sp,
                ),
              )
            : null,
        isLabelVisible: unreadCount > 0,
        backgroundColor: context.colors.error,
        child: IconButton(
          onPressed: () => context.push(AppRoutes.notifications),
          icon: Icon(
            Icons.notifications_none_rounded,
            color: color ?? context.colors.primary,
            size: size ?? 28.r,
          ),
        ),
      ),
    );
}
