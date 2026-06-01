import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';
import 'package:wassaly/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:wassaly/features/cart/presentation/widgets/cart_shimmer.dart';
import 'package:wassaly/features/cart/presentation/widgets/empty_cart_widget.dart';
import 'package:wassaly/features/cart/presentation/widgets/cart_order_summary.dart';
import 'package:wassaly/features/profile/presentation/bloc/profile/profile_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final profileBloc = sl<ProfileBloc>();
    final cartBloc = context.read<CartBloc>();

    // Initialization logic moved to build (only runs once if state is initial)
    if (cartBloc.state.status == CartStatus.initial) {
      cartBloc.add(const LoadCartItemsEvent());
    }

    if (profileBloc.state.addressStatus == AppStatus.initial &&
        profileBloc.state.addresses.isEmpty) {
      profileBloc.add(const AddressesFetched());
      profileBloc.add(const GovernoratesFetched());
    }

    if (profileBloc.state.user == null) {
      profileBloc.add(const ProfileFetched());
    } else {
      cartBloc.add(PrefillCustomerInfoEvent(
        name: profileBloc.state.user!.name,
        phone: profileBloc.state.user!.phone,
      ));
    }

    return BlocProvider.value(
      value: profileBloc,
      child: MultiBlocListener(
        listeners: [
          BlocListener<CartBloc, CartState>(
            listenWhen: (previous, current) =>
                previous.checkoutStatus != current.checkoutStatus,
            listener: (context, state) {
              if (state.isCheckoutSuccess && state.orderData != null) {
                final orderData = state.orderData!;
                final orderNumber = orderData['order_number']?.toString() ?? '';
                final paymentMethod =
                    orderData['payment_method']?.toString() ?? '';
                final deliveryAddress =
                    orderData['delivery_address']?.toString() ?? '';

                context.push(AppRoutes.orderSuccess, extra: {
                  'orderNumber': orderNumber,
                  'paymentMethod': paymentMethod,
                  'deliveryAddress': deliveryAddress,
                });
              }
            },
          ),
          BlocListener<ProfileBloc, ProfileState>(
            listenWhen: (previous, current) => previous.user != current.user,
            listener: (context, state) {
              if (state.user != null) {
                context.read<CartBloc>().add(PrefillCustomerInfoEvent(
                      name: state.user!.name,
                      phone: state.user!.phone,
                    ));
              }
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: context.theme.colorScheme.surfaceContainerHighest,
          appBar: AppBar(
            title: Text(
              'cart.cart_title'.tr(),
              style: context.typography.titleLarge,
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: context.theme.colorScheme.surface,
          ),
          body: BlocBuilder<CartBloc, CartState>(
            buildWhen: (previous, current) =>
                previous.status != current.status ||
                previous.items != current.items ||
                previous.couponStatus != current.couponStatus ||
                previous.appliedCoupon != current.appliedCoupon ||
                previous.couponErrorMessage != current.couponErrorMessage ||
                previous.couponCode != current.couponCode ||
                previous.phoneNumber != current.phoneNumber ||
                previous.customerName != current.customerName ||
                previous.selectedAddressId != current.selectedAddressId ||
                previous.isCheckingOut != current.isCheckingOut,
            builder: (context, state) {
              if (state.isLoading) {
                return const CartShimmer();
              }

              if (state.isError) {
                return Center(
                  child: AppErrorWidget(
                    message:
                        state.errorMessage ?? 'cart.error_loading_cart'.tr(),
                    onRetry: () => context
                        .read<CartBloc>()
                        .add(const LoadCartItemsEvent()),
                  ),
                );
              }

              if (state.items.isEmpty) {
                return const EmptyCartWidget();
              }

              return ListView.builder(
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
                itemCount: state.items.length + 1,
                itemBuilder: (context, index) {
                  if (index == state.items.length) {
                    return CartOrderSummary(state: state);
                  }

                  final item = state.items[index];
                  return CartItemWidget(
                    item: item,
                    onRemove: () => context
                        .read<CartBloc>()
                        .add(RemoveFromCartEvent(item.id)),
                    onQuantityIncrease: () => context.read<CartBloc>().add(
                          UpdateQuantityEvent(
                            cartItemId: item.id,
                            quantity: item.quantity + 1,
                          ),
                        ),
                    onQuantityDecrease: () {
                      if (item.quantity > 1) {
                        context.read<CartBloc>().add(
                              UpdateQuantityEvent(
                                cartItemId: item.id,
                                quantity: item.quantity - 1,
                              ),
                            );
                      } else {
                        context.read<CartBloc>().add(
                              RemoveFromCartEvent(item.id),
                            );
                      }
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
