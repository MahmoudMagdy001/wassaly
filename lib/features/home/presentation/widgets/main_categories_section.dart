import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

import '../../domain/entities/category_entity.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';
import 'category_card.dart';

class MainCategoriesSection extends StatelessWidget {
  const MainCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.categoriesStatus != current.categoriesStatus ||
          previous.categories != current.categories,
      builder: (context, state) {
        if (state.categoriesStatus == HomeStatus.loading ||
            state.categoriesStatus == HomeStatus.initial) {
          final dummyCategories = List.generate(
            3,
            (index) => const CategoryEntity(
              id: 0,
              name: 'قسم رئيسي',
              image: '',
            ),
          );

          return Skeletonizer(
            enabled: true,
            child: _buildContent(context, cs, tt, dummyCategories),
          );
        } else if (state.categoriesStatus == HomeStatus.failure) {
          return const SizedBox.shrink();
        } else if (state.categories.isEmpty &&
            state.categoriesStatus == HomeStatus.success) {
          return const SizedBox.shrink();
        }

        return _buildContent(context, cs, tt, state.categories)
            .animate()
            .fadeIn(
              delay: const Duration(milliseconds: 200),
              duration: const Duration(milliseconds: 400),
            );
      },
    );
  }

  Widget _buildContent(BuildContext context, ColorScheme cs, TextTheme tt,
      List<CategoryEntity> categories) {
    if (categories.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Text(
            'الأقسام الرئيسية',
            style: tt.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: cs.primary,
            ),
          ),
          AppSpacing.md.verticalSpace,

          // Build alternating layout: 1 item, then 2 items, then 1 item...
          ..._buildAlternatingGrid(categories),
        ],
      ),
    );
  }

  List<Widget> _buildAlternatingGrid(List<CategoryEntity> categories) {
    final List<Widget> items = [];
    int i = 0;

    while (i < categories.length) {
      // Full Width Item
      items.add(
        Row(
          children: [
            Expanded(
              child: CategoryCard(
                title: categories[i].name,
                imageUrl: categories[i].image,
                onTap: () {
                  // TODO: Navigate
                },
              ),
            ),
          ],
        ),
      );
      i++;

      if (i >= categories.length) break;
      items.add(AppSpacing.md.verticalSpace);

      // Two side-by-side items
      items.add(
        Row(
          children: [
            Expanded(
              child: CategoryCard(
                title: categories[i].name,
                imageUrl: categories[i].image,
                onTap: () {
                  // TODO: Navigate
                },
              ),
            ),
            12.horizontalSpace,
            if (i + 1 < categories.length)
              Expanded(
                child: CategoryCard(
                  title: categories[i + 1].name,
                  imageUrl: categories[i + 1].image,
                  onTap: () {
                    // TODO: Navigate
                  },
                ),
              )
            else
              const Expanded(child: SizedBox.shrink()),
          ],
        ),
      );
      i += 2;

      if (i < categories.length) {
        items.add(AppSpacing.md.verticalSpace);
      }
    }

    return items;
  }
}
