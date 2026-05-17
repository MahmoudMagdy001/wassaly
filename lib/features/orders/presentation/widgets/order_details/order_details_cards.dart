import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/orders/domain/entities/order_entity.dart';
import 'package:wassaly/features/orders/domain/entities/order_item_entity.dart';

class OrderHeaderCard extends StatelessWidget {
  final OrderEntity order;
  final bool isCancelled;

  const OrderHeaderCard({super.key, required this.order, required this.isCancelled});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    final isAr = context.isArabic;

    return AppCard(
      showShadow: true,
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isAr ? 'رقم الطلب' : 'Order Number',
                    style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
                  ),
                  4.kH,
                  Text(
                    '#${order.orderNumber}',
                    style: tt.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: cs.onSurface,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: isCancelled
                      ? Colors.red.withValues(alpha: 0.1)
                      : cs.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  order.status,
                  style: tt.bodyMedium?.copyWith(
                    color: isCancelled ? Colors.red : cs.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          12.kH,
          const AppDivider(),
          12.kH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHeaderInfoItem(
                context,
                icon: Icons.calendar_today_rounded,
                label: isAr ? 'التاريخ والوقت' : 'Date & Time',
                value: order.createdAt,
              ),
              _buildHeaderInfoItem(
                context,
                icon: Icons.payment_rounded,
                label: isAr ? 'طريقة الدفع' : 'Payment Method',
                value: order.paymentMethod.toLowerCase().contains('cash') ||
                        order.paymentMethod.contains('كاش')
                    ? (isAr ? 'كاش عند الاستلام' : 'Cash on Delivery')
                    : order.paymentMethod,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderInfoItem(BuildContext context,
      {required IconData icon, required String label, required String value}) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18.r, color: cs.primary),
          8.kW,
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
                4.kH,
                Text(
                  value,
                  style: tt.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: cs.onSurface,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderCancelledAlert extends StatelessWidget {
  const OrderCancelledAlert({super.key});

  @override
  Widget build(BuildContext context) {
    final isAr = context.isArabic;
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Colors.red.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.red.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Icon(Icons.cancel_outlined, color: Colors.red, size: 24.r),
          12.kW,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isAr ? 'تم إلغاء هذا الطلب' : 'This order has been cancelled',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp,
                  ),
                ),
                2.kH,
                Text(
                  isAr
                      ? 'تم إلغاء طلبك. يرجى التواصل مع الدعم الفني لمزيد من التفاصيل.'
                      : 'Your order was cancelled. Please contact support for more details.',
                  style: TextStyle(
                    color: Colors.red.withValues(alpha: 0.8),
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderDeliveryInfoCard extends StatelessWidget {
  final OrderEntity order;

  const OrderDeliveryInfoCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final isAr = context.isArabic;

    // Delivery fields from OrderEntity
    final customerName = order.customerName ?? '';
    final customerPhone = order.customerPhone ?? '';
    final deliveryAddress = order.deliveryAddress ?? '';
    final governorate = order.governorateName ?? '';
    final center = order.centerName ?? '';

    final fullAddressPath = '$deliveryAddress - $center - $governorate';

    return AppCard(
      showShadow: true,
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          _buildInfoRow(
            context,
            icon: Icons.person_outline_rounded,
            title: isAr ? 'اسم العميل' : 'Customer Name',
            content: customerName,
          ),
          12.kH,
          const AppDivider(),
          12.kH,
          _buildInfoRow(
            context,
            icon: Icons.phone_android_rounded,
            title: isAr ? 'رقم الهاتف' : 'Phone Number',
            content: customerPhone,
          ),
          12.kH,
          const AppDivider(),
          12.kH,
          _buildInfoRow(
            context,
            icon: Icons.location_on_outlined,
            title: isAr ? 'عنوان التوصيل' : 'Delivery Address',
            content: fullAddressPath,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context,
      {required IconData icon, required String title, required String content}) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8.r),
          decoration: BoxDecoration(
            color: cs.primary.withValues(alpha: 0.08),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 20.r, color: cs.primary),
        ),
        12.kW,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: tt.bodySmall?.copyWith(
                  color: cs.onSurfaceVariant,
                  fontWeight: FontWeight.w500,
                ),
              ),
              4.kH,
              Text(
                content.isNotEmpty ? content : '---',
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

class OrderItemsCard extends StatelessWidget {
  final List<OrderItemEntity> items;

  const OrderItemsCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    final isAr = context.isArabic;

    return AppCard(
      showShadow: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        separatorBuilder: (context, index) => const AppDivider(),
        itemBuilder: (context, index) {
          final item = items[index];
          final product = item.product;

          final productName =
              product?.name ?? (isAr ? 'منتج غير معروف' : 'Unknown Product');
          final productImage = product?.image ?? '';
          final quantity = item.quantity;
          final unitPrice = item.price;
          final totalItemPrice = item.totalPrice;

          return Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Row(
              children: [
                // Product Image
                Container(
                  width: 64.w,
                  height: 64.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                        color: cs.outlineVariant.withValues(alpha: 0.5)),
                  ),
                  child: AppCachedImage(
                    imageUrl: productImage,
                    borderRadius: BorderRadius.circular(8.r),
                    fit: BoxFit.cover,
                  ),
                ),
                12.kW,
                // Product Name, quantity and Price
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: tt.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: cs.onSurface,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      8.kH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$quantity x $unitPrice ${context.l10n.common_currency}',
                            style: tt.bodySmall?.copyWith(
                              color: cs.onSurfaceVariant,
                            ),
                          ),
                          Text(
                            '$totalItemPrice ${context.l10n.common_currency}',
                            style: tt.titleSmall?.copyWith(
                              color: cs.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class OrderReceiptSummaryCard extends StatelessWidget {
  final OrderEntity order;

  const OrderReceiptSummaryCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    final isAr = context.isArabic;

    final subTotal = order.subTotal ?? (order.totalPrice - order.deliveryFees);
    final deliveryFees = order.deliveryFees;
    final discount = order.discountAmount ?? 0.0;
    final totalPrice = order.totalPrice;

    return AppCard(
      showShadow: true,
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          _buildReceiptRow(
            context,
            label: isAr ? 'المجموع الفرعي' : 'Subtotal',
            value: '$subTotal ${context.l10n.common_currency}',
          ),
          8.kH,
          _buildReceiptRow(
            context,
            label: isAr ? 'مصاريف التوصيل' : 'Delivery Fees',
            value: '$deliveryFees ${context.l10n.common_currency}',
          ),
          if (discount > 0) ...[
            8.kH,
            _buildReceiptRow(
              context,
              label: isAr ? 'قيمة الخصم' : 'Discount',
              value: '-$discount ${context.l10n.common_currency}',
              valueColor: Colors.green,
            ),
          ],
          12.kH,
          const AppDivider(),
          12.kH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                isAr ? 'الإجمالي الكلي' : 'Total Price',
                style: tt.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: cs.onSurface,
                ),
              ),
              Text(
                '$totalPrice ${context.l10n.common_currency}',
                style: tt.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: cs.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReceiptRow(BuildContext context,
      {required String label, required String value, Color? valueColor}) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
        ),
        Text(
          value,
          style: tt.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: valueColor ?? cs.onSurface,
          ),
        ),
      ],
    );
  }
}
