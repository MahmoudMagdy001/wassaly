import 'package:wassaly/core/imports/imports.dart';

class BookingCancelledAlert extends StatelessWidget {
  const BookingCancelledAlert({super.key});

  @override
  Widget build(BuildContext context) => Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Colors.red.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.red.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Icon(Icons.cancel_outlined, color: Colors.red, size: 24.r),
          12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.order_details_cancelled_title,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp,
                  ),
                ),
                2.verticalSpace,
                Text(
                  context.l10n.order_details_cancelled_msg,
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
