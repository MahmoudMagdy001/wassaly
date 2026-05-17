import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/home/presentation/bloc/home_bloc.dart';
import 'package:wassaly/features/home/presentation/bloc/home_event.dart';
import 'package:wassaly/features/home/presentation/bloc/home_state.dart';
import 'package:wassaly/features/home/presentation/widgets/category_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cs = context.theme.colorScheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: CustomScrollView(
        slivers: [
          AppSliverTopBar(
            title: l10n.home_main_categories,
            pinned: true,
          ),
          BlocSelector<HomeBloc, HomeState,
              (HomeStatus, List<CategoryEntity>, String)>(
            selector: (state) => (
              state.categoriesStatus,
              state.categories,
              state.errorMessage,
            ),
            builder: (context, data) {
              final (categoriesStatus, categories, errorMessage) = data;

              if (categoriesStatus == HomeStatus.loading ||
                  categoriesStatus == HomeStatus.initial) {
                return const SliverFillRemaining(
                  child: Center(
                    child: AppLoading(),
                  ),
                );
              }

              if (categoriesStatus == HomeStatus.failure) {
                return SliverFillRemaining(
                  child: AppErrorWidget(
                    message: errorMessage,
                    onRetry: () =>
                        context.read<HomeBloc>().add(GetCategoriesEvent()),
                  ),
                );
              }

              if (categories.isEmpty) {
                return SliverFillRemaining(
                  child: AppEmptyState(
                    title: l10n.home_no_sub_categories,
                    icon: Icons.category_outlined,
                  ),
                );
              }

              return SliverPadding(
                padding: EdgeInsets.all(12.r),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12.h,
                    crossAxisSpacing: 12.w,
                    childAspectRatio: 1.3,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final category = categories[index];
                      return CategoryCard(
                        title: category.name,
                        imageUrl: category.image,
                        onTap: () => context.push(
                          AppRoutes.category,
                          extra: {'category': category},
                        ),
                      ).animate().fadeIn(
                            delay: Duration(milliseconds: index * 50),
                            duration: const Duration(milliseconds: 300),
                          );
                    },
                    childCount: categories.length,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
