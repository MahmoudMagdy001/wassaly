import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/core/injection/injection.dart';

import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import '../widgets/widgets.dart';

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
      body: RefreshIndicator(
        onRefresh: () async {
          final bloc = context.read<HomeBloc>();
          final startTime = DateTime.now();

          bloc.add(GetBannersEvent());
          bloc.add(GetCategoriesEvent());
          bloc.add(GetPopularServicesEvent());
          bloc.add(GetProductsEvent());

          // Wait for all sections to finish loading
          await bloc.stream.firstWhere((state) =>
              state.status != HomeStatus.loading &&
              state.categoriesStatus != HomeStatus.loading &&
              state.popularServicesStatus != HomeStatus.loading &&
              state.productsStatus != HomeStatus.loading);

          // Ensure visibility
          final elapsed = DateTime.now().difference(startTime);
          if (elapsed < const Duration(seconds: 1)) {
            await Future<void>.delayed(const Duration(seconds: 1) - elapsed);
          }
        },
        color: cs.primary,
        backgroundColor: cs.surface,
        child: CustomScrollView(
          slivers: [
            // Sliver AppBar
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: cs.surface,
              elevation: 0,
              centerTitle: true,
              title: CommonImage(
                imageUrl: 'assets/images/logo.png',
                width: 80.w,
                height: 50.h,
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search, color: cs.primary),
                  onPressed: () {
                    // TODO: Navigate to search
                  },
                ),
              ],
            ),
            // Banner
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: HomeBanner(),
              ),
            ),
            // Spacing
            SliverToBoxAdapter(
              child: AppSpacing.md.verticalSpace,
            ),
            // Popular Services
            const PopularServicesSection(),

            // Main Categories
            const SliverToBoxAdapter(
              child: MainCategoriesSection(),
            ),

            // Spacing
            SliverToBoxAdapter(
              child: AppSpacing.sm.verticalSpace,
            ),

            // Products
            const ProductsSection(),

            // Bottom spacing
            SliverToBoxAdapter(
              child: AppSpacing.xl.verticalSpace,
            ),
          ],
        ),
      ),
    );
  }
}
