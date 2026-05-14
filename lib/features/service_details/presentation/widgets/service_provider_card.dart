import 'package:wassaly/core/imports/imports.dart';

import '../../domain/entities/service_detail_entity.dart';

class ServiceProviderCard extends StatelessWidget {
  final ServiceProviderEntity provider;

  const ServiceProviderCard({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return AppCard(
      showShadow: true,
      onTap: () => context.push(
        AppRoutes.providerDetails,
        extra: {'providerId': provider.id},
      ),
      padding: EdgeInsets.all(12.r),
      child: Row(
        children: [
          CommonImage(
            imageUrl: provider.user.avatar ?? provider.cover,
            width: 60.w,
            height: 60.h,
            memCacheHeight: 60 * 2,
            borderRadius: BorderRadius.circular(12.r),
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  provider.title,
                  style: tt.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                4.verticalSpace,
                Row(
                  children: [
                    Icon(Icons.star_rounded, color: Colors.orange, size: 18.r),
                    4.horizontalSpace,
                    Text(
                      provider.averageRating.toString(),
                      style:
                          tt.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    4.horizontalSpace,
                    Text(
                      '(${provider.reviewsCount} ${context.l10n.product_details_reviews})',
                      style: tt.bodySmall?.copyWith(color: cs.outline),
                    ),
                  ],
                ),
                4.verticalSpace,
                Text(
                  '${provider.successfulOrdersCount} ${context.l10n.profile_orders_count(provider.successfulOrdersCount)}',
                  style: tt.bodySmall?.copyWith(
                      color: cs.primary, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios_rounded, size: 16.r, color: cs.outline),
        ],
      ),
    );
  }
}
