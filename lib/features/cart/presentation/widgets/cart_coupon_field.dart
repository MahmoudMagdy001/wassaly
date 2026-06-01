import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/cart/domain/entities/coupon_entity.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';

class CartCouponField extends StatelessWidget {
  final CartState state;
  final double subtotal;

  const CartCouponField({
    super.key,
    required this.state,
    required this.subtotal,
  });

  @override
  Widget build(BuildContext context) {
    final tt = context.theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'cart.coupon'.tr(),
          style: context.textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        8.verticalSpace,
        if (!state.hasCoupon)
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  initialValue: state.couponCode,
                  hint: 'cart.enter_coupon_code'.tr(),
                  enabled: !state.isApplyingCoupon,
                  onChanged: (value) => context
                      .read<CartBloc>()
                      .add(CouponCodeChangedEvent(value)),
                ),
              ),
              8.horizontalSpace,
              AppButton(
                label: 'cart.apply_coupon'.tr(),
                isLoading: state.isApplyingCoupon,
                isFullWidth: false,
                onPressed: () {
                  final code = state.couponCode.trim();
                  if (code.isEmpty) {
                    context.showTypedSnackBar(
                      'cart.enter_coupon_required'.tr(),
                      type: SnackBarType.error,
                    );
                    return;
                  }
                  if (subtotal <= 0) return;
                  context.read<CartBloc>().add(ApplyCouponEvent(code));
                },
              ),
            ],
          ),
        if (state.couponStatus == CouponStatus.error &&
            (state.couponErrorMessage?.isNotEmpty ?? false)) ...[
          8.verticalSpace,
          Text(
            state.couponErrorMessage!,
            style: context.textTheme.bodySmall
                ?.copyWith(color: context.colors.error),
          ),
        ],
        if (state.hasCoupon) ...[
          12.verticalSpace,
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: Colors.green.withValues(alpha: 0.5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.local_offer, color: Colors.green.shade700),
                    8.horizontalSpace,
                    Expanded(
                      child: Text(
                        state.appliedCoupon?.title ??
                            'cart.coupon_applied'.tr(),
                        style: tt.titleSmall?.copyWith(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      constraints: const BoxConstraints(),
                      onPressed: () => context
                          .read<CartBloc>()
                          .add(const ClearCouponEvent()),
                      icon: Icon(
                        Icons.close_rounded,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ],
                ),
                4.verticalSpace,
                Text(
                  _couponValueLabel(context, state.appliedCoupon),
                  style: tt.bodyMedium?.copyWith(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  static String _couponValueLabel(BuildContext context, CouponEntity? coupon) {
    if (coupon == null) return '';
    if (coupon.isPercentage) {
      return 'cart.coupon_discount_percent'.tr(namedArgs: {
        'value': coupon.value.toStringAsFixed(0),
        'code': coupon.code,
      });
    }
    return 'cart.coupon_discount_fixed'.tr(namedArgs: {
      'value': coupon.value.toStringAsFixed(0),
      'code': coupon.code,
    });
  }
}
