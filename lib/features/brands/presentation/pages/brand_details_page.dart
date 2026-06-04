import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/brands/presentation/bloc/brands_bloc.dart';
import 'package:wassaly/features/brands/presentation/bloc/brands_event.dart';
import 'package:wassaly/features/brands/presentation/bloc/brands_state.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

class BrandDetailsPage extends StatelessWidget {
  final int brandId;
  final String brandName;
  final String brandImage;

  const BrandDetailsPage({
    required this.brandId, required this.brandName, required this.brandImage, super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
      create: (context) =>
          sl<BrandsBloc>()..add(GetBrandProductsEvent(brandId: brandId)),
      child: BrandDetailsView(
        brandId: brandId,
        brandName: brandName,
        brandImage: brandImage,
      ),
    );
}

class BrandDetailsView extends StatelessWidget {
  final int brandId;
  final String brandName;
  final String brandImage;

  const BrandDetailsView({
    required this.brandId, required this.brandName, required this.brandImage, super.key,
  });

  void _onLoadMore(BuildContext context, BrandProductsStatus status) {
    if (status != BrandProductsStatus.loading) {
      context
          .read<BrandsBloc>()
          .add(LoadMoreBrandProductsEvent(brandId: brandId));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: CustomScrollView(
        slivers: [
          AppSliverTopBar(
            titleWidget: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    color: cs.surfaceContainerLow,
                    shape: BoxShape.circle,
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: CommonImage(
                    width: 32,
                    height: 32,
                    memCacheWidth: 32 * 3,
                    memCacheHeight: 32 * 3,
                    imageUrl: brandImage,
                    fit: BoxFit.contain,
                  ),
                ),
                8.horizontalSpace,
                Text(
                  brandName,
                  style: tt.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: cs.primary,
                  ),
                ),
              ],
            ),
          ),
          BlocSelector<BrandsBloc, BrandsState,
              (BrandProductsStatus, List<ProductEntity>, bool, String)>(
            selector: (state) => (
              state.productsStatus,
              state.products,
              state.hasReachedMax,
              state.productsErrorMessage,
            ),
            builder: (context, data) {
              final (
                productsStatus,
                products,
                hasReachedMax,
                productsErrorMessage
              ) = data;

              final isLoading = productsStatus == BrandProductsStatus.loading &&
                  products.isEmpty;

              if (isLoading || products.isNotEmpty) {
                return AppProductsSection(
                  isLoading: isLoading,
                  products: isLoading ? const [] : products,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  hasMore: !isLoading && !hasReachedMax,
                  isLoadingMore: !isLoading && (productsStatus == BrandProductsStatus.loading),
                  mainAxisExtent: 240.h,
                  onLoadMore: isLoading
                      ? null
                      : () => _onLoadMore(context, productsStatus),
                );
              }

              if (productsStatus == BrandProductsStatus.failure) {
                return SliverFillRemaining(
                  child: AppErrorWidget(
                    message: productsErrorMessage,
                    onRetry: () => context
                        .read<BrandsBloc>()
                        .add(GetBrandProductsEvent(brandId: brandId)),
                  ),
                );
              }

              return SliverFillRemaining(
                child: AppEmptyState(
                  title: l10n.no_brand_products,
                  icon: Icons.inventory_2_outlined,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
