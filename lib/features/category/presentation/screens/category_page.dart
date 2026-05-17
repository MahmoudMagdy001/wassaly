import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/category/presentation/bloc/category_bloc.dart';
import 'package:wassaly/features/category/presentation/bloc/category_event.dart';
import 'package:wassaly/features/category/presentation/bloc/category_state.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/sub_category/presentation/bloc/sub_category_bloc.dart';
import 'package:wassaly/features/sub_category/presentation/bloc/sub_category_event.dart';
import 'package:wassaly/features/sub_category/presentation/screens/sub_category_page.dart';

import 'package:wassaly/features/home/domain/entities/sub_category_entity.dart';

class CategoryPage extends StatelessWidget {
  final CategoryEntity category;

  const CategoryPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<CategoryBloc>()..add(FetchCategoryDetailEvent(category.id)),
      child: _CategoryView(category: category),
    );
  }
}

class _CategoryView extends StatelessWidget {
  final CategoryEntity category;

  const _CategoryView({required this.category});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              AppSliverTopBar(
                title: category.name,
              ),
              if (state.status == CategoryStatus.failure)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: AppErrorWidget(
                    title: context.l10n.errors_error_occurred_title,
                    message: state.errorMessage.isNotEmpty
                        ? state.errorMessage
                        : context.l10n.errors_error_occurred_message,
                    onRetry: () {
                      context.read<CategoryBloc>().add(
                            FetchCategoryDetailEvent(category.id),
                          );
                    },
                  ),
                )
              else ...[
                SliverFillRemaining(
                  hasScrollBody: true,
                  child: Builder(
                    builder: (context) {
                      final isLoading = state.status == CategoryStatus.loading ||
                          state.status == CategoryStatus.initial;

                      final subCategories = state.subCategories.data;

                      if (!isLoading && subCategories.isEmpty) {
                        return AppEmptyState(
                          title: context.l10n.home_no_sub_categories,
                          icon: Icons.folder_open_outlined,
                        );
                      }

                      final displaySubCategories = isLoading && subCategories.isEmpty
                          ? List.generate(
                              8,
                              (index) => const SubCategoryEntity(
                                id: 0,
                                name: 'تصنيف تجريبي',
                                image: '',
                              ),
                            )
                          : subCategories;

                      final selectedSubCategory = isLoading
                          ? const SubCategoryEntity(id: -1, name: 'تصنيف تجريبي', image: '')
                          : state.selectedSubCategory;

                      return Skeletonizer(
                        enabled: isLoading,
                        ignoreContainers: true,
                        child: Row(
                          children: [
                            // Left Side: Categories List
                            Container(
                              width: 90.w,
                              decoration: BoxDecoration(
                                color: cs.surface,
                                border: BorderDirectional(
                                  end: BorderSide(
                                    color: cs.outlineVariant.withValues(alpha: 0.3),
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: CustomScrollView(
                                slivers: [
                                  SliverPadding(
                                    padding: EdgeInsets.symmetric(vertical: 8.h),
                                    sliver: SliverList.builder(
                                      itemCount: displaySubCategories.length,
                                      itemBuilder: (context, index) {
                                        final item = displaySubCategories[index];
                                        final isSelected = !isLoading &&
                                            state.selectedSubCategory?.id == item.id;

                                        return Column(
                                          children: [
                                            if (index > 0) 8.verticalSpace,
                                            GestureDetector(
                                              onTap: isLoading
                                                  ? null
                                                  : () {
                                                      context
                                                          .read<CategoryBloc>()
                                                          .add(SelectSubCategoryEvent(item));
                                                    },
                                              child: AnimatedContainer(
                                                duration: const Duration(milliseconds: 300),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 4.w, vertical: 12.h),
                                                decoration: BoxDecoration(
                                                  color: isSelected
                                                      ? cs.primary.withValues(alpha: 0.08)
                                                      : Colors.transparent,
                                                ),
                                                child: Stack(
                                                  clipBehavior: Clip.none,
                                                  alignment: Alignment.center,
                                                  children: [
                                                    // Selection Indicator
                                                    if (isSelected)
                                                      PositionedDirectional(
                                                        start: -4.w,
                                                        top: 0,
                                                        bottom: 0,
                                                        child: Container(
                                                          width: 4.w,
                                                          decoration: BoxDecoration(
                                                            color: cs.primary,
                                                            borderRadius:
                                                                BorderRadiusDirectional.only(
                                                              topEnd: Radius.circular(4.r),
                                                              bottomEnd: Radius.circular(4.r),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          height: 54.r,
                                                          width: 54.r,
                                                          decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            color: cs.surface,
                                                            border: Border.all(
                                                              color: isSelected
                                                                  ? cs.primary
                                                                  : cs.outlineVariant.withValues(
                                                                      alpha: 0.5,
                                                                    ),
                                                              width: isSelected ? 2 : 1,
                                                            ),
                                                            boxShadow: isSelected
                                                                ? [
                                                                    BoxShadow(
                                                                      color: cs.primary.withValues(
                                                                        alpha: 0.2,
                                                                      ),
                                                                      blurRadius: 8,
                                                                      offset: const Offset(0, 4),
                                                                    )
                                                                  ]
                                                                : null,
                                                          ),
                                                          child: ClipOval(
                                                            child: CommonImage(
                                                              imageUrl: item.image,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        8.verticalSpace,
                                                        Text(
                                                          item.name,
                                                          textAlign: TextAlign.center,
                                                          maxLines: 2,
                                                          overflow: TextOverflow.ellipsis,
                                                          style: tt.labelSmall?.copyWith(
                                                            color: isSelected
                                                                ? cs.primary
                                                                : cs.onSurfaceVariant,
                                                            fontWeight: isSelected
                                                                ? FontWeight.bold
                                                                : FontWeight.w500,
                                                            fontSize: 11.sp,
                                                            height: 1.2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Right Side: SubCategory Detail View
                            Expanded(
                              child: selectedSubCategory == null
                                  ? const SizedBox.shrink()
                                  : KeyedSubtree(
                                      key: ValueKey(selectedSubCategory.id),
                                      child: BlocProvider(
                                        create: (context) {
                                          final bloc = sl<SubCategoryBloc>();
                                          if (!isLoading) {
                                            bloc.add(FetchSubCategoryDetailEvent(
                                                selectedSubCategory.id));
                                          }
                                          return bloc;
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: SubCategoryDetailView(
                                                subCategory: selectedSubCategory,
                                                showAppBar: false,
                                                crossAxisCount: 2,
                                                productMainAxisExtent: 230.h,
                                                serviceMainAxisExtent: 190.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
