import 'package:wassaly/core/imports/imports.dart';

import '../bloc/orders_bloc.dart';
import '../bloc/orders_event.dart';
import '../bloc/orders_state.dart';
import '../widgets/order_card.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<OrdersBloc>().add(const LoadMoreOrdersEvent());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OrdersBloc>()..add(const GetOrdersEvent()),
      child: Scaffold(
        appBar: AppTopBar(
          title: 'profile.my_orders'.tr(),
        ),
        body: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            if (state.status == OrdersStatus.loading &&
                state.orders.data.isEmpty) {
              return const Center(child: AppLoading());
            }

            if (state.status == OrdersStatus.failure &&
                state.orders.data.isEmpty) {
              return Center(
                child: AppErrorWidget(
                  title: 'errors.error_occurred_title'.tr(),
                  message: state.errorMessage.isNotEmpty
                      ? state.errorMessage
                      : 'errors.error_occurred_message'.tr(),
                  onRetry: () =>
                      context.read<OrdersBloc>().add(const GetOrdersEvent()),
                ),
              );
            }

            if (state.orders.data.isEmpty) {
              return AppEmptyState(
                title: 'order.no_orders_title'.tr(),
                subtitle: 'order.no_orders_msg'.tr(),
              );
            }

            return RefreshIndicator(
              onRefresh: () async {
                context.read<OrdersBloc>().add(const GetOrdersEvent());
              },
              child: ListView.builder(
                controller: _scrollController,
                padding: EdgeInsets.all(16.r),
                itemCount: state.orders.hasMore
                    ? state.orders.data.length + 1
                    : state.orders.data.length,
                itemBuilder: (context, index) {
                  if (index >= state.orders.data.length) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: AppLoading(),
                      ),
                    );
                  }

                  final order = state.orders.data[index];
                  return OrderCard(order: order);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
