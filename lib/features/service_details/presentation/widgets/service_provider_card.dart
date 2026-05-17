import 'package:url_launcher/url_launcher.dart';
import 'package:wassaly/core/imports/imports.dart';

import '../../domain/entities/service_detail_entity.dart';

class ServiceProviderCard extends StatelessWidget {
  final ServiceProviderEntity provider;

  const ServiceProviderCard({
    super.key,
    required this.provider,
  });

  Future<void> _makeCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    try {
      if (await canLaunchUrl(launchUri)) {
        await launchUrl(launchUri);
      } else {
        // Fallback for Android 11+ package visibility constraints
        await launchUrl(launchUri);
      }
    } catch (e) {
      debugPrint('Could not launch call: $e');
    }
  }

  Future<void> _sendEmail(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    try {
      if (await canLaunchUrl(launchUri)) {
        await launchUrl(launchUri);
      } else {
        // Fallback for Android 11+ package visibility constraints
        await launchUrl(launchUri);
      }
    } catch (e) {
      debugPrint('Could not launch email: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    final bool isActive = provider.user.isActive == 1;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: cs.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
            color: cs.outlineVariant.withValues(alpha: 0.4), width: 0.8),
        boxShadow: [
          BoxShadow(
            color: cs.shadow.withValues(alpha: 0.03),
            blurRadius: 10.r,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: Column(
          children: [
            // Top Section (Tappable header that navigates to provider details)
            InkWell(
              onTap: () => context.push(
                AppRoutes.providerDetails,
                extra: {'providerId': provider.id},
              ),
              child: Padding(
                padding: EdgeInsets.all(12.r),
                child: Row(
                  children: [
                    // Avatar with a subtle border & shadow
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          color: cs.outlineVariant.withValues(alpha: 0.5),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.04),
                            blurRadius: 4.r,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: CommonImage(
                        imageUrl: provider.user.avatar ?? provider.cover,
                        width: 60.w,
                        height: 60.h,
                        memCacheHeight: 60 * 2,
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                    ),
                    14.horizontalSpace,

                    // Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            provider.title,
                            style: tt.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: cs.onSurface,
                            ),
                          ),
                          6.verticalSpace,

                          // Beautiful Rating Pill
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6.w, vertical: 2.h),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFF8E1), // soft amber
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: Border.all(
                                    color: const Color(0xFFFFE082),
                                    width: 0.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      color: const Color(0xFFFFB300),
                                      size: 14.r,
                                    ),
                                    2.horizontalSpace,
                                    Text(
                                      provider.averageRating.toString(),
                                      style: tt.labelSmall?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF8D6E63),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              8.horizontalSpace,
                              Text(
                                '(${provider.reviewsCount} ${context.l10n.product_details_reviews})',
                                style: tt.bodySmall?.copyWith(
                                  color: cs.outline,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    10.horizontalSpace,

                    // Adaptive Details Text & Chevron Icon
                    Row(
                      children: [
                        Text(
                          isAr ? 'التفاصيل' : 'Details',
                          style: tt.bodySmall?.copyWith(
                            color: cs.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        4.horizontalSpace,
                        Icon(
                          isAr
                              ? Icons.arrow_back_ios_new_rounded
                              : Icons.arrow_forward_ios_rounded,
                          size: 12.r,
                          color: cs.primary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Divider(color: cs.outlineVariant.withValues(alpha: 0.3), height: 1),

            // Middle & Bottom Section containing Stats, Description and Contacts
            Padding(
              padding: EdgeInsets.all(12.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Status & Successful Orders Badges Row
                  Row(
                    children: [
                      // Status Badge
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          decoration: BoxDecoration(
                            color: isActive
                                ? const Color(0xFFE8F5E9) // soft green
                                : const Color(0xFFFFEBEE), // soft red
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: isActive
                                  ? const Color(0xFFC8E6C9)
                                  : const Color(0xFFFFCDD2),
                              width: 0.8,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 6.r,
                                height: 6.r,
                                decoration: BoxDecoration(
                                  color: isActive
                                      ? const Color(0xFF4CAF50)
                                      : const Color(0xFFF44336),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              6.horizontalSpace,
                              Text(
                                isActive
                                    ? context
                                        .l10n.provider_details_status_active
                                    : context
                                        .l10n.provider_details_status_inactive,
                                style: tt.labelMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: isActive
                                      ? const Color(0xFF2E7D32)
                                      : const Color(0xFFC62828),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      12.horizontalSpace,
                      // Successful Orders Badge
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          decoration: BoxDecoration(
                            color: cs.secondaryContainer.withValues(alpha: 0.4),
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: cs.secondary.withValues(alpha: 0.2),
                              width: 0.8,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_circle_rounded,
                                color: cs.secondary,
                                size: 14.r,
                              ),
                              6.horizontalSpace,
                              Flexible(
                                child: Text(
                                  context.l10n.profile_orders_count(
                                      provider.successfulOrdersCount),
                                  style: tt.labelMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: cs.onSecondaryContainer,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  12.verticalSpace,

                  // Service description text with info icon
                  if (provider.serviceDescription.trim().isNotEmpty) ...[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10.r),
                      decoration: BoxDecoration(
                        color: cs.surfaceContainerHigh.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: cs.outlineVariant.withValues(alpha: 0.2),
                          width: 0.5,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.info_outline_rounded,
                            color: cs.primary,
                            size: 16.r,
                          ),
                          8.horizontalSpace,
                          Expanded(
                            child: Text(
                              provider.serviceDescription,
                              style: tt.bodySmall?.copyWith(
                                color: cs.onSurfaceVariant,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    12.verticalSpace,
                  ],

                  // Quick Action Call & Email Buttons
                  Row(
                    children: [
                      // Call Card Button
                      Expanded(
                        child: AppCard(
                          onTap: () => _makeCall(provider.user.phone),
                          color: cs.surfaceContainerHigh,
                          padding: EdgeInsets.all(8.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone_in_talk_rounded,
                                color: cs.primary,
                                size: 18.r,
                              ),
                              8.horizontalSpace,
                              Flexible(
                                child: Text(
                                  isAr ? 'اتصال سريع' : 'Quick Call',
                                  style: tt.labelLarge?.copyWith(
                                    color: cs.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      12.horizontalSpace,
                      // Email Card Button
                      Expanded(
                        child: AppCard(
                          onTap: () => _sendEmail(provider.user.email),
                          color: cs.surfaceContainerHigh,
                          padding: EdgeInsets.all(8.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.alternate_email_rounded,
                                color: cs.secondary,
                                size: 18.r,
                              ),
                              8.horizontalSpace,
                              Flexible(
                                child: Text(
                                  isAr ? 'بريد إلكتروني' : 'Email',
                                  style: tt.labelLarge?.copyWith(
                                    color: cs.secondary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
