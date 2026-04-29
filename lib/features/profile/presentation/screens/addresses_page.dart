import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/injection/injection.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProfileBloc>()..add(const AddressesFetched()),
      child: const _AddressesView(),
    );
  }
}

class _AddressesView extends StatelessWidget {
  const _AddressesView();

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('profile.saved_addresses'.tr()),
        centerTitle: true,
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        buildWhen: (prev, curr) =>
            prev.addressStatus != curr.addressStatus ||
            prev.addresses != curr.addresses,
        builder: (context, state) {
          if (state.addressStatus.isLoading) {
            return const AppLoading();
          }

          if (state.addressStatus.isFailure && state.addressError != null) {
            return AppErrorWidget(
              title: 'profile.addresses_error'.tr(),
              message: state.addressError,
              onRetry: () =>
                  context.read<ProfileBloc>().add(const AddressesFetched()),
            );
          }

          if (state.addresses.isEmpty) {
            return AppEmptyState(
              icon: Icons.location_on_outlined,
              title: 'profile.no_addresses'.tr(),
              subtitle: 'profile.add_address_hint'.tr(),
              actionLabel: 'profile.add_address'.tr(),
              onAction: () => context.push(AppRoutes.addAddress),
            );
          }

          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.all(16.w),
                  itemCount: state.addresses.length,
                  separatorBuilder: (_, __) => 16.verticalSpace,
                  itemBuilder: (context, index) {
                    final address = state.addresses[index];
                    return _AddressCard(address: address);
                  },
                ),
              ),
              // Add New Address Button
              Padding(
                padding: EdgeInsets.all(16.w),
                child: SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    label: 'profile.add_new_address'.tr(),
                    isFullWidth: true,
                    prefixIcon: Icon(
                      Icons.add_location_alt_outlined,
                      color: cs.onPrimary,
                      size: 20.r,
                    ),
                    onPressed: () => context.push(AppRoutes.addAddress),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _AddressCard extends StatelessWidget {
  final dynamic address;

  const _AddressCard({required this.address});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    // Determine icon and colors based on address type
    final bool isHome = address.title.toLowerCase().contains('home') ||
        address.title.toLowerCase().contains('منزل');
    final bool isWork = address.title.toLowerCase().contains('work') ||
        address.title.toLowerCase().contains('عمل');

    final iconData = isHome
        ? Icons.home_outlined
        : isWork
            ? Icons.business_center_outlined
            : Icons.location_on_outlined;
    final iconBgColor = isHome
        ? const Color(0xFFE8EAF6)
        : isWork
            ? const Color(0xFFE8F5E9)
            : cs.primaryContainer.withValues(alpha: 0.3);
    final iconColor = isHome
        ? const Color(0xFF3F51B5)
        : isWork
            ? const Color(0xFF4CAF50)
            : cs.primary;

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: cs.shadow.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row with icon and title
          Row(
            children: [
              Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  iconData,
                  color: iconColor,
                  size: 24.r,
                ),
              ),
              12.horizontalSpace,
              Expanded(
                child: Text(
                  address.title,
                  style: tt.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          12.verticalSpace,
          // Address details
          Text(
            '${address.address}, ${address.governorateName}, المملكة العربية السعودية',
            style: tt.bodyMedium?.copyWith(
              color: cs.onSurfaceVariant,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          16.verticalSpace,
          // Action buttons
          Row(
            children: [
              // Delete button
              Expanded(
                child: InkWell(
                  onTap: () {
                    // Show delete confirmation
                  },
                  borderRadius: BorderRadius.circular(8.r),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      color: cs.errorContainer.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.delete_outline,
                          color: cs.error,
                          size: 18.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'shared.delete'.tr(),
                          style: tt.bodyMedium?.copyWith(
                            color: cs.error,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              12.horizontalSpace,
              // Edit button
              Expanded(
                child: InkWell(
                  onTap: () {
                    // Navigate to edit address
                  },
                  borderRadius: BorderRadius.circular(8.r),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      color: cs.primaryContainer.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit_outlined,
                          color: cs.primary,
                          size: 18.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'shared.edit'.tr(),
                          style: tt.bodyMedium?.copyWith(
                            color: cs.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
