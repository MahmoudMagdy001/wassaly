import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

class CartLocationSelector extends StatelessWidget {
  final ProfileState profileState;

  const CartLocationSelector({
    super.key,
    required this.profileState,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final cartState = context.read<CartBloc>().state;
    final selectedId = cartState.selectedAddressId;

    if (profileState.addresses.isNotEmpty && selectedId == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!context.mounted) return;
        context
            .read<CartBloc>()
            .add(SelectedAddressChangedEvent(profileState.addresses.first.id));
      });
    }

    if (profileState.addressStatus.isLoading &&
        profileState.addresses.isEmpty) {
      return _buildAddressShimmer(cs);
    }

    if (profileState.addresses.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'cart.delivery_address'.tr(),
            style: context.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          8.verticalSpace,
          AppButton(
            label: 'cart.add_new_address'.tr(),
            variant: ButtonVariant.secondary,
            isFullWidth: true,
            onPressed: () async {
              await context.push(AppRoutes.addAddress);
              sl<ProfileBloc>().add(const AddressesFetched());
            },
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'cart.delivery_address'.tr(),
                style: context.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            TextButton(
              onPressed: () async {
                await context.push(AppRoutes.addAddress);
                sl<ProfileBloc>().add(const AddressesFetched());
              },
              child: Text('cart.add_new'.tr()),
            ),
          ],
        ),
        8.verticalSpace,
        ...profileState.addresses.map((address) {
          final isSelected = selectedId == address.id;
          return Container(
            margin: EdgeInsets.only(bottom: 8.h),
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    isSelected ? cs.primary : cs.outline.withValues(alpha: 0.5),
              ),
              borderRadius: BorderRadius.circular(12.r),
              color:
                  isSelected ? cs.primary.withValues(alpha: 0.14) : cs.surface,
            ),
            child: RadioListTile<String>(
              value: address.id,
              groupValue: selectedId,
              onChanged: (value) => context
                  .read<CartBloc>()
                  .add(SelectedAddressChangedEvent(value)),
              title: Text(
                address.title,
                style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700, color: cs.onPrimaryContainer),
              ),
              subtitle: Text(
                '${address.address}, ${address.centerName}, ${address.governorateName}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildAddressShimmer(ColorScheme cs) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100.w,
          height: 20.h,
          decoration: BoxDecoration(
            color: cs.surfaceContainerHighest.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        8.verticalSpace,
        ...List.generate(
            2,
            (index) => Container(
                  margin: EdgeInsets.only(bottom: 8.h),
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: cs.surface,
                    border: Border.all(
                      color: cs.outline.withValues(alpha: 0.3),
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.w),
                    child: Row(
                      children: [
                        Container(
                          width: 20.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: cs.surfaceContainerHighest
                                .withValues(alpha: 0.5),
                            shape: BoxShape.circle,
                          ),
                        ),
                        16.horizontalSpace,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120.w,
                                height: 16.h,
                                decoration: BoxDecoration(
                                  color: cs.surfaceContainerHighest
                                      .withValues(alpha: 0.5),
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                              ),
                              8.verticalSpace,
                              Container(
                                width: double.infinity,
                                height: 14.h,
                                decoration: BoxDecoration(
                                  color: cs.surfaceContainerHighest
                                      .withValues(alpha: 0.3),
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
      ],
    );
  }
}
