import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_state.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';
import 'package:wassaly/features/sub_category/presentation/widgets/service_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _FavoriteView();
  }
}

class _FavoriteView extends StatefulWidget {
  const _FavoriteView();

  @override
  State<_FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<_FavoriteView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final state = context.read<FavoriteBloc>().state;

    if (state.favorites.data.isEmpty && !state.isLoading) {
      context.read<FavoriteBloc>().add(const GetFavoritesEvent());
    }
    if (state.serviceFavorites.data.isEmpty && !state.isLoading) {
      context.read<FavoriteBloc>().add(const GetServiceFavoritesEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: cs.surface,
          elevation: 0,
          centerTitle: true,
          title: Text(
            context.l10n.favorite_favorite_title,
            style: context.typography.titleLarge?.copyWith(
              color: cs.primary,
            ),
          ),
          bottom: TabBar(
            labelColor: cs.primary,
            unselectedLabelColor: cs.onSurfaceVariant,
            indicatorColor: cs.primary,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: context.l10n.favorite_products),
              Tab(text: context.l10n.favorite_services),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _ProductFavoritesTab(),
            _ServiceFavoritesTab(),
          ],
        ),
      ),
    );
  }
}

class _ProductFavoritesTab extends StatelessWidget {
  const _ProductFavoritesTab();

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return BlocBuilder<FavoriteBloc, FavoriteState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.favorites != current.favorites ||
          previous.failure != current.failure,
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            final bloc = context.read<FavoriteBloc>();
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
              if (state.isLoading && state.favorites.data.isEmpty)
                Skeletonizer.sliver(
                  enabled: true,
                  ignoreContainers: true,
                  child: SliverProductGrid<ProductEntity>(
                    items: List.generate(
                      4,
                      (index) => const ProductEntity(
                        id: 0,
                        name: 'Skeleton Loading',
                        image: '',
                        price: '0',
                        description: 'Skeleton',
                        offers: [],
                        reviews: [],
                        isFavorite: true,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
                    itemBuilder: (context, product, index, wrapAnimation) {
                      return wrapAnimation(ProductCard(product: product));
                    },
                  ),
                )
              else if (state.isError && state.favorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppErrorWidget.failure(
                      failure: state.failure!,
                      onRetry: () => context
                          .read<FavoriteBloc>()
                          .add(const GetFavoritesEvent()),
                    ),
                  ),
                )
              else if (state.favorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppEmptyState(
                      icon: Icons.favorite_outline,
                      title: context.l10n.favorite_no_favorites,
                      subtitle: context.l10n.favorite_no_favorites_subtitle,
                    ),
                  ),
                )
              else
                SliverProductGrid<ProductEntity>(
                  items: state.favorites.data,
                  itemKey: (product) => ValueKey('prod_${product.id}'),
                  animateItems: false,
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
                  itemBuilder: (context, product, index, wrapAnimation) {
                    return wrapAnimation(ProductCard(product: product));
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}

class _ServiceFavoritesTab extends StatelessWidget {
  const _ServiceFavoritesTab();

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return BlocBuilder<FavoriteBloc, FavoriteState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.serviceFavorites != current.serviceFavorites ||
          previous.failure != current.failure,
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {
            final bloc = context.read<FavoriteBloc>();
            bloc.add(const GetServiceFavoritesEvent());
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
              if (state.isLoading && state.serviceFavorites.data.isEmpty)
                Skeletonizer.sliver(
                  enabled: true,
                  ignoreContainers: true,
                  child: SliverProductGrid<ServiceEntity>(
                    items: List.generate(
                      4,
                      (index) => const ServiceEntity(
                        id: 0,
                        title: 'Skeleton Loading',
                        image: '',
                        price: 0,
                        description: 'Skeleton',
                        isFavorite: true,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
                    itemBuilder: (context, service, index, wrapAnimation) {
                      return wrapAnimation(ServiceCard(service: service));
                    },
                  ),
                )
              else if (state.isError && state.serviceFavorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppErrorWidget.failure(
                      failure: state.failure!,
                      onRetry: () => context
                          .read<FavoriteBloc>()
                          .add(const GetServiceFavoritesEvent()),
                    ),
                  ),
                )
              else if (state.serviceFavorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppEmptyState(
                      icon: Icons.favorite_outline,
                      title: context.l10n.favorite_no_favorites,
                      subtitle: context.l10n.favorite_no_favorites_subtitle,
                    ),
                  ),
                )
              else
                SliverProductGrid<ServiceEntity>(
                  items: state.serviceFavorites.data,
                  itemKey: (service) => ValueKey('serv_${service.id}'),
                  animateItems: false,
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
                  itemBuilder: (context, service, index, wrapAnimation) {
                    return wrapAnimation(ServiceCard(service: service));
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
