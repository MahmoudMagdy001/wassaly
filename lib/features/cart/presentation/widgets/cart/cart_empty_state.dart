import 'package:wassaly/core/imports/imports.dart';

class CartEmptyState extends StatelessWidget {
  const CartEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon with a soft background
            Container(
              padding: EdgeInsets.all(30.r),
              decoration: BoxDecoration(
                color: cs.primary.withValues(alpha: 0.05),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.shopping_basket_outlined,
                size: 80.r,
                color: cs.primary.withValues(alpha: 0.4),
              ),
            )
                .animate()
                .scale(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeOutBack)
                .fadeIn(),

            32.verticalSpace,

            // Title
            Text(
              context.l10n.cart_empty_title,
              style: tt.headlineSmall?.copyWith(
                fontWeight: FontWeight.w900,
                color: cs.onSurface,
                letterSpacing: -0.5,
              ),
              textAlign: TextAlign.center,
            )
                .animate()
                .slideY(begin: 0.2, duration: const Duration(milliseconds: 400))
                .fadeIn(),

            12.verticalSpace,

            // Subtitle
            Text(
              context.l10n.cart_empty_subtitle,
              style: tt.bodyLarge?.copyWith(
                color: cs.onSurfaceVariant.withValues(alpha: 0.7),
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            )
                .animate()
                .slideY(
                    begin: 0.3,
                    delay: const Duration(milliseconds: 100),
                    duration: const Duration(milliseconds: 400))
                .fadeIn(),
          ],
        ),
      ),
    );
  }
}
