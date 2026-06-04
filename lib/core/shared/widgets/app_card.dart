import 'package:wassaly/core/imports/imports.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.padding,
    this.margin,
    this.onTap,
    this.showShadow = false,
    this.color,
  });

  final Widget child;
  final String? title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final bool showShadow;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    final cardColor = color ?? cs.surfaceContainerLow;

    final Widget content = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null || leading != null || trailing != null)
          Padding(
            padding: EdgeInsets.only(
              left: 12.w,
              right: 12.w,
              top: 8.h,
            ),
            child: Row(
              children: [
                if (leading != null) ...[leading!, 12.horizontalSpace],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: tt.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      10.verticalSpace,
                      if (subtitle != null)
                        Text(
                          subtitle!,
                          style: tt.bodySmall?.copyWith(
                            color: cs.onSurfaceVariant,
                          ),
                        ),
                    ],
                  ),
                ),
                if (trailing != null) trailing!,
              ],
            ),
          ),
        Padding(
          padding: padding ??
              EdgeInsets.fromLTRB(
                12.w,
                title == null ? 12.h : 0,
                12.w,
                12.h,
              ),
          child: child,
        ),
      ],
    );

    final cardWidget = Container(
      margin: margin,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12.r),
        border:
            showShadow ? null : Border.all(color: cs.outlineVariant),
        boxShadow: showShadow
            ? [
                BoxShadow(
                  color: cs.shadow.withValues(alpha: 0.08),
                  blurRadius: 8.r,
                  offset: const Offset(0, 2),
                ),
              ]
            : [
                BoxShadow(
                  color: cs.shadow.withValues(alpha: 0.05),
                  blurRadius: 4.r,
                  offset: const Offset(0, 2),
                ),
              ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: content,
      ),
    );

    if (onTap == null) return cardWidget;

    final isIOS = context.isIOS;

    if (isIOS) {
      return GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: cardWidget,
      );
    }

    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: showShadow
            ? [
                BoxShadow(
                  color: cs.shadow.withValues(alpha: 0.08),
                  blurRadius: 8.r,
                  offset: const Offset(0, 2),
                ),
              ]
            : [
                BoxShadow(
                  color: cs.shadow.withValues(alpha: 0.05),
                  blurRadius: 4.r,
                  offset: const Offset(0, 2),
                ),
              ],
      ),
      child: Material(
        color: cardColor,
        borderRadius: BorderRadius.circular(12.r),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12.r),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: showShadow
                    ? null
                    : Border.all(color: cs.outlineVariant),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: content,
            ),
          ),
        ),
      ),
    );
  }
}
