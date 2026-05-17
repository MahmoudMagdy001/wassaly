import 'package:wassaly/core/imports/imports.dart';

class AppSliverTopBar extends StatelessWidget {
  const AppSliverTopBar({
    super.key,
    this.title,
    this.titleWidget,
    this.actions,
    this.centerTitle = true,
    this.onPressed,
    this.isTransparent = false,
    this.showLogo = false,
    this.pinned = false,
    this.floating = true,
    this.snap = true,
    this.bottom,
    this.automaticallyImplyLeading = true,
  });

  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final VoidCallback? onPressed;
  final bool centerTitle;
  final bool isTransparent;
  final bool showLogo;
  final bool pinned;
  final bool floating;
  final bool snap;
  final PreferredSizeWidget? bottom;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final isIOS = context.isIOS;
    String? currentPath;
    try {
      currentPath = GoRouterState.of(context).uri.path;
    } catch (_) {
      try {
        currentPath =
            GoRouter.of(context).routeInformationProvider.value.uri.path;
      } catch (_) {
        currentPath = null;
      }
    }
    final isShellRoute = currentPath == AppRoutes.home ||
        currentPath == AppRoutes.cart ||
        currentPath == AppRoutes.favorite ||
        currentPath == AppRoutes.profile;
    final canPop =
        automaticallyImplyLeading && (context.canPop() || !isShellRoute);
    final cs = theme.colorScheme;
    final tt = theme.textTheme;

    void handleBack() {
      if (onPressed != null) {
        onPressed!();
        return;
      }

      try {
        if (context.canPop()) {
          context.pop();
        } else {
          context.go(AppRoutes.home);
        }
      } catch (_) {
        if (context.mounted) {
          context.go(AppRoutes.home);
        }
      }
    }

    Widget buildTitle() {
      if (titleWidget != null) return titleWidget!;

      final List<Widget> children = [];

      if (showLogo) {
        children.add(
          CommonImage(
            imageUrl: AppAssets.logo,
            height: 45.h,
            // memCacheHeight: 40 * 3,
            fit: BoxFit.cover,
          ),
        );
      }

      if (title != null && title!.isNotEmpty) {
        if (showLogo) children.add(8.horizontalSpace);
        children.add(
          Flexible(
            child: Text(
              title!,
              style: tt.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: cs.primary,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      }

      if (children.isEmpty) return const SizedBox.shrink();

      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:
            centerTitle ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: children,
      );
    }

    if (isIOS) {
      return SliverSafeArea(
        bottom: false,
        sliver: SliverToBoxAdapter(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoNavigationBar(
                middle: buildTitle(),
                backgroundColor:
                    isTransparent ? Colors.transparent : cs.surface,
                border: bottom != null
                    ? null
                    : (isTransparent ? null : const Border()),
                leading: canPop
                    ? CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: handleBack,
                        child: Icon(
                          CupertinoIcons.back,
                          color: cs.primary,
                        ),
                      )
                    : const SizedBox.shrink(),
                trailing: actions != null && actions!.isNotEmpty
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: actions!,
                      )
                    : null,
              ),
              if (bottom != null) bottom!,
            ],
          ),
        ),
      );
    }

    return SliverAppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      pinned: pinned,
      floating: floating,
      snap: snap,
      centerTitle: centerTitle,
      elevation: 0,
      backgroundColor: isTransparent ? Colors.transparent : cs.surface,
      shadowColor: Colors.transparent,
      foregroundColor: cs.primary,
      title: buildTitle(),
      leadingWidth: canPop ? 40.w : null,
      leading: canPop
          ? GestureDetector(
              onTap: handleBack,
              child: ColoredBox(
                color: Colors.transparent,
                child: Icon(
                  Icons.arrow_back,
                  color: cs.primary,
                ),
              ),
            )
          : null,
      actions: actions ?? [],
      bottom: bottom,
    );
  }
}
