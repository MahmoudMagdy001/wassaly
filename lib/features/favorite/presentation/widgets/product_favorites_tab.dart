import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_state.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

class ProductFavoritesTab extends StatelessWidget {
  const ProductFavoritesTab({super.key});
  // Manual ScrollController removed in favor of AppSliverGrid's built-in pagination

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return BlocSelector<FavoriteBloc, FavoriteState,
        (FavoriteStatus, PaginatedResponse<ProductEntity>, Failure?, bool)>(
      selector: (state) =>
          (state.status, state.favorites, state.failure, state.isLoadingMore),
      builder: (context, data) {
        final (status, favorites, failure, isLoadingMore) = data;
        final isLoading = status == FavoriteStatus.loading ||
            (status == FavoriteStatus.refreshing && favorites.data.isEmpty);
        final isError = status == FavoriteStatus.error;
        final bloc = context.read<FavoriteBloc>();
        final l10n = context.l10n;

        return RefreshIndicator(
          onRefresh: () async {
            bloc.add(const GetFavoritesEvent());
            await bloc.stream.firstWhere(
              (s) =>
                  s.status == FavoriteStatus.success ||
                  s.status == FavoriteStatus.error,
            );
          },
          color: cs.primary,
          backgroundColor: cs.surface,
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              if (isLoading || favorites.data.isNotEmpty)
                AppProductsSection(
                  isLoading: isLoading,
                  products: isLoading ? const [] : favorites.data,
                  hasMore: favorites.hasMore,
                  isLoadingMore: isLoadingMore,
                  onLoadMore: () => bloc.add(const LoadMoreFavoritesEvent()),
                  padding:
                      EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
                  mainAxisExtent: 230.h,
                )
              else if (isError && favorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppErrorWidget.failure(
                      failure:
                          failure ?? const UnknownFailure('An error occurred'),
                      onRetry: () => bloc.add(const GetFavoritesEvent()),
                    ),
                  ),
                )
              else if (favorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppEmptyState(
                      icon: Icons.favorite_outline,
                      title: l10n.favorite_no_products,
                      subtitle: l10n.favorite_no_products_subtitle,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
