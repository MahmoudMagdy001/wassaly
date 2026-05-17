import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart'
    as fav_event;
import 'package:wassaly/features/favorite/presentation/bloc/favorite_state.dart';
import 'package:wassaly/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:wassaly/features/service_details/presentation/bloc/service_details_bloc.dart';
import 'package:wassaly/features/service_details/presentation/screens/service_reviews_page.dart';
import 'package:wassaly/features/service_details/presentation/widgets/service_review_form_sheet.dart';

import '../../domain/entities/service_detail_entity.dart';
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

    final sessionState = context.watch<SessionBloc>().state;
    final currentUserId =
        sessionState is SessionAuthenticated ? sessionState.user.id : null;

    final bookingsState = context.watch<OrdersBloc>().state;
    final bookings = bookingsState.serviceBookings.data;

    final hasCompletedBooking = bookings.any((b) =>
        b.service.id == service.id &&
        (b.status.trim().toLowerCase() == 'completed' ||
            b.status.trim() == 'مكتمل'));

    final hasCurrentUserReview = currentUserId != null &&
        service.reviews
            .any((review) => review.user.id.toString() == currentUserId);

    return SliverPadding(
      padding: EdgeInsets.all(16.r),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(
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
                    BlocSelector<FavoriteBloc, FavoriteState, (bool, bool)>(
                      selector: (state) => (
                        state.serviceFavoriteIds.contains(service.id) ||
                            (state.status == FavoriteStatus.initial &&
                                service.isFavorite),
                        state.serviceTogglingIds.contains(service.id),
                      ),
                      builder: (context, status) {
                        final isFavorite = status.$1;
                        final isToggling = status.$2;
                        return IconButton(
                          onPressed: isToggling
                              ? null
                              : () => context.read<FavoriteBloc>().add(
                                    fav_event.ToggleServiceFavoriteEvent(
                                      service.id,
                                      expectedIsFavorite: isFavorite,
                                    ),
                                  ),
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite_rounded
                                : Icons.favorite_border_rounded,
                            color: isFavorite ? cs.error : cs.outline,
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
                (() {
                  final reviews = service.reviews;
                  final averageRating = reviews.isEmpty
                      ? 0.0
                      : reviews.fold<int>(0, (sum, r) => sum + r.rating) /
                          reviews.length;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${context.l10n.product_details_reviews} (${reviews.length})',
                        style: tt.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: cs.primary,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            size: 18.r,
                            color: cs.secondary,
                          ),
                          3.horizontalSpace,
                          Text(
                            averageRating.toStringAsFixed(1),
                            style: tt.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: cs.secondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                })(),
                if (currentUserId != null &&
                    hasCompletedBooking &&
                    !hasCurrentUserReview) ...[
                  10.verticalSpace,
                  OutlinedButton.icon(
                    onPressed: () => _showReviewSheet(context),
                    icon: const Icon(Icons.rate_review_outlined),
                    label: Text(context.l10n.product_details_add_review),
                  ),
                ],
                10.verticalSpace,
                if (service.reviews.isEmpty)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Text(
                      'لا توجد تقييمات بعد',
                      style: tt.bodyMedium?.copyWith(color: cs.outline),
                    ),
                  ),
              ],
            ),
          ),
          if (service.reviews.isNotEmpty)
            SliverList.builder(
              itemCount:
                  service.reviews.length > 3 ? 3 : service.reviews.length,
              itemBuilder: (context, index) {
                final review = service.reviews[index];
                final isMine = currentUserId != null &&
                    review.user.id.toString() == currentUserId;

                return AppReviewCard(
                  rating: review.rating,
                  comment: review.comment,
                  userName: review.user.name,
                  userAvatar: review.user.avatar,
                  isCurrentUserReview: isMine,
                  canEdit: isMine &&
                      _canEditReview(review.createdAt) &&
                      hasCompletedBooking,
                  createdAt: review.createdAt,
                  onEdit: () => _showReviewSheet(context, review: review),
                );
              },
            ),
          if (service.reviews.length > 3)
            SliverToBoxAdapter(
              child: Column(
                children: [
                  12.verticalSpace,
                  Align(
                    alignment: Alignment.center,
                    child: TextButton.icon(
                      onPressed: () => _openAllReviews(context),
                      icon: const Icon(Icons.expand_more_rounded),
                      label: Text(context.l10n.product_details_show_more),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  bool _canEditReview(String createdAt) {
    final createdDate = DateTime.tryParse(createdAt);
    if (createdDate == null) return false;

    final now = DateTime.now();
    final hasTimezone = RegExp(r'(z|[+-]\d{2}:?\d{2})$', caseSensitive: false)
        .hasMatch(createdAt.trim());
    final candidates = <DateTime>[
      createdDate.toLocal(),
      if (!hasTimezone)
        DateTime.utc(
          createdDate.year,
          createdDate.month,
          createdDate.day,
          createdDate.hour,
          createdDate.minute,
          createdDate.second,
          createdDate.millisecond,
          createdDate.microsecond,
        ).toLocal(),
    ];

    return candidates.any((date) {
      final elapsed = now.difference(date);
      return elapsed >= const Duration(minutes: -5) &&
          elapsed < const Duration(hours: 1);
    });
  }

  void _showReviewSheet(
    BuildContext context, {
    ServiceDetailReviewEntity? review,
  }) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (_) => BlocProvider.value(
        value: context.read<ServiceDetailsBloc>(),
        child: ServiceReviewFormSheet(
          serviceId: service.id,
          review: review,
        ),
      ),
    );
  }

  void _openAllReviews(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => BlocProvider.value(
          value: context.read<ServiceDetailsBloc>(),
          child: ServiceReviewsPage(serviceId: service.id),
        ),
      ),
    );
  }
}
