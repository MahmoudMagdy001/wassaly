import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';

import '../bloc/products_filter_bloc.dart';
import '../bloc/products_filter_event.dart';
import '../bloc/products_filter_state.dart';
import 'filter_options_sheet.dart';

class ProductsFilterPage extends StatefulWidget {
  final ProductFilterParams? initialParams;

  const ProductsFilterPage({
    super.key,
    this.initialParams,
  });

  @override
  State<ProductsFilterPage> createState() => _ProductsFilterPageState();
}

class _ProductsFilterPageState extends State<ProductsFilterPage> {
  @override
  void initState() {
    super.initState();
    // Dispatch events to fetch categories and filter products
    final bloc = context.read<ProductsFilterBloc>();
    bloc.add(const FetchFilterCategoriesEvent());
    bloc.add(
      FilterProductsEvent(
        params: widget.initialParams ?? const ProductFilterParams(),
      ),
    );
  }

  void _openFilterSheet(BuildContext context, ProductsFilterState state) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => BlocProvider.value(
        value: context.read<ProductsFilterBloc>(),
        child: FilterOptionsSheet(
          initialParams: state.params,
          categories: state.categories,
          onApply: (newParams) {
            context.read<ProductsFilterBloc>().add(
                  FilterProductsEvent(params: newParams),
                );
          },
        ),
      ),
    );
  }

  void _removeCategory(ProductsFilterBloc bloc) {
    final updated = bloc.state.params.copyWith(clearCategory: true);
    bloc.add(FilterProductsEvent(params: updated));
  }

  void _removePrice(ProductsFilterBloc bloc) {
    final updated = ProductFilterParams(
      categoryId: bloc.state.params.categoryId,
      specialOffers: bloc.state.params.specialOffers,
      ratings: bloc.state.params.ratings,
      sort: bloc.state.params.sort,
    );
    bloc.add(FilterProductsEvent(params: updated));
  }

  void _removeRating(ProductsFilterBloc bloc) {
    final updated = ProductFilterParams(
      categoryId: bloc.state.params.categoryId,
      minPrice: bloc.state.params.minPrice,
      maxPrice: bloc.state.params.maxPrice,
      specialOffers: bloc.state.params.specialOffers,
      sort: bloc.state.params.sort,
    );
    bloc.add(FilterProductsEvent(params: updated));
  }

  void _removeSpecialOffers(ProductsFilterBloc bloc) {
    final updated = ProductFilterParams(
      categoryId: bloc.state.params.categoryId,
      minPrice: bloc.state.params.minPrice,
      maxPrice: bloc.state.params.maxPrice,
      ratings: bloc.state.params.ratings,
      sort: bloc.state.params.sort,
    );
    bloc.add(FilterProductsEvent(params: updated));
  }

  void _removeSort(ProductsFilterBloc bloc) {
    final updated = ProductFilterParams(
      categoryId: bloc.state.params.categoryId,
      minPrice: bloc.state.params.minPrice,
      maxPrice: bloc.state.params.maxPrice,
      ratings: bloc.state.params.ratings,
      specialOffers: bloc.state.params.specialOffers,
    );
    bloc.add(FilterProductsEvent(params: updated));
  }

  String _getSortLabel(BuildContext context, String sort) {
    return switch (sort) {
      'price_asc' => context.l10n.filter_sort_price_asc,
      'price_desc' => context.l10n.filter_sort_price_desc,
      'rating_desc' => context.l10n.filter_sort_rating_desc,
      'newest' => context.l10n.filter_sort_newest,
      _ => sort,
    };
  }

  Widget _buildFilterChips(BuildContext context, ProductsFilterState state) {
    final cs = context.theme.colorScheme;
    final bloc = context.read<ProductsFilterBloc>();
    final chips = <Widget>[];

    // Category Chip
    if (state.params.categoryId != null && state.categories.isNotEmpty) {
      final cat = state.categories.firstWhere(
        (c) => c.id == state.params.categoryId,
        orElse: () => const CategoryEntity(id: 0, name: '', image: ''),
      );
      if (cat.id != 0) {
        chips.add(
          InputChip(
            label: Text(cat.name),
            onDeleted: () => _removeCategory(bloc),
            deleteIconColor: cs.primary,
          ),
        );
      }
    }

    // Price Chip
    if (state.params.minPrice != null || state.params.maxPrice != null) {
      final minStr = state.params.minPrice?.toStringAsFixed(0) ?? '0';
      final maxStr = state.params.maxPrice?.toStringAsFixed(0) ?? '∞';
      chips.add(
        InputChip(
          label: Text('$minStr - $maxStr ${context.l10n.shared_currency_egp}'),
          onDeleted: () => _removePrice(bloc),
          deleteIconColor: cs.primary,
        ),
      );
    }

    // Ratings Chip
    if (state.params.ratings != null && state.params.ratings!.isNotEmpty) {
      final ratingsStr = state.params.ratings!.join(', ');
      chips.add(
        InputChip(
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(ratingsStr),
              2.horizontalSpace,
              Icon(Icons.star_rounded, size: 14.r, color: cs.secondary),
            ],
          ),
          onDeleted: () => _removeRating(bloc),
          deleteIconColor: cs.primary,
        ),
      );
    }

    // Special Offers Chip
    if (state.params.specialOffers ?? false) {
      chips.add(
        InputChip(
          label: Text(context.l10n.filter_special_offers),
          onDeleted: () => _removeSpecialOffers(bloc),
          deleteIconColor: cs.primary,
        ),
      );
    }

    // Sort Chip
    if (state.params.sort != null) {
      chips.add(
        InputChip(
          label: Text(_getSortLabel(context, state.params.sort!)),
          onDeleted: () => _removeSort(bloc),
          deleteIconColor: cs.primary,
        ),
      );
    }

    if (chips.isEmpty) return const SliverToBoxAdapter();

    return SliverToBoxAdapter(
      child: Container(
        height: 50.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: chips.length,
          separatorBuilder: (_, __) => 8.horizontalSpace,
          itemBuilder: (_, index) => chips[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return BlocBuilder<ProductsFilterBloc, ProductsFilterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: cs.surface,
          floatingActionButton: FloatingActionButton(
            onPressed: () => _openFilterSheet(context, state),
            backgroundColor: cs.primary,
            foregroundColor: cs.onPrimary,
            child: Icon(
              Icons.filter_list_rounded,
              size: 28.r,
            ),
          ),
          body: CustomScrollView(
            slivers: [
              AppSliverTopBar(
                title: context.l10n.filter_title,
                automaticallyImplyLeading: true,
                actions: [
                  if (!state.params.isEmpty)
                    IconButton(
                      icon: Icon(Icons.refresh_rounded, color: cs.primary),
                      onPressed: () => context
                          .read<ProductsFilterBloc>()
                          .add(const ResetFiltersEvent()),
                    ),
                ],
              ),
              _buildFilterChips(context, state),
              if (state.status.isLoading)
                const SliverFillRemaining(
                  child: Center(
                    child: AppLoading(),
                  ),
                )
              else if (state.status.isFailure)
                SliverFillRemaining(
                  child: Center(
                    child: AppErrorWidget(
                      message: state.errorMessage ??
                          context.l10n.errors_something_went_wrong,
                      onRetry: () => context.read<ProductsFilterBloc>().add(
                            FilterProductsEvent(params: state.params),
                          ),
                    ),
                  ),
                )
              else if (state.status.isSuccess && state.products.isEmpty)
                SliverFillRemaining(
                  child: Center(
                    child: AppEmptyState(
                      title: context.l10n.filter_no_products,
                      subtitle: context.l10n.search_try_different_search,
                      icon: Icons.filter_alt_off_rounded,
                    ),
                  ),
                )
              else if (state.status.isSuccess || state.isLoadMoreLoading) ...[
                AppSliverGrid<ProductEntity>(
                  items: state.products,
                  hasMore: state.hasMore,
                  onLoadMore: () {
                    context.read<ProductsFilterBloc>().add(
                          FilterProductsEvent(
                            params: state.params,
                            isLoadMore: true,
                          ),
                        );
                  },
                  itemBuilder: (context, product, index, wrapAnimation) {
                    return wrapAnimation(
                      ProductCard(product: product),
                    );
                  },
                ),
                if (state.isLoadMoreLoading)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: const Center(
                        child: AppLoading(),
                      ),
                    ),
                  ),
              ] else
                SliverFillRemaining(
                  child: Center(
                    child: AppEmptyState(
                      title: context.l10n.filter_title,
                      subtitle: context.l10n.search_search_hint,
                      icon: Icons.filter_alt_rounded,
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
