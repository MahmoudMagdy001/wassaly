import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.textTheme;

    return Scaffold(
      body: navigationShell,
      floatingActionButton: navigationShell.currentIndex == 3
          ? null
          : FloatingActionButton(
              onPressed: () => context.push(AppRoutes.cart),
              backgroundColor: context.appColors.success,
              foregroundColor: context.appColors.onSuccess,
              shape: const CircleBorder(),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Icons.shopping_cart_outlined),
                  Positioned(
                    top: -18.h,
                    right: -13.w,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: context.colors.error,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5.w,
                        ),
                      ),
                      child: Text(
                        '2',
                        style: tt.bodySmall?.copyWith(
                          color: context.colors.onError,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _onTap,
        backgroundColor: cs.surface,
        indicatorColor: cs.primaryContainer,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home_rounded),
            label: 'nav.nav_home'.tr(),
          ),
          NavigationDestination(
            icon: const Icon(Icons.category_outlined),
            selectedIcon: const Icon(Icons.category_rounded),
            label: 'nav.nav_category'.tr(),
          ),
          NavigationDestination(
            icon: const Icon(Icons.favorite_outline),
            selectedIcon: const Icon(Icons.favorite_rounded),
            label: 'nav.nav_favorite'.tr(),
          ),
          NavigationDestination(
            icon: const Icon(Icons.person_outline),
            selectedIcon: const Icon(Icons.person_rounded),
            label: 'nav.nav_profile'.tr(),
          ),
        ],
      ),
    );
  }
}
