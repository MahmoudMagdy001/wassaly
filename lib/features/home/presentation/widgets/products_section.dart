import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

import '../../domain/entities/offer_entity.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/entities/review_entity.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import 'product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.productsStatus != current.productsStatus ||
          previous.products != current.products,
      builder: (context, state) {
        if (state.productsStatus == HomeStatus.loading ||
            state.productsStatus == HomeStatus.initial) {
          return _buildSkeleton(cs, tt);
        } else if (state.productsStatus == HomeStatus.failure &&
            state.products.data.isEmpty) {
          return const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          );
        } else if (state.products.data.isEmpty &&
            state.productsStatus == HomeStatus.success) {
          return const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          );
        }

        final products = state.products.data;

        return SliverMainAxisGroup(
          slivers: [
            // Header
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'منتجات مختارة'.tr(),
                      style: tt.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Grid
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 6.h,
                  crossAxisSpacing: 6.w,
                  childAspectRatio: 0.59,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    // Trigger load more when reaching the end
                    if (index >= products.length - 1 &&
                        state.products.hasMore) {
                      context.read<HomeBloc>().add(LoadMoreProductsEvent());
                    }

                    final product = products[index];
                    return ProductCard(
                      product: product,
                      onTap: () {
                        // TODO: Navigate to product details
                      },
                      onFavoriteTap: () {
                        // TODO: Toggle favorite
                      },
                      onAddToCartTap: () {
                        // TODO: Add to cart
                      },
                    ).animate().fadeIn(
                          delay: Duration(milliseconds: 50 * (index % 4)),
                          duration: const Duration(milliseconds: 300),
                        );
                  },
                  childCount: products.length,
                ),
              ),
            ),

            // Load more indicator
            if (state.products.hasMore)
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildSkeleton(ColorScheme cs, TextTheme tt) {
    final dummyProducts = List.generate(
      4,
      (index) => const ProductEntity(
        id: 0,
        name: 'منتج تجريبي',
        image: '',
        price: '100',
        description: 'وصف تجريبي',
        offers: [OfferEntity(id: 0, discountPercentage: 10)],
        reviews: [
          ReviewEntity(id: 0, rating: 5, comment: 'ممتاز', createdAt: ''),
        ],
        isFavorite: false,
      ),
    );

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text(
              'منتجات مختارة',
              style: tt.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: cs.primary,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: AppSpacing.xs.verticalSpace,
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          sliver: Skeletonizer.sliver(
            enabled: true,
            child: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 6.h,
                crossAxisSpacing: 6.w,
                childAspectRatio: 0.59,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProductCard(product: dummyProducts[index]);
                },
                childCount: dummyProducts.length,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
