import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

import '../../../features/home/domain/entities/product_entity.dart';

/// A reusable product card widget for displaying product information.
///
/// Used across the app in grids, lists, and other product displays.
/// Features:
/// - Product image with cached loading
/// - Favorite toggle button
/// - Discount badge
/// - Rating display
/// - Price with original price strikethrough when discounted
/// - Action callbacks for tap, favorite, and add to cart
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.onFavoriteTap,
    this.onAddToCartTap,
  });

  final ProductEntity product;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onAddToCartTap;

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    final originalPrice = double.tryParse(product.price) ?? 0;
    final hasDiscount = product.hasOffer;
    final discountedPrice = product.discountedPrice;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: AppBorders.md,
          border: Border.all(
            color: cs.outlineVariant.withValues(alpha: 0.5),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section with favorite & discount badge
            _buildImageSection(cs),

            // Content section
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Description (small subtitle)
                    if (product.description.isNotEmpty)
                      Text(
                        product.description,
                        style: tt.labelSmall?.copyWith(
                          color: cs.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    AppSpacing.xxs.verticalSpace,

                    // Product name
                    Text(
                      product.name,
                      style: tt.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.onSurface,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AppSpacing.xxs.verticalSpace,

                    // Rating
                    if (product.reviewCount > 0)
                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            size: 16.r,
                            color: const Color(0xFFFFC107),
                          ),
                          AppSpacing.xxs.horizontalSpace,
                          Text(
                            product.averageRating.toStringAsFixed(1),
                            style: tt.labelSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: cs.onSurface,
                            ),
                          ),
                          AppSpacing.xxs.horizontalSpace,
                          Text(
                            '(${product.reviewCount})',
                            style: tt.labelSmall?.copyWith(
                              color: cs.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),

                    const Spacer(),

                    // Price + Cart button row
                    _buildPriceRow(
                      cs,
                      tt,
                      originalPrice,
                      discountedPrice,
                      hasDiscount,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection(ColorScheme cs) {
    return SizedBox(
      height: 140.h,
      width: double.infinity,
      child: Stack(
        children: [
          // Product image
          Positioned.fill(
            child: AppCachedImage(
              imageUrl: product.image,
              fit: BoxFit.cover,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(9.r),
              ),
            ),
          ),

          // Favorite button
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: onFavoriteTap,
              child: Container(
                margin: EdgeInsetsDirectional.symmetric(
                    horizontal: 6.w, vertical: 6.h),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: cs.surface.withValues(alpha: 0.9),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: cs.shadow.withValues(alpha: 0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  product.isFavorite
                      ? Icons.favorite_rounded
                      : Icons.favorite_outline_rounded,
                  size: 18.r,
                  color: product.isFavorite ? cs.error : cs.onSurfaceVariant,
                ),
              ),
            ),
          ),

          // Discount badge
          if (product.hasOffer)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsetsDirectional.symmetric(
                    horizontal: 6.w, vertical: 6.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 6.h,
                ),
                decoration: BoxDecoration(
                  color: cs.error,
                  borderRadius: AppBorders.xs,
                ),
                child: Text(
                  '${product.discountPercentage}%-',
                  style: TextStyle(
                    color: cs.onError,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPriceRow(
    ColorScheme cs,
    TextTheme tt,
    double originalPrice,
    double discountedPrice,
    bool hasDiscount,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Price column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (hasDiscount)
              Text(
                '${originalPrice.toStringAsFixed(0)} ${'ج.م'.tr()}',
                style: tt.labelSmall?.copyWith(
                  color: cs.onSurfaceVariant,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: cs.onSurfaceVariant,
                  fontSize: 10.sp,
                ),
              ),
            Text(
              '${(hasDiscount ? discountedPrice : originalPrice).toStringAsFixed(0)} ${'ج.م'.tr()}',
              style: tt.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: cs.onSurface,
              ),
            ),
          ],
        ),
        const Spacer(),

        GestureDetector(
          onTap: onAddToCartTap,
          child: Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: cs.primary,
              borderRadius: AppBorders.sm,
            ),
            child: Icon(
              Icons.remove_red_eye,
              size: 18.r,
              color: cs.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
