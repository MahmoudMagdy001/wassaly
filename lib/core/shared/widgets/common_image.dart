import 'package:wassaly/core/imports/imports.dart';

/// A multi-purpose image widget that handles network images, SVGs, and local assets.
///
/// Automatically uses [CachedNetworkImage] for absolute http URLs and relative
/// API paths (starting with `/`). Relative paths are resolved against [AppConfig.baseUrl].
/// Automatically uses [SvgPicture] for SVG files.
class CommonImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? color;
  final Widget? placeholder;
  final Widget? errorWidget;
  final BorderRadius? borderRadius;
  final int? memCacheHeight;
  final int? memCacheWidth;

  const CommonImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.color,
    this.placeholder,
    this.errorWidget,
    this.borderRadius,
    this.memCacheHeight,
    this.memCacheWidth,
  });

  /// Resolves a potentially relative path to an absolute URL.
  /// e.g. "/storage/images/foo.jpg" → "https://wasly.bynona.store/storage/images/foo.jpg"
  String get _resolvedUrl {
    if (imageUrl.startsWith('http')) return imageUrl;
    if (imageUrl.startsWith('/')) return '${AppConfig.baseUrl}$imageUrl';
    return imageUrl;
  }

  @override
  Widget build(BuildContext context) {
    final double? adjustedWidth = width?.w;
    final double? adjustedHeight = height?.h;
    final resolved = _resolvedUrl;

    Widget image;

    if (resolved.startsWith('http')) {
      image = AppCachedImage(
        imageUrl: resolved,
        width: width,
        height: height,
        memCacheHeight: memCacheHeight,
        memCacheWidth: memCacheWidth,
        fit: fit,
        color: color,
        placeholder: placeholder,
        errorWidget: errorWidget,
        borderRadius: borderRadius,
      );
    } else if (resolved.endsWith('.svg')) {
      image = SvgPicture.asset(
        resolved,
        width: adjustedWidth,
        height: adjustedHeight,
        fit: fit,
        colorFilter:
            color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      );
    } else {
      image = Image.asset(
        resolved,
        cacheHeight: memCacheHeight,
        cacheWidth: memCacheWidth,
        width: adjustedWidth,
        height: adjustedHeight,
        fit: fit,
        color: color,
        errorBuilder: (context, error, stackTrace) =>
            errorWidget ?? _buildDefaultErrorWidget(),
      );
    }

    if (borderRadius != null) {
      return ClipRRect(
        borderRadius: borderRadius!,
        child: image,
      );
    }

    return image;
  }

  Widget _buildDefaultErrorWidget() {
    return Container(
      width: width,
      height: height,
      color: Colors.grey[200],
      child: const Icon(
        Icons.error_outline,
        color: Colors.grey,
      ),
    );
  }
}
