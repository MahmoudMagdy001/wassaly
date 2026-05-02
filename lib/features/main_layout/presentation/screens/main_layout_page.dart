import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';

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
      bottomNavigationBar: BlocBuilder<SessionBloc, SessionState>(
        buildWhen: (prev, curr) {
          // Rebuild when state type changes (e.g., SessionLoading -> SessionAuthenticated)
          if (prev.runtimeType != curr.runtimeType) return true;
          // Rebuild when avatar URL changes
          final prevAvatar =
              prev is SessionAuthenticated ? prev.user.avatarUrl : null;
          final currAvatar =
              curr is SessionAuthenticated ? curr.user.avatarUrl : null;
          return prevAvatar != currAvatar;
        },
        builder: (context, state) {
          final avatarUrl =
              state is SessionAuthenticated ? state.user.avatarUrl : null;

          return BottomNavigationBar(
            currentIndex: navigationShell.currentIndex,
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
                label: 'nav.nav_home'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.category_outlined),
                activeIcon: const Icon(Icons.category_rounded),
                label: 'nav.nav_category'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.favorite_outline),
                activeIcon: const Icon(Icons.favorite_rounded),
                label: 'nav.nav_favorite'.tr(),
              ),
              BottomNavigationBarItem(
                icon: avatarUrl != null && avatarUrl.isNotEmpty
                    ? SizedBox(
                        width: 26.w,
                        height: 22.h,
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: avatarUrl,
                            fit: BoxFit.cover,
                            placeholder: (_, __) => Container(
                              color: cs.surface,
                            ),
                            errorWidget: (_, __, ___) => Icon(
                              Icons.person_outline,
                              size: 20.r,
                            ),
                          ),
                        ),
                      )
                    : const Icon(Icons.person_outline),
                activeIcon: avatarUrl != null && avatarUrl.isNotEmpty
                    ? SizedBox(
                        width: 26.w,
                        height: 22.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: cs.primary,
                              width: 2.w,
                            ),
                          ),
                          child: ClipOval(
                            child: CachedNetworkImage(
                              imageUrl: avatarUrl,
                              fit: BoxFit.cover,
                              placeholder: (_, __) => Container(
                                color: cs.surface,
                              ),
                              errorWidget: (_, __, ___) => Icon(
                                Icons.person_rounded,
                                size: 20.w,
                              ),
                            ),
                          ),
                        ),
                      )
                    : const Icon(Icons.person_rounded),
                label: 'nav.nav_profile'.tr(),
              ),
            ],
          );
        },
      ),
    );
  }
}
