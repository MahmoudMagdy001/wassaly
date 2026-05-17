import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart';

class MainLayoutPage extends StatefulWidget {
  const MainLayoutPage({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<MainLayoutPage> createState() => _MainLayoutPageState();
}

class _MainLayoutPageState extends State<MainLayoutPage> {
  @override
  void initState() {
    super.initState();
    // Load data after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadUserDataIfNeeded();
    });
  }

  void _loadUserDataIfNeeded() {
    if (!mounted) return;
    final sessionState = context.read<SessionBloc>().state;

    if (sessionState is SessionAuthenticated) {
      // Check cart
      final cartState = context.read<CartBloc>().state;
      if (cartState.items.isEmpty && !cartState.isLoading) {
        debugPrint('[MainLayout] Cart is empty, loading cart items');
        context.read<CartBloc>().add(const LoadCartItemsEvent());
      }

      // Check favorites
      final favoriteState = context.read<FavoriteBloc>().state;
      if (favoriteState.favorites.data.isEmpty && !favoriteState.isLoading) {
        debugPrint('[MainLayout] Favorites are empty, loading favorites');
        context.read<FavoriteBloc>().add(const GetFavoritesEvent());
      }
    }
  }

  void _onTap(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.textTheme;

    return MultiBlocListener(
      listeners: [
        // Listen to SessionBloc changes and load cart/favorites when authenticated
        BlocListener<SessionBloc, SessionState>(
          listenWhen: (prev, curr) =>
              prev is! SessionAuthenticated && curr is SessionAuthenticated,
          listener: (context, state) {
            debugPrint(
                '[MainLayout] User authenticated, loading cart and favorites');
            // Load cart items when user becomes authenticated
            context.read<CartBloc>().add(const LoadCartItemsEvent());
            // Load favorite items when user becomes authenticated
            context.read<FavoriteBloc>().add(const GetFavoritesEvent());
          },
        ),
        // Also load data if already authenticated on page load
        BlocListener<SessionBloc, SessionState>(
          listenWhen: (prev, curr) => curr is SessionAuthenticated,
          listener: (context, state) {
            debugPrint(
                '[MainLayout] User is authenticated, checking if data needs loading');
            // Check if cart is empty, if so load it
            final cartState = context.read<CartBloc>().state;
            if (cartState.items.isEmpty) {
              debugPrint('[MainLayout] Cart is empty, loading cart items');
              context.read<CartBloc>().add(const LoadCartItemsEvent());
            }

            // Check if favorites are empty, if so load them
            final favoriteState = context.read<FavoriteBloc>().state;
            if (favoriteState.favorites.data.isEmpty) {
              debugPrint('[MainLayout] Favorites are empty, loading favorites');
              context.read<FavoriteBloc>().add(const GetFavoritesEvent());
            }
          },
        ),
      ],
      child: Scaffold(
        body: widget.navigationShell,
        bottomNavigationBar: BlocSelector<SessionBloc, SessionState, String?>(
          selector: (state) =>
              state is SessionAuthenticated ? state.user.avatarUrl : null,
          builder: (context, avatarUrl) {
            return BottomNavigationBar(
              currentIndex: widget.navigationShell.currentIndex.clamp(0, 3),
              onTap: _onTap,
              backgroundColor: cs.surface,
              selectedItemColor: cs.primary,
              unselectedItemColor: cs.onSurfaceVariant,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home_outlined),
                  activeIcon: const Icon(Icons.home_rounded),
                  label: context.l10n.nav_nav_home,
                ),
                BottomNavigationBarItem(
                  icon: BlocSelector<CartBloc, CartState, int>(
                    selector: (state) => state.cartCount,
                    builder: (context, cartCount) => Badge(
                      label: cartCount > 0
                          ? Text(
                              cartCount.toString(),
                              style: tt.labelSmall?.copyWith(
                                color: context.colors.onError,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : null,
                      isLabelVisible: cartCount > 0,
                      child: const Icon(Icons.shopping_cart_outlined),
                    ),
                  ),
                  activeIcon: BlocSelector<CartBloc, CartState, int>(
                    selector: (state) => state.cartCount,
                    builder: (context, cartCount) => Badge(
                      label: cartCount > 0
                          ? Text(
                              cartCount.toString(),
                              style: tt.labelSmall?.copyWith(
                                color: context.colors.onError,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : null,
                      isLabelVisible: cartCount > 0,
                      child: const Icon(Icons.shopping_cart_rounded),
                    ),
                  ),
                  label: context.l10n.nav_nav_cart,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.favorite_outline),
                  activeIcon: const Icon(Icons.favorite_rounded),
                  label: context.l10n.nav_nav_favorite,
                ),
                BottomNavigationBarItem(
                  icon: avatarUrl != null && avatarUrl.isNotEmpty
                      ? CommonImage(
                          width: 26,
                          height: 22,
                          memCacheHeight: 22 * 3,
                          imageUrl: avatarUrl,
                          fit: BoxFit.cover,
                          borderRadius: BorderRadius.circular(16.r),
                        )
                      : const Icon(Icons.person_outline),
                  activeIcon: avatarUrl != null && avatarUrl.isNotEmpty
                      ? CommonImage(
                          width: 26,
                          height: 22,
                          memCacheHeight: 22 * 3,
                          imageUrl: avatarUrl,
                          fit: BoxFit.cover,
                          borderRadius: BorderRadius.circular(16.r),
                        )
                      : const Icon(Icons.person_rounded),
                  label: context.l10n.nav_nav_profile,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
