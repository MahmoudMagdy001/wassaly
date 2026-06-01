import 'package:wassaly/core/imports/imports.dart';
import '../../../../order/presentation/bloc/order_bloc.dart';

class ProfileStatsCard extends StatelessWidget {
  const ProfileStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          final count = state.orders.length;
          
          return AppCard(
            showShadow: true,
            onTap: () => context.push(AppRoutes.myOrders),
            leading: Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                color: cs.primaryContainer.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                Icons.inventory_2_outlined,
                color: cs.primary,
              ),
            ),
            title: 'profile.my_orders'.tr(),
            subtitle: 'profile.orders_count'.plural(count, args: [count.toString()]),
            trailing: Icon(
              Icons.chevron_right,
              color: cs.onSurfaceVariant,
            ),
            child: const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
