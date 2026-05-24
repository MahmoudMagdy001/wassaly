import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_state.dart';

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
  DateTime? _lastBackPressTime;
  OverlayEntry? _exitOverlayEntry;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadUserDataIfNeeded();
    });
  }

  @override
  void dispose() {
    // Cancel any pending overlay to avoid inserting into a detached overlay.
    _exitOverlayEntry?.remove();
    _exitOverlayEntry = null;
    super.dispose();
  }

  /// Loads cart and favorites only when the user is authenticated AND each
  /// slice has never been fetched (status == initial). Covers the cold-start
  /// case; hot-auth transitions are handled by the BlocListener below.
  void _loadUserDataIfNeeded() {
    if (!mounted) return;
    final sessionState = context.read<SessionBloc>().state;
    if (sessionState is! SessionAuthenticated) return;

    final cartState = context.read<CartBloc>().state;
    if (cartState.status == CartStatus.initial) {
      context.read<CartBloc>().add(const LoadCartItemsEvent());
    }

    final favoriteState = context.read<FavoriteBloc>().state;
    if (favoriteState.status == FavoriteStatus.initial) {
      context.read<FavoriteBloc>().add(const GetFavoritesEvent());
    }
  }

  void _onTap(int index) {
    // Re-tapping the Home tab scrolls to top / refreshes.
    if (index == 0 && widget.navigationShell.currentIndex == 0) {
      sl<HomeNavigationService>().scrollToTopOrRefresh();
      return;
    }
    widget.navigationShell.goBranch(
      index,
      // Reset to the branch's initial location only when re-tapping the
      // *currently active* tab (so back-stack is cleared on double-tap).
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  void _handleBackPress() {
    // 1. Sub-route / dialog stacked — pop it.
    if (context.canPop()) {
      context.pop();
      return;
    }

    // 2. Not on Home tab — navigate home.
    if (widget.navigationShell.currentIndex != 0) {
      _onTap(0);
      return;
    }

    // 3. On Home tab — double-back to exit.
    final now = DateTime.now();
    final elapsed = _lastBackPressTime == null
        ? const Duration(days: 1)
        : now.difference(_lastBackPressTime!);

    if (elapsed > const Duration(seconds: 2)) {
      _lastBackPressTime = now;
      _showExitOverlay();
    } else {
      _exitOverlayEntry?.remove();
      _exitOverlayEntry = null;
      SystemNavigator.pop();
    }
  }

  void _showExitOverlay() {
    _exitOverlayEntry?.remove();

    const overlayDuration = Duration(seconds: 2);
    const fadeDuration = Duration(milliseconds: 250);

    _exitOverlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.sizeOf(context).height * 0.45,
        left: 0,
        right: 0,
        child: Material(
          color: Colors.transparent,
          child: _ExitConfirmOverlay(
            message: context.l10n.app_exit_confirm,
            duration: overlayDuration,
          ),
        ),
      ),
    );

    Overlay.of(context).insert(_exitOverlayEntry!);

    // Auto-remove after the overlay has finished its fade-out animation.
    Future.delayed(overlayDuration + fadeDuration, () {
      _exitOverlayEntry?.remove();
      _exitOverlayEntry = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return MultiBlocListener(
      listeners: [
        BlocListener<SessionBloc, SessionState>(
          // Trigger only on the transition to authenticated, not on every rebuild.
          listenWhen: (prev, curr) =>
              prev is! SessionAuthenticated && curr is SessionAuthenticated,
          listener: (context, _) {
            context.read<CartBloc>().add(const LoadCartItemsEvent());
            context.read<FavoriteBloc>().add(const GetFavoritesEvent());
          },
        ),
      ],
      child: PopScope<Object?>(
        canPop: false,
        onPopInvokedWithResult: (didPop, _) {
          if (!didPop) _handleBackPress();
        },
        child: Scaffold(
          body: widget.navigationShell,
          bottomNavigationBar: _NavBar(
            currentIndex: widget.navigationShell.currentIndex,
            onTap: _onTap,
            backgroundColor: cs.surface,
            selectedItemColor: cs.primary,
            unselectedItemColor: cs.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Bottom navigation bar
// ---------------------------------------------------------------------------

/// Extracted into its own widget so it owns its own [BlocSelector] for
/// [avatarUrl] — the outer Scaffold no longer rebuilds when the avatar changes.
class _NavBar extends StatelessWidget {
  const _NavBar({
    required this.currentIndex,
    required this.onTap,
    required this.backgroundColor,
    required this.selectedItemColor,
    required this.unselectedItemColor,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color backgroundColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;

  @override
  Widget build(BuildContext context) {
    final isIOS = context.isIOS;

    return BlocSelector<SessionBloc, SessionState, String?>(
      selector: (state) =>
          state is SessionAuthenticated ? state.user.avatarUrl : null,
      builder: (context, avatarUrl) {
        if (isIOS) {
          return _buildCupertinoTabBar(context, avatarUrl);
        }
        return _buildMaterialNavBar(context, avatarUrl);
      },
    );
  }

  Widget _buildCupertinoTabBar(BuildContext context, String? avatarUrl) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    return CupertinoTheme(
      data: CupertinoThemeData(
        primaryColor: cs.primary,
        textTheme: CupertinoTextThemeData(
          tabLabelTextStyle: tt.labelSmall ?? const TextStyle(),
        ),
      ),
      child: CupertinoTabBar(
        currentIndex: currentIndex.clamp(0, 3),
        onTap: onTap,
        backgroundColor: backgroundColor,
        activeColor: selectedItemColor,
        inactiveColor: unselectedItemColor,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.home),
            activeIcon: const Icon(CupertinoIcons.house_fill),
            label: context.l10n.nav_nav_home,
          ),
          BottomNavigationBarItem(
            icon: const _CartBadgeIcon(
              isActive: false,
              baseIcon: Icons.shopping_cart_outlined,
              cupertinoIcon: CupertinoIcons.cart,
            ),
            activeIcon: const _CartBadgeIcon(
              isActive: true,
              baseIcon: Icons.shopping_cart_rounded,
              cupertinoIcon: CupertinoIcons.cart_fill,
            ),
            label: context.l10n.nav_nav_cart,
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.heart),
            activeIcon: const Icon(CupertinoIcons.heart_fill),
            label: context.l10n.nav_nav_favorite,
          ),
          BottomNavigationBarItem(
            icon: _ProfileNavIcon(avatarUrl: avatarUrl, isActive: false),
            activeIcon: _ProfileNavIcon(avatarUrl: avatarUrl, isActive: true),
            label: context.l10n.nav_nav_profile,
          ),
        ],
      ),
    );
  }

  Widget _buildMaterialNavBar(BuildContext context, String? avatarUrl) {
    final tt = context.theme.textTheme;
    return BottomNavigationBar(
      currentIndex: currentIndex.clamp(0, 3),
      onTap: onTap,
      backgroundColor: backgroundColor,
      selectedItemColor: selectedItemColor,
      unselectedItemColor: unselectedItemColor,
      selectedLabelStyle: tt.labelSmall?.copyWith(color: selectedItemColor),
      unselectedLabelStyle: tt.labelSmall?.copyWith(color: unselectedItemColor),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: const AppIcon(materialIcon: Icons.home_outlined),
          activeIcon: const AppIcon(materialIcon: Icons.home_rounded),
          label: context.l10n.nav_nav_home,
        ),
        BottomNavigationBarItem(
          icon: const _CartBadgeIcon(
            isActive: false,
            baseIcon: Icons.shopping_cart_outlined,
          ),
          activeIcon: const _CartBadgeIcon(
            isActive: true,
            baseIcon: Icons.shopping_cart_rounded,
          ),
          label: context.l10n.nav_nav_cart,
        ),
        BottomNavigationBarItem(
          icon: const AppIcon(materialIcon: Icons.favorite_outline),
          activeIcon: const AppIcon(materialIcon: Icons.favorite_rounded),
          label: context.l10n.nav_nav_favorite,
        ),
        BottomNavigationBarItem(
          icon: _ProfileNavIcon(avatarUrl: avatarUrl, isActive: false),
          activeIcon: _ProfileNavIcon(avatarUrl: avatarUrl, isActive: true),
          label: context.l10n.nav_nav_profile,
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Private icon widgets
// ---------------------------------------------------------------------------

/// Cart icon with a badge — has its own tight [BlocSelector] on [cartCount]
/// so only the badge rebuilds, not the navigation bar.
class _CartBadgeIcon extends StatelessWidget {
  const _CartBadgeIcon({
    required this.isActive,
    required this.baseIcon,
    this.cupertinoIcon,
  });

  final bool isActive;
  final IconData baseIcon;
  final IconData? cupertinoIcon;

  @override
  Widget build(BuildContext context) {
    final isIOS = context.isIOS;
    return BlocSelector<CartBloc, CartState, int>(
      selector: (state) => state.cartCount,
      builder: (context, cartCount) => Badge(
        label: cartCount > 0
            ? Text(
                cartCount.toString(),
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colors.onError,
                  fontWeight: FontWeight.bold,
                ),
              )
            : null,
        isLabelVisible: cartCount > 0,
        child: isIOS && cupertinoIcon != null
            ? Icon(cupertinoIcon)
            : AppIcon(materialIcon: baseIcon),
      ),
    );
  }
}

/// Profile icon — shows the user's avatar when available, falls back to a
/// person icon. Receives [avatarUrl] from the parent [_NavBar] selector so
/// no additional bloc subscription is created here.
class _ProfileNavIcon extends StatelessWidget {
  const _ProfileNavIcon({
    required this.avatarUrl,
    required this.isActive,
  });

  final String? avatarUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (avatarUrl != null && avatarUrl!.isNotEmpty) {
      return CommonImage(
        width: 26,
        height: 22,
        memCacheHeight: 22 * 3,
        imageUrl: avatarUrl!,
        fit: BoxFit.cover,
        borderRadius: BorderRadius.circular(16.r),
      );
    }
    return AppIcon(
        materialIcon: isActive ? Icons.person_rounded : Icons.person_outline);
  }
}

// ---------------------------------------------------------------------------
// Exit overlay
// ---------------------------------------------------------------------------

class _ExitConfirmOverlay extends StatefulWidget {
  const _ExitConfirmOverlay({
    required this.message,
    required this.duration,
  });

  final String message;
  final Duration duration;

  @override
  State<_ExitConfirmOverlay> createState() => _ExitConfirmOverlayState();
}

class _ExitConfirmOverlayState extends State<_ExitConfirmOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _fadeAnimation;

  static const _animDuration = Duration(milliseconds: 250);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _animDuration);

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
      reverseCurve: Curves.easeInBack,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
      reverseCurve: Curves.easeOut,
    );

    _controller.forward();

    // Begin fade-out slightly before the overlay is removed so the animation
    // completes before the entry is pulled from the overlay stack.
    Future.delayed(widget.duration - _animDuration, () {
      if (mounted) _controller.reverse();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 32.w),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: cs.inverseSurface.withValues(alpha: 0.95),
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    widget.message,
                    style: context.theme.textTheme.bodyMedium?.copyWith(
                      color: cs.onInverseSurface,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
