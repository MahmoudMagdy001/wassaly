import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';
import 'package:wassaly/features/cart/presentation/widgets/cart/cart_empty_state.dart';
import 'package:wassaly/features/cart/presentation/widgets/cart/cart_item_widget.dart';
import 'package:wassaly/features/cart/presentation/widgets/cart/cart_order_summary.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final cartBloc = context.read<CartBloc>();
      // Only load if never fetched before (initial state).
      // Avoid reloading when the cart was already fetched but is empty.
      if (cartBloc.state.status == CartStatus.initial) {
        cartBloc.add(const LoadCartItemsEvent());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: BlocBuilder<CartBloc, CartState>(
        // Only rebuild when visible content changes.
        // Ignoring addingProductIds / inCartProductIds changes prevents
        // flutter_animate from restarting animations mid-frame, which caused
        // "setState() called during build" exceptions.
        buildWhen: (prev, curr) =>
            prev.status != curr.status ||
            prev.items != curr.items ||
            prev.failure != curr.failure,
        builder: (context, state) {
          return CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              // ─── AppBar ────────────────────────────────────────────────────────────
              AppSliverTopBar(
                automaticallyImplyLeading: false,
                title: context.l10n.cart_cart_title,
              ),

              // ─── Content ───────────────────────────────────────────────────────────
              if (state.isLoading && state.items.isEmpty)
                const SliverFillRemaining(
                  child: Center(child: AppLoading()),
                )
              else if (state.isError && state.items.isEmpty)
                SliverFillRemaining(
                  child: Center(
                    child: state.failure != null
                        ? AppErrorWidget.failure(
                            failure: state.failure!,
                            onRetry: () => context
                                .read<CartBloc>()
                                .add(const LoadCartItemsEvent()),
                          )
                        : AppErrorWidget(
                            title: context.l10n.errors_error_occurred_title,
                            message: state.errorMessage.isNotEmpty
                                ? state.errorMessage
                                : context.l10n.errors_error_occurred_message,
                            onRetry: () => context
                                .read<CartBloc>()
                                .add(const LoadCartItemsEvent()),
                          ),
                  ),
                )
              else if (state.items.isEmpty)
                const SliverFillRemaining(
                  hasScrollBody: false,
                  child: CartEmptyState(),
                )
              else ...[
                // Cart Items List
                SliverPadding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final item = state.items[index];
                        return CartItemWidget(
                          item: item,
                          onRemove: () => context
                              .read<CartBloc>()
                              .add(RemoveFromCartEvent(item.id)),
                          onQuantityIncrease: () =>
                              context.read<CartBloc>().add(
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
                      childCount: state.items.length,
                    ),
                  ),
                ),

                // Order Summary
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 32.h),
                    child: CartOrderSummary(state: state),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
