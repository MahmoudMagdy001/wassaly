import 'package:wassaly/core/imports/imports.dart';

class ServiceItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ServiceItem({
    required this.name,
    required this.imageUrl,
    super.key,
  });

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
            clipBehavior: Clip.hardEdge,
            child: CommonImage(
              imageUrl: imageUrl,
              memCacheWidth: 64 * 3,
              memCacheHeight: 64 * 3,
            ),
          ),
          4.verticalSpace,
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
