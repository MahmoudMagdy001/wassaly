import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: Column(
        children: [
          Container(
            width: 64.w,
            height: 64.w,
            decoration: BoxDecoration(
              color: cs.surfaceContainerLow,
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.antiAlias,
            child: AppCachedImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          AppSpacing.xs.verticalSpace,
          Text(
            name,
            style: tt.bodySmall?.copyWith(
              color: cs.onSurface,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
