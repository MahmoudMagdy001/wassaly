import 'package:wassaly/core/imports/imports.dart';

import '../../../product_details/domain/entities/product_detail_entity.dart';
import '../../../product_details/presentation/widgets/product_review_card.dart';
import '../../domain/entities/service_detail_entity.dart';
import '../bloc/service_details_bloc.dart';
import 'service_available_days_section.dart';
import 'service_provider_card.dart';

class ServiceDetailsInfo extends StatelessWidget {
  final ServiceDetailEntity service;
  final void Function(ServiceAvailableDayEntity?, ServiceAvailableTimeEntity?)
      onSelectionChanged;

  const ServiceDetailsInfo({
    super.key,
    required this.service,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.service,
                      style: tt.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.primary,
                      ),
                    ),
                    8.verticalSpace,
                    if (service.category != null)
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          color: cs.primaryContainer,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Text(
                          service.category!,
                          style: tt.labelMedium
                              ?.copyWith(color: cs.onPrimaryContainer),
                        ),
                      ),
                  ],
                ),
              ),
              BlocBuilder<ServiceDetailsBloc, ServiceDetailsState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: state.isFavoriteLoading
                        ? null
                        : () => context.read<ServiceDetailsBloc>().add(
                              ToggleServiceFavoriteEvent(service.id),
                            ),
                    icon: Icon(
                      service.isFavorite
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      color: service.isFavorite ? Colors.red : cs.outline,
                      size: 28.r,
                    ),
                  );
                },
              ),
            ],
          ),
          16.verticalSpace,
          Text(
            context.l10n.service_details_description,
            style: tt.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          8.verticalSpace,
          Text(
            service.description,
            style: tt.bodyMedium
                ?.copyWith(height: 1.5, color: cs.onSurfaceVariant),
          ),
          24.verticalSpace,
          Text(
            context.l10n.service_details_provider,
            style: tt.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          12.verticalSpace,
          ServiceProviderCard(provider: service.provider),
          24.verticalSpace,
          ServiceAvailableDaysSection(
            availableDays: service.availableDays,
            onSelectionChanged: onSelectionChanged,
          ),
          24.verticalSpace,
          Text(
            context.l10n.product_details_reviews,
            style: tt.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          8.verticalSpace,
          if (service.reviews.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Text(
                'لا توجد تقييمات بعد',
                style: tt.bodyMedium?.copyWith(color: cs.outline),
              ),
            )
          else ...[
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount:
                  service.reviews.length > 3 ? 3 : service.reviews.length,
              separatorBuilder: (_, __) => 12.verticalSpace,
              itemBuilder: (context, index) {
                final review = service.reviews[index];
                // Map ServiceDetailReviewEntity to ProductDetailReviewEntity for reuse
                final mappedReview = ProductDetailReviewEntity(
                  id: review.id,
                  rating: review.rating,
                  comment: review.comment,
                  createdAt: review.createdAt,
                  user: ProductReviewUserEntity(
                    id: review.user.id,
                    name: review.user.name,
                    avatar: review.user.avatar,
                  ),
                );
                return ProductReviewCard(review: mappedReview);
              },
            ),
            if (service.reviews.length > 3) ...[
              12.verticalSpace,
              Align(
                alignment: Alignment.center,
                child: TextButton.icon(
                  onPressed: () {
                    // TODO: Show all reviews page
                  },
                  icon: const Icon(Icons.expand_more_rounded),
                  label: Text(context.l10n.product_details_show_more),
                ),
              ),
            ],
          ],
        ],
      ),
    );
  }
}
