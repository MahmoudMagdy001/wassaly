import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          24.verticalSpace,
          Text(
            'cart.empty_title'.tr(),
            style: tt.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          8.verticalSpace,
          Text(
            'cart.empty_subtitle'.tr(),
            style: tt.bodyMedium?.copyWith(
              color: cs.onSurface.withValues(alpha: 0.5),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
