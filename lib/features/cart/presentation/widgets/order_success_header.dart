import 'package:wassaly/core/imports/imports.dart';

class OrderSuccessHeader extends StatelessWidget {
  final String orderNumber;

  const OrderSuccessHeader({
    super.key,
    required this.orderNumber,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Column(
      children: [
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.check_rounded,
              color: Colors.green.shade600,
              size: 50.r,
            ),
          ),
        ),
        32.verticalSpace,
        Text(
          'order.success_title'.tr(),
          style: tt.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: cs.primary,
          ),
          textAlign: TextAlign.center,
        ),
        12.verticalSpace,
        Text(
          'order.success_message'.tr(namedArgs: {'orderNumber': orderNumber}),
          style: tt.bodyMedium?.copyWith(
            color: cs.onSurface.withValues(alpha: 0.7),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
