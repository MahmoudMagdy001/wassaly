import 'package:wassaly/core/imports/imports.dart';
import '../bloc/order_bloc.dart';
import '../widgets/order_item_widget.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyOrdersView();
  }
}

class MyOrdersView extends StatefulWidget {
  const MyOrdersView({super.key});

  @override
  State<MyOrdersView> createState() => _MyOrdersViewState();
}

class _MyOrdersViewState extends State<MyOrdersView> {
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = Debouncer(delay: 500.milliseconds);

  @override
  void dispose() {
    _searchController.dispose();
    _debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Scaffold(
      backgroundColor: cs.surface,
      appBar: AppTopBar(
        title: 'profile.my_orders'.tr(),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 16.h),
            child: AppTextField(
              controller: _searchController,
              hint: 'order.search_hint'.tr(),
              prefixIcon: const Icon(Icons.search),
              suffixIcon: _searchController.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        _searchController.clear();
                        context.read<OrderBloc>().add(const OrdersFetched());
                        setState(() {});
                      },
                    )
                  : null,
              onChanged: (value) {
                setState(() {}); // Update suffix icon visibility
                _debouncer.run(() {
                  context.read<OrderBloc>().add(OrdersSearched(value));
                });
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                final isLoading = state.status == AppStatus.loading;

                if (isLoading && state.orders.isEmpty) {
                  return Skeletonizer(
                    enabled: true,
                    child: ListView.separated(
                      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
                      itemCount: 5,
                      separatorBuilder: (context, index) => 16.verticalSpace,
                      itemBuilder: (context, index) => const OrderItemWidget(
                        order: null, // I'll update OrderItemWidget to handle null order for skeleton
                      ),
                    ),
                  );
                }

                if (state.status == AppStatus.failure && state.orders.isEmpty) {
                  return AppErrorWidget(
                    title: 'errors.no_internet'.tr(),
                    onRetry: () => context.read<OrderBloc>().add(const OrdersFetched()),
                    icon: Icons.wifi_off_rounded,
                  );
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<OrderBloc>().add(const OrdersFetched());
                  },
                  child: state.orders.isEmpty
                      ? ListView(
                          children: [
                            SizedBox(height: 0.25.sh),
                            Center(
                              child: Column(
                                children: [
                                  Icon(Icons.inventory_2_outlined, size: 64.w, color: cs.onSurfaceVariant),
                                  16.verticalSpace,
                                  Text(
                                    _searchController.text.isEmpty
                                        ? 'profile.orders_count.zero'.tr()
                                        : 'search.no_results_found'.tr(),
                                    style: tt.titleMedium?.copyWith(
                                      color: cs.onSurfaceVariant,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Stack(
                          children: [
                            ListView.separated(
                              padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
                              itemCount: state.orders.length,
                              separatorBuilder: (context, index) => 16.verticalSpace,
                              itemBuilder: (context, index) {
                                final order = state.orders[index];
                                return OrderItemWidget(
                                  order: order,
                                  onTap: () => context.push(
                                    AppRoutes.orderDetails,
                                    extra: {'orderId': order.id},
                                  ),
                                );
                              },
                            ),
                            if (isLoading)
                              const Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                child: LinearProgressIndicator(),
                              ),
                          ],
                        ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
