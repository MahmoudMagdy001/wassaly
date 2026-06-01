import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/order/domain/entities/order_entity.dart' show OrderEntity, OrderItemEntity, OrderStatus;
import '../bloc/order_bloc.dart';
import '../widgets/delivery_details_section.dart';
import '../widgets/order_info_section.dart';
import '../widgets/order_item_tile.dart';
import '../widgets/order_summary_section.dart';

class OrderDetailsPage extends StatelessWidget {
  final int orderId;

  const OrderDetailsPage({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<OrderBloc>()..add(OrderDetailsFetched(orderId)),
      child: OrderDetailsView(orderId: orderId),
    );
  }
}

class OrderDetailsView extends StatelessWidget {
  final int orderId;
  const OrderDetailsView({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Scaffold(
      backgroundColor: cs.surface,
      appBar: AppTopBar(
        title: 'order.details_title'.tr(),
        actions: [
          BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              final order = state.selectedOrder;
              if (order != null && (order.status == OrderStatus.delivered || order.status == OrderStatus.cancelled)) {
                return IconButton(
                  icon: const Icon(Icons.delete_outline, color: Colors.red),
                  onPressed: () => _showDeleteDialog(context, order.id),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: BlocConsumer<OrderBloc, OrderState>(
        listener: (context, state) {
          if (state.status == AppStatus.success && state.selectedOrder == null) {
            Navigator.of(context).pop(true);
          }
        },
        builder: (context, state) {
          final isLoading = state.status == AppStatus.loading && state.selectedOrder == null;

          if (isLoading) {
            return Skeletonizer(
              enabled: true,
              child: _OrderDetailsContent(
                order: _getPlaceholderOrder(),
                onCancel: () {},
              ),
            );
          }

          if (state.status == AppStatus.failure && state.selectedOrder == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.errorMessage ?? 'errors.something_went_wrong'.tr(),
                    style: tt.bodyMedium?.copyWith(color: cs.onSurface),
                  ),
                  16.verticalSpace,
                  ElevatedButton(
                    onPressed: () => context.read<OrderBloc>().add(OrderDetailsFetched(orderId)),
                    child: Text('shared.retry'.tr()),
                  ),
                ],
              ),
            );
          }

          final order = state.selectedOrder;
          if (order == null) return const SizedBox.shrink();

          return _OrderDetailsContent(
            order: order,
            onCancel: () => _showCancelDialog(context, orderId),
          );
        },
      ),
    );
  }

  OrderEntity _getPlaceholderOrder() {
    return OrderEntity(
      id: 0,
      orderNumber: '123456789',
      status: OrderStatus.pending,
      createdAt: DateTime.now(),
      subTotal: 1000,
      deliveryFees: 50,
      discountAmount: 0,
      totalPrice: 1050,
      paymentMethod: 'cash',
      deliveryAddress: 'Main Street, Building 10, Floor 5',
      governorateName: 'Cairo',
      centerName: 'Maadi',
      customerName: 'John Doe',
      customerPhone: '01234567890',
      items: List.generate(
        3,
        (index) => const OrderItemEntity(
          productId: 0,
          productName: 'Sample Product Name',
          quantity: 1,
          price: 350,
          totalPrice: 350,
          id: 0,
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, int orderId) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          'order.delete_confirm_title'.tr(),
          style: tt.titleLarge?.copyWith(color: cs.onSurface),
        ),
        content: Text(
          'order.delete_confirm_message'.tr(),
          style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('shared.no'.tr()),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              context.read<OrderBloc>().add(OrderDeleted(orderId));
            },
            child: Text(
              'shared.yes'.tr(),
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  void _showCancelDialog(BuildContext context, int orderId) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          'order.cancel_confirm_title'.tr(),
          style: tt.titleLarge?.copyWith(color: cs.onSurface),
        ),
        content: Text(
          'order.cancel_confirm_message'.tr(),
          style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('shared.no'.tr()),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              context.read<OrderBloc>().add(OrderCancelled(orderId));
            },
            child: Text(
              'shared.yes'.tr(),
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

class _OrderDetailsContent extends StatelessWidget {
  final OrderEntity order;
  final VoidCallback onCancel;

  const _OrderDetailsContent({required this.order, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    final state = context.watch<OrderBloc>().state;
    final isActionLoading = state.status == AppStatus.loading && state.selectedOrder != null;

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderInfoSection(order: order),
                24.verticalSpace,
                Text(
                  'order.items'.tr(),
                  style: tt.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: cs.onSurface,
                  ),
                ),
                12.verticalSpace,
                ...order.items.map((item) => OrderItemTile(item: item)),
                24.verticalSpace,
                OrderSummarySection(order: order),
                24.verticalSpace,
                DeliveryDetailsSection(order: order),
                24.verticalSpace,
              ],
            ),
          ),
        ),
        if (order.status == OrderStatus.pending)
          Padding(
            padding: EdgeInsets.all(16.w),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: isActionLoading ? null : onCancel,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  side: const BorderSide(color: Colors.red),
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: isActionLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2, color: Colors.red),
                      )
                    : Text('order.cancel_order'.tr()),
              ),
            ),
          ),
      ],
    );
  }
}
