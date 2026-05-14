import 'package:wassaly/core/imports/imports.dart';

class ProfileStatsCard extends StatelessWidget {
  const ProfileStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: AppCard(
        showShadow: true,
        onTap: () => context.push(AppRoutes.orders),
        leading: Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: cs.primaryContainer.withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(
            Icons.inventory_2_outlined,
            color: cs.primary,
          ),
        ),
        title: context.l10n.profile_my_orders,
        subtitle: 'profile.orders_count',
        trailing: Icon(
          Icons.chevron_right,
          color: cs.onSurfaceVariant,
        ),
        child: const SizedBox.shrink(),
      ),
    );
  }
}
