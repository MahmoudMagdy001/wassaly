import 'package:wassaly/core/imports/imports.dart';

import '../cubit/provider_details_cubit.dart';
import '../cubit/provider_details_state.dart';
import '../widgets/provider_header.dart';
import '../widgets/provider_review_card.dart';
import '../widgets/provider_services_grid.dart';
import '../widgets/provider_working_hours.dart';

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
        appBar: AppTopBar(title: context.l10n.provider_details_title),
        body: BlocBuilder<ProviderDetailsCubit, ProviderDetailsState>(
          builder: (context, state) {
            if (state is ProviderDetailsLoading) {
              return const Center(child: AppLoading());
            }

            if (state is ProviderDetailsFailure) {
              return AppErrorWidget(
                message: state.message,
                onRetry: () => context
                    .read<ProviderDetailsCubit>()
                    .fetchProviderDetails(providerId),
              );
            }

            if (state is ProviderDetailsSuccess) {
              final provider = state.provider;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    ProviderHeader(provider: provider),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProviderWorkingHours(provider: provider),
                          24.verticalSpace,
                          ProviderServicesGrid(services: provider.services),
                          24.verticalSpace,
                          if (provider.reviews.isNotEmpty) ...[
                            Text(
                              context.l10n.product_details_reviews,
                              style: context.theme.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            16.verticalSpace,
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              itemCount: provider.reviews.length,
                              separatorBuilder: (_, __) => 12.verticalSpace,
                              itemBuilder: (context, index) =>
                                  ProviderReviewCard(
                                      review: provider.reviews[index]),
                            ),
                          ],
                          32.verticalSpace,
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
