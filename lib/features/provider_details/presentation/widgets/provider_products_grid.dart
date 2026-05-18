import 'package:wassaly/core/imports/imports.dart';

import '../../../home/domain/entities/product_entity.dart';

class ProviderProductsGrid extends StatelessWidget {
  final List<ProductEntity> products;

  const ProviderProductsGrid({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(bottom: 16.h, top: 24.h),
            child: Text(
              context.l10n.order_products,
              style: context.theme.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        AppSliverGrid<ProductEntity>(
          items: products,
          padding: EdgeInsets.zero,
          childAspectRatio: 0.67,
          itemBuilder: (context, product, index, wrapAnimation) {
            return wrapAnimation(
              ProductCard(product: product),
            );
          },
        ),
      ],
    );
  }
}
