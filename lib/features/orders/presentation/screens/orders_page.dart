import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/orders/domain/entities/order_entity.dart';
import 'package:wassaly/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:wassaly/features/orders/presentation/bloc/orders_event.dart';
import 'package:wassaly/features/orders/presentation/bloc/orders_state.dart';
import 'package:wassaly/features/orders/presentation/widgets/booking_card.dart';
import 'package:wassaly/features/orders/presentation/widgets/order_card.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';

class OrdersPage extends StatelessWidget {
  final int initialIndex;

  const OrdersPage({super.key, this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<OrdersBloc>()
        ..add(const GetOrdersEvent())
        ..add(const GetServiceBookingsEvent()),
      child: _OrdersView(initialIndex: initialIndex),
    );
  }
}

class _OrdersView extends StatelessWidget {
  final int initialIndex;

  const _OrdersView({this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return DefaultTabController(
      length: 2,
      initialIndex: initialIndex,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              AppSliverTopBar(
                title: context.l10n.profile_my_orders,
                centerTitle: true,
                pinned: true,
                floating: true,
                snap: true,
                bottom: TabBar(
                  labelColor: cs.primary,
                  unselectedLabelColor: cs.onSurfaceVariant,
                  indicatorColor: cs.primary,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(text: context.l10n.order_products),
                    Tab(text: context.l10n.order_services),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              _ProductOrdersTab(),
              _ServiceBookingsTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductOrdersTab extends StatefulWidget {
  const _ProductOrdersTab();

  @override
  State<_ProductOrdersTab> createState() => _ProductOrdersTabState();
}

class _ProductOrdersTabState extends State<_ProductOrdersTab> {
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
    return BlocSelector<OrdersBloc, OrdersState,
        (OrdersStatus, PaginatedResponse<OrderEntity>, String)>(
      selector: (state) => (state.status, state.orders, state.errorMessage),
      builder: (context, data) {
        final (status, orders, errorMessage) = data;

        if (status == OrdersStatus.loading && orders.data.isEmpty) {
          return const Center(child: AppLoading());
        }

        if (status == OrdersStatus.failure && orders.data.isEmpty) {
          return Center(
            child: AppErrorWidget(
              title: context.l10n.errors_error_occurred_title,
              message: errorMessage.isNotEmpty
                  ? errorMessage
                  : context.l10n.errors_error_occurred_message,
              onRetry: () =>
                  context.read<OrdersBloc>().add(const GetOrdersEvent()),
            ),
          );
        }

        if (orders.data.isEmpty) {
          return AppEmptyState(
            title: context.l10n.order_no_orders_title,
            subtitle: context.l10n.order_no_orders_msg,
          );
        }

        return RefreshIndicator(
          onRefresh: () async {
            context.read<OrdersBloc>().add(const GetOrdersEvent());
          },
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.all(16.r),
                sliver: SliverList.builder(
                  itemCount:
                      orders.hasMore ? orders.data.length + 1 : orders.data.length,
                  itemBuilder: (context, index) {
                    if (index >= orders.data.length) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: AppLoading(),
                        ),
                      );
                    }

                    final order = orders.data[index];
                    return OrderCard(order: order);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ServiceBookingsTab extends StatelessWidget {
  const _ServiceBookingsTab();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OrdersBloc, OrdersState,
        (OrdersStatus, PaginatedResponse<BookingEntity>, String)>(
      selector: (state) =>
          (state.serviceStatus, state.serviceBookings, state.errorMessage),
      builder: (context, data) {
        final (serviceStatus, serviceBookings, errorMessage) = data;

        if (serviceStatus == OrdersStatus.loading &&
            serviceBookings.data.isEmpty) {
          return const Center(child: AppLoading());
        }

        if (serviceStatus == OrdersStatus.failure &&
            serviceBookings.data.isEmpty) {
          return Center(
            child: AppErrorWidget(
              title: context.l10n.errors_error_occurred_title,
              message: errorMessage.isNotEmpty
                  ? errorMessage
                  : context.l10n.errors_error_occurred_message,
              onRetry: () => context
                  .read<OrdersBloc>()
                  .add(const GetServiceBookingsEvent()),
            ),
          );
        }

        if (serviceBookings.data.isEmpty) {
          return AppEmptyState(
            title: context.l10n.order_no_orders_title,
            subtitle: context.l10n.order_no_orders_msg,
          );
        }

        return RefreshIndicator(
          onRefresh: () async {
            context.read<OrdersBloc>().add(const GetServiceBookingsEvent());
          },
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                sliver: SliverList.builder(
                  itemCount: serviceBookings.data.length,
                  itemBuilder: (context, index) {
                    final booking = serviceBookings.data[index];
                    return BookingCard(booking: booking);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
