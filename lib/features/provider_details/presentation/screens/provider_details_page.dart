import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/provider_details/presentation/cubit/provider_details_cubit.dart';
import 'package:wassaly/features/provider_details/presentation/cubit/provider_details_state.dart';
import 'package:wassaly/features/provider_details/presentation/widgets/provider_header.dart';
import 'package:wassaly/features/provider_details/presentation/widgets/provider_services_grid.dart';
import 'package:wassaly/features/provider_details/presentation/widgets/provider_working_hours.dart';

class ProviderDetailsPage extends StatelessWidget {
  final int providerId;

  const ProviderDetailsPage({
    super.key,
    required this.providerId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<ProviderDetailsCubit>()..fetchProviderDetails(providerId),
      child: Scaffold(
        backgroundColor: context.theme.colorScheme.surface,
        body: CustomScrollView(
          slivers: [
            AppSliverTopBar(
              title: context.l10n.provider_details_title,
              pinned: false,
            ),
            BlocBuilder<ProviderDetailsCubit, ProviderDetailsState>(
              builder: (context, state) {
                if (state is ProviderDetailsLoading) {
                  return const SliverFillRemaining(
                    child: Center(child: AppLoading()),
                  );
                }

                if (state is ProviderDetailsFailure) {
                  return SliverFillRemaining(
                    child: AppErrorWidget(
                      message: state.message,
                      onRetry: () => context
                          .read<ProviderDetailsCubit>()
                          .fetchProviderDetails(providerId),
                    ),
                  );
                }

                if (state is ProviderDetailsSuccess) {
                  final provider = state.provider;
                  return SliverMainAxisGroup(
                    slivers: [
                      SliverToBoxAdapter(
                        child: ProviderHeader(provider: provider),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        sliver: SliverMainAxisGroup(
                          slivers: [
                            SliverToBoxAdapter(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProviderWorkingHours(provider: provider),
                                  24.verticalSpace,
                                ],
                              ),
                            ),
                            ProviderServicesGrid(services: provider.services),
                            SliverToBoxAdapter(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  24.verticalSpace,
                                  (() {
                                    final reviews = provider.reviews;
                                    return Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '${context.l10n.product_details_reviews} (${reviews.length})',
                                          style: context.theme.textTheme.titleLarge?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: context.theme.colorScheme.primary,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_rounded,
                                              size: 18.r,
                                              color: context.theme.colorScheme.secondary,
                                            ),
                                            3.horizontalSpace,
                                            Text(
                                              provider.averageRating.toStringAsFixed(1),
                                              style: context.theme.textTheme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: context.theme.colorScheme.secondary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  })(),
                                  16.verticalSpace,
                                  if (provider.reviews.isEmpty)
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 16.h),
                                      child: Text(
                                        Localizations.localeOf(context).languageCode == 'ar'
                                            ? 'لا توجد تقييمات بعد'
                                            : 'No reviews yet',
                                        style: context.theme.textTheme.bodyMedium?.copyWith(
                                          color: context.theme.colorScheme.outline,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            if (provider.reviews.isNotEmpty)
                              SliverList.builder(
                                itemCount: provider.reviews.length,
                                itemBuilder: (context, index) {
                                  final review = provider.reviews[index];
                                  final isAr = Localizations.localeOf(context).languageCode == 'ar';
                                  return AppReviewCard(
                                    rating: review.rating,
                                    comment: review.comment,
                                    userName: isAr ? 'عميل' : 'Customer',
                                    createdAt: review.createdAt,
                                  );
                                },
                              ),
                            SliverToBoxAdapter(
                              child: 32.verticalSpace,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }

                return const SliverToBoxAdapter(child: SizedBox.shrink());
              },
            ),
          ],
        ),
      ),
    );
  }
}
