import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/brands/presentation/widgets/brands_section.dart';
import 'package:wassaly/features/home/presentation/bloc/home_bloc.dart';
import 'package:wassaly/features/home/presentation/bloc/home_event.dart';
import 'package:wassaly/features/home/presentation/bloc/home_state.dart';
import 'package:wassaly/features/home/presentation/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>()
        ..add(GetBannersEvent())
        ..add(GetCategoriesEvent())
        ..add(GetPopularServicesEvent())
        ..add(GetProductsEvent()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: BlocSelector<HomeBloc, HomeState, (bool, bool, Failure?, String)>(
        selector: (state) => (
          state.allSectionsFailed,
          state.anySectionLoading,
          state.failure,
          state.errorMessage,
        ),
        builder: (context, data) {
          final (allSectionsFailed, anySectionLoading, failure, errorMessage) =
              data;

          return RefreshIndicator(
            onRefresh: () => _refreshAllSections(context),
            color: cs.primary,
            backgroundColor: cs.surface,
            child: CustomScrollView(
              slivers: [
                // Sliver AppBar
                AppSliverTopBar(
                  showLogo: true,
                  actions: [
                    IconButton(
                      icon: Icon(Icons.search, color: cs.primary),
                      onPressed: () {
                        context.push(AppRoutes.search);
                      },
                    ),
                  ],
                ),

                // Show global error state when all sections failed
                if (allSectionsFailed && !anySectionLoading) ...[
                  SliverPadding(
                    padding: EdgeInsets.only(top: 100.h),
                    sliver: SliverFillRemaining(
                      child: failure != null
                          ? AppErrorWidget.failure(
                              failure: failure,
                              onRetry: () => _refreshAllSections(context),
                            )
                          : AppErrorWidget(
                              title: context.l10n.errors_no_internet_title,
                              message: errorMessage.isNotEmpty
                                  ? errorMessage
                                  : context.l10n.errors_no_internet_message,
                              onRetry: () => _refreshAllSections(context),
                              icon: Icons.wifi_off_rounded,
                            ),
                    ),
                  ),
                ] else ...[
                  // Banner
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: const HomeBanner(),
                    ),
                  ),
                  // Spacing
                  SliverToBoxAdapter(
                    child: 16.verticalSpace,
                  ),
                  // Popular Services
                  const PopularServicesSection(),

                  // Main Categories
                  const SliverToBoxAdapter(
                    child: MainCategoriesSection(),
                  ),

                  // Spacing
                  SliverToBoxAdapter(
                    child: 16.verticalSpace,
                  ),

                  // Brands
                  const BrandsSection(),

                  // Products
                  const ProductsSection(),

                  // Bottom spacing
                  SliverToBoxAdapter(
                    child: 24.verticalSpace,
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _refreshAllSections(BuildContext context) async {
    final bloc = context.read<HomeBloc>();
    final startTime = DateTime.now();

    bloc.add(GetBannersEvent());
    bloc.add(GetCategoriesEvent());
    bloc.add(GetPopularServicesEvent());
    bloc.add(GetProductsEvent());

    // Wait for all sections to finish loading
    await bloc.stream.firstWhere((state) =>
        state.bannersStatus != HomeStatus.loading &&
        state.categoriesStatus != HomeStatus.loading &&
        state.popularServicesStatus != HomeStatus.loading &&
        state.productsStatus != HomeStatus.loading);

    // Ensure visibility
    final elapsed = DateTime.now().difference(startTime);
    if (elapsed < const Duration(seconds: 1)) {
      await Future<void>.delayed(const Duration(seconds: 1) - elapsed);
    }
  }
}
