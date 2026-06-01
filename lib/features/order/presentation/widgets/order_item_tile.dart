import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/order_entity.dart';

class OrderItemTile extends StatelessWidget {
  final OrderItemEntity item;
  const OrderItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Container(
            width: 60.w,
            height: 60.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: cs.surfaceContainerHighest,
            ),
            child: item.productImage != null
                ? CachedNetworkImage(
                    imageUrl: item.productImage!,
                    errorWidget: (context, url, error) => Icon(Icons.image_outlined, color: cs.onSurfaceVariant),
                  )
                : Icon(Icons.image_outlined, color: cs.onSurfaceVariant),
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.productName ?? 'shared.unknown_product'.tr(),
                  style: tt.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: cs.onSurface,
                  ),
                ),
                4.verticalSpace,
                Text(
                  '${item.quantity} x ${item.price} ${'shared.currency_egp'.tr()}',
                  style: tt.bodySmall?.copyWith(color: cs.onSurfaceVariant),
                ),
              ],
            ),
          ),
          Text(
            '${item.totalPrice} ${'shared.currency_egp'.tr()}',
            style: tt.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: cs.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
