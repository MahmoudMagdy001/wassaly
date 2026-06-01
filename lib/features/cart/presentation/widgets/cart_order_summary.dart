import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/cart/domain/entities/coupon_entity.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';
import 'package:wassaly/features/profile/domain/entities/governorate_entity.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'cart_location_selector.dart';
import 'cart_contact_fields.dart';
import 'cart_payment_method_card.dart';
import 'cart_coupon_field.dart';
import 'cart_summary_row.dart';

class CartOrderSummary extends StatelessWidget {
  final CartState state;

  const CartOrderSummary({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (previous, current) =>
          previous.addresses != current.addresses ||
          previous.governorates != current.governorates ||
          previous.addressStatus != current.addressStatus ||
          previous.user != current.user,
      builder: (context, profileState) {
        final cs = context.theme.colorScheme;
        final tt = context.theme.textTheme;

        final subtotal = state.items.fold<double>(
          0,
          (sum, item) => sum + item.totalPrice,
        );
        final selectedAddress = _findSelectedAddress(
            profileState.addresses, state.selectedAddressId);
        final shippingCost =
            _getShippingCost(profileState.governorates, selectedAddress);
        final discount = _calculateDiscount(
          subtotal: subtotal,
          coupon: state.appliedCoupon,
        );
        final total =
            (subtotal + shippingCost - discount).clamp(0, double.infinity);

        return Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: cs.surface,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: cs.shadow.withValues(alpha: 0.08),
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Column(
            children: [
              CartLocationSelector(profileState: profileState),
              16.verticalSpace,
              CartContactFields(state: state),
              16.verticalSpace,
              const CartPaymentMethodCard(),
              16.verticalSpace,
              CartCouponField(state: state, subtotal: subtotal),
              16.verticalSpace,
              CartSummaryRow(
                label: 'cart.subtotal'.tr(),
                value:
                    '${subtotal.toStringAsFixed(0)} ${'shared.currency_egp'.tr()}',
              ),
              12.verticalSpace,
              CartSummaryRow(
                label: 'cart.delivery'.tr(),
                value:
                    '${shippingCost.toStringAsFixed(0)} ${'shared.currency_egp'.tr()}',
              ),
              if (discount > 0) ...[
                12.verticalSpace,
                CartSummaryRow(
                  label: 'cart.discount_label'
                      .tr(namedArgs: {'code': state.appliedCoupon?.code ?? ''}),
                  value:
                      '-${discount.toStringAsFixed(0)} ${'shared.currency_egp'.tr()}',
                  valueColor: cs.error,
                ),
              ],
              12.verticalSpace,
              AppDivider(color: cs.outline.withValues(alpha: 0.3), height: 1),
              12.verticalSpace,
              CartSummaryRow(
                label: 'cart.total'.tr(),
                value:
                    '${total.toStringAsFixed(0)} ${'shared.currency_egp'.tr()}',
                isBold: true,
                valueColor: cs.primary,
              ),
              16.verticalSpace,
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: state.isCheckingOut ||
                          selectedAddress == null ||
                          !state.isOrderInfoComplete
                      ? null
                      : () {
                          context.read<CartBloc>().add(CheckoutEvent(
                                customerName: state.customerName,
                                customerPhone: state.phoneNumber,
                                governorateId: int.tryParse(
                                        selectedAddress.governorateId) ??
                                    0,
                                centerId:
                                    int.tryParse(selectedAddress.centerId) ?? 0,
                                region: selectedAddress.centerName,
                                address: selectedAddress.address,
                                couponCode: state.appliedCoupon?.code,
                              ));
                        },
                  style: FilledButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                  ),
                  child: state.isCheckingOut
                      ? SizedBox(
                          width: 20.w,
                          height: 20.h,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: cs.onPrimary,
                          ),
                        )
                      : Text(
                          'cart.checkout'.tr(),
                          style: tt.titleMedium?.copyWith(
                            color: cs.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static AddressEntity? _findSelectedAddress(
    List<AddressEntity> addresses,
    String? selectedAddressId,
  ) {
    for (final address in addresses) {
      if (address.id == selectedAddressId) return address;
    }
    return null;
  }

  static double _getShippingCost(
    List<GovernorateEntity> governorates,
    AddressEntity? selectedAddress,
  ) {
    if (selectedAddress == null) return 0;
    for (final governorate in governorates) {
      if (governorate.id == selectedAddress.governorateId) {
        return governorate.shippingCost;
      }
    }
    return 0;
  }

  static double _calculateDiscount({
    required double subtotal,
    required CouponEntity? coupon,
  }) {
    if (coupon == null || !coupon.isValid) return 0;
    final value = coupon.value;
    if (value <= 0) return 0;

    if (coupon.isPercentage) {
      final discount = subtotal * (value / 100);
      return discount > subtotal ? subtotal : discount;
    }
    return value > subtotal ? subtotal : value;
  }
}
