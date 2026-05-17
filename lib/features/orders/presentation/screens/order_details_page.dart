import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/orders/presentation/bloc/order_detail/order_detail_bloc.dart';
import 'package:wassaly/features/orders/presentation/bloc/order_detail/order_detail_event.dart';
import 'package:wassaly/features/orders/presentation/bloc/order_detail/order_detail_state.dart';
import 'package:wassaly/features/orders/presentation/widgets/order_details/order_details_cards.dart';
import 'package:wassaly/features/orders/presentation/widgets/order_details/order_tracker_widget.dart';

class OrderDetailsPage extends StatefulWidget {
  final int orderId;

  const OrderDetailsPage({super.key, required this.orderId});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final tt = context.theme.textTheme;
    final isAr = context.isArabic;

    return Scaffold(
      body: BlocBuilder<OrderDetailBloc, OrderDetailState>(
        builder: (context, state) {
          if (state.status == OrderDetailStatus.loading) {
            return const Center(child: AppLoading());
          }

          if (state.status == OrderDetailStatus.failure) {
            return Center(
              child: AppErrorWidget(
                title: context.l10n.errors_error_occurred_title,
                message: state.errorMessage.isNotEmpty
                    ? state.errorMessage
                    : context.l10n.errors_error_occurred_message,
                onRetry: () => context
                    .read<OrderDetailBloc>()
                    .add(FetchOrderDetailEvent(widget.orderId)),
              ),
            );
          }

          final order = state.order;
          if (order == null) {
            return Center(
              child: Text(
                context.l10n.errors_something_went_wrong,
                style: tt.bodyLarge,
              ),
            );
          }

          final normStatus = order.status.trim().toLowerCase();
          final isCancelled = normStatus.contains('cancelled') ||
              normStatus.contains('ملغي') ||
              normStatus.contains('rejected') ||
              normStatus.contains('failed');

          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              AppSliverTopBar(
                title: isAr ? 'تفاصيل الطلب' : 'Order Details',
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    // 1. Order Status Summary Header
                    OrderHeaderCard(order: order, isCancelled: isCancelled),
                    16.kH,

                    // 2. Beautiful Cancellation Alert if cancelled
                    if (isCancelled) ...[
                      const OrderCancelledAlert(),
                      16.kH,
                    ],

                    // 3. Gorgeous Interactive Status Timeline Card
                    _buildSectionHeader(
                        context, isAr ? 'حالة الطلب' : 'Order Status'),
                    8.kH,
                    AppCard(
                      showShadow: true,
                      padding: EdgeInsets.all(16.r),
                      child: OrderTrackerWidget(status: order.status),
                    ),
                    16.kH,

                    // 4. Delivery & Customer Address Card
                    _buildSectionHeader(
                        context,
                        isAr
                            ? 'معلومات التوصيل والعميل'
                            : 'Delivery & Customer Info'),
                    8.kH,
                    OrderDeliveryInfoCard(order: order),
                    16.kH,

                    // 5. Order Items / Products Card
                    _buildSectionHeader(context,
                        isAr ? 'المنتجات المطلوبة' : 'Ordered Products'),
                    8.kH,
                    OrderItemsCard(items: order.items),
                    16.kH,

                    // 6. Detailed Receipt/Payment Card
                    _buildSectionHeader(
                        context, isAr ? 'ملخص الدفع' : 'Payment Summary'),
                    8.kH,
                    OrderReceiptSummaryCard(order: order),
                    24.kH,
                  ]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    final tt = context.theme.textTheme;
    final cs = context.theme.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Text(
        title,
        style: tt.titleMedium?.copyWith(
          color: cs.onSurface,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
