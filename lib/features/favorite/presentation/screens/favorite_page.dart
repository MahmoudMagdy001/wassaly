import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_state.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

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
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              AppSliverTopBar(
                title: context.l10n.favorite_favorite_title,
                centerTitle: true,
                pinned: true,
                floating: true,
                snap: true,
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
            ];
          },
          body: const TabBarView(
            children: [
              _ProductFavoritesTab(),
              _ServiceFavoritesTab(),
            ],
          ),
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

    return BlocSelector<FavoriteBloc, FavoriteState,
        (FavoriteStatus, PaginatedResponse<ProductEntity>, Failure?)>(
      selector: (state) => (state.status, state.favorites, state.failure),
      builder: (context, data) {
        final (status, favorites, failure) = data;
        final isLoading = status == FavoriteStatus.loading;
        final isError = status == FavoriteStatus.error;

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
              if (isLoading || favorites.data.isNotEmpty)
                AppProductsSection(
                  isLoading: isLoading,
                  products: isLoading ? const [] : favorites.data,
                  padding:
                      EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
                  mainAxisExtent: 230.h,
                )
              else if (isError && favorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppErrorWidget.failure(
                      failure: failure!,
                      onRetry: () => context
                          .read<FavoriteBloc>()
                          .add(const GetFavoritesEvent()),
                    ),
                  ),
                )
              else if (favorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppEmptyState(
                      icon: Icons.favorite_outline,
                      title: context.l10n.favorite_no_favorites,
                      subtitle: context.l10n.favorite_no_favorites_subtitle,
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

class _ServiceFavoritesTab extends StatelessWidget {
  const _ServiceFavoritesTab();

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return BlocSelector<FavoriteBloc, FavoriteState,
        (FavoriteStatus, PaginatedResponse<ServiceEntity>, Failure?)>(
      selector: (state) =>
          (state.status, state.serviceFavorites, state.failure),
      builder: (context, data) {
        final (status, serviceFavorites, failure) = data;
        final isLoading = status == FavoriteStatus.loading;
        final isError = status == FavoriteStatus.error;

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
              if (isLoading || serviceFavorites.data.isNotEmpty)
                AppServicesSection(
                  isLoading: isLoading,
                  services: isLoading ? const [] : serviceFavorites.data,
                  padding:
                      EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
                  mainAxisExtent: 190.h,
                )
              else if (isError && serviceFavorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppErrorWidget.failure(
                      failure: failure!,
                      onRetry: () => context
                          .read<FavoriteBloc>()
                          .add(const GetServiceFavoritesEvent()),
                    ),
                  ),
                )
              else if (serviceFavorites.data.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: AppEmptyState(
                      icon: Icons.favorite_outline,
                      title: context.l10n.favorite_no_favorites,
                      subtitle: context.l10n.favorite_no_favorites_subtitle,
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
