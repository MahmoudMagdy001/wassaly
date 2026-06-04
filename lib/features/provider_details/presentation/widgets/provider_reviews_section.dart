import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/provider_details/domain/entities/provider_detail_entity.dart';

class ProviderReviewsSection extends StatelessWidget {
  final ProviderDetailEntity provider;

  const ProviderReviewsSection({
    required this.provider, super.key,
  });

  @override
  Widget build(BuildContext context) {
    final reviews = provider.reviews;

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.verticalSpace,
              Row(
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
              ),
              16.verticalSpace,
              if (reviews.isEmpty)
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
        if (reviews.isNotEmpty)
          SliverList.builder(
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              final review = reviews[index];
              final isAr = Localizations.localeOf(context).languageCode == 'ar';
              return AppReviewCard(
                rating: review.rating,
                comment: review.comment,
                userName: isAr ? 'عميل' : 'Customer',
                createdAt: review.createdAt,
              );
            },
          ),
      ],
    );
  }
}
