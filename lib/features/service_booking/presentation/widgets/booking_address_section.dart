import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_booking/presentation/bloc/service_booking_bloc.dart';

class BookingAddressSection extends StatelessWidget {
  const BookingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return BlocBuilder<ServiceBookingBloc, ServiceBookingState>(
      builder: (context, state) {
        final bloc = context.read<ServiceBookingBloc>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ─── Saved Addresses ─────────────────────────────────────────────
            if (state.addresses.isNotEmpty || state.isLoadingAddresses) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.l10n.checkout_saved_addresses,
                    style: tt.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      final success = await context.push(AppRoutes.addAddress);
                      if (success == true) {
                        if (context.mounted) {
                          bloc.add(const ServiceBookingAddressesRefreshed());
                        }
                      }
                    },
                    icon: Icon(Icons.add, size: 18.r),
                    label: Text(context.l10n.cart_add_new_address),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
              12.verticalSpace,
              if (state.isLoadingAddresses)
                const Center(child: AppLoading())
              else
                Column(
                  children: List.generate(
                    state.addresses.length,
                    (index) {
                      final address = state.addresses[index];
                      final isSelected = state.selectedAddress?.id == address.id;

                      return Padding(
                        padding: EdgeInsets.only(
                            bottom: index == state.addresses.length - 1 ? 0 : 12.h),
                        child: InkWell(
                          onTap: () =>
                              bloc.add(ServiceBookingAddressSelected(address)),
                          borderRadius: BorderRadius.circular(16.r),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: EdgeInsets.all(16.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(
                                color: isSelected ? cs.primary : cs.outlineVariant,
                                width: isSelected ? 2 : 1,
                              ),
                              color: isSelected
                                  ? cs.primaryContainer.withValues(alpha: 0.05)
                                  : cs.surface,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Radio Button
                                Container(
                                  margin: EdgeInsets.only(top: 2.h),
                                  width: 20.r,
                                  height: 20.r,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: isSelected
                                          ? cs.primary
                                          : cs.onSurfaceVariant,
                                      width: 2,
                                    ),
                                  ),
                                  child: isSelected
                                      ? Center(
                                          child: Container(
                                            width: 10.r,
                                            height: 10.r,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: cs.primary,
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                                16.horizontalSpace,
                                // Address Details
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        address.title,
                                        style: tt.titleMedium?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: isSelected
                                              ? cs.primary
                                              : cs.onSurface,
                                        ),
                                      ),
                                      4.verticalSpace,
                                      Text(
                                        '${address.governorateName}، ${address.centerName}',
                                        style: tt.bodyMedium?.copyWith(
                                          color: cs.onSurface,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      4.verticalSpace,
                                      Text(
                                        address.address,
                                        style: tt.bodySmall?.copyWith(
                                          color: cs.onSurfaceVariant,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              24.verticalSpace,
            ],

            // ─── Manual Selection / Fallback ────────────────────────────────
            if (state.addresses.isEmpty && !state.isLoadingAddresses) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.l10n.checkout_customer_address,
                    style: tt.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      final success = await context.push(AppRoutes.addAddress);
                      if (success == true) {
                        if (context.mounted) {
                          bloc.add(const ServiceBookingAddressesRefreshed());
                        }
                      }
                    },
                    icon: Icon(Icons.add, size: 18.r),
                    label: Text(context.l10n.cart_add_new_address),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
              12.verticalSpace,
              AppDropdown<String>(
                label: context.l10n.checkout_governorate,
                value: state.selectedGovernorateId,
                items: state.governorates.map((gov) {
                  return DropdownMenuItem(
                    value: gov.id,
                    child: Text(gov.name),
                  );
                }).toList(),
                onChanged: (val) {
                  if (val != null) {
                    bloc.add(ServiceBookingGovernorateSelected(val));
                  }
                },
                validator: (v) => v == null ? state.governorateError : null,
                prefixIcon: state.isLoadingGovernorates
                    ? const AppLoading(size: 20)
                    : const Icon(Icons.location_on_outlined),
              ),
              if (state.governorateError != null) ...[
                4.verticalSpace,
                Text(
                  state.governorateError!,
                  style: TextStyle(color: cs.error, fontSize: 12.sp),
                ),
              ],
              16.verticalSpace,
              AppDropdown<String>(
                label: context.l10n.checkout_center,
                value: state.selectedCenterId,
                items: state.centers.map((center) {
                  return DropdownMenuItem(
                    value: center.id,
                    child: Text(center.name),
                  );
                }).toList(),
                onChanged: (val) {
                  if (val != null) {
                    bloc.add(ServiceBookingCenterSelected(val));
                  }
                },
                validator: (v) => v == null ? state.centerError : null,
                prefixIcon: state.isLoadingCenters
                    ? const AppLoading(size: 20)
                    : const Icon(Icons.location_city_outlined),
                enabled: state.selectedGovernorateId != null &&
                    state.centers.isNotEmpty,
              ),
              if (state.centerError != null) ...[
                4.verticalSpace,
                Text(
                  state.centerError!,
                  style: TextStyle(color: cs.error, fontSize: 12.sp),
                ),
              ],
            ],
          ],
        );
      },
    );
  }
}
