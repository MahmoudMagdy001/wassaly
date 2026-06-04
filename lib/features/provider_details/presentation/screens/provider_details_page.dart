import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/provider_details/domain/entities/provider_detail_entity.dart';
import 'package:wassaly/features/provider_details/presentation/bloc/provider_details_bloc.dart';
import 'package:wassaly/features/provider_details/presentation/bloc/provider_details_event.dart';
import 'package:wassaly/features/provider_details/presentation/bloc/provider_details_state.dart';
import 'package:wassaly/features/provider_details/presentation/widgets/provider_contact_card.dart';
import 'package:wassaly/features/provider_details/presentation/widgets/provider_header.dart';
import 'package:wassaly/features/provider_details/presentation/widgets/provider_products_grid.dart';
import 'package:wassaly/features/provider_details/presentation/widgets/provider_reviews_section.dart';
import 'package:wassaly/features/provider_details/presentation/widgets/provider_services_grid.dart';
import 'package:wassaly/features/provider_details/presentation/widgets/provider_working_hours.dart';

class ProviderDetailsPage extends StatelessWidget {
  final int providerId;

  const ProviderDetailsPage({
    super.key,
    required this.providerId,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => sl<ProviderDetailsBloc>()
          ..add(FetchProviderDetailsEvent(providerId)),
        child: Scaffold(
          backgroundColor: context.theme.colorScheme.surface,
          body: CustomScrollView(
            slivers: [
              AppSliverTopBar(
                title: context.l10n.provider_details_title,
              ),
              BlocSelector<ProviderDetailsBloc, ProviderDetailsState,
                  (AppStatus, String, dynamic)>(
                selector: (state) => (
                  state.status,
                  state.errorMessage,
                  state.provider,
                ),
                builder: (context, data) {
                  final (status, errorMessage, provider) = data;

                  if (status.isLoading) {
                    return const SliverFillRemaining(
                      child: Center(child: AppLoading()),
                    );
                  }

                  if (status.isFailure) {
                    return SliverFillRemaining(
                      child: AppErrorWidget(
                        message: errorMessage,
                        onRetry: () => context
                            .read<ProviderDetailsBloc>()
                            .add(FetchProviderDetailsEvent(providerId)),
                      ),
                    );
                  }

                  if (status.isSuccess && provider != null) {
                    return SliverMainAxisGroup(
                      slivers: [
                        SliverToBoxAdapter(
                          child: ProviderHeader(
                              provider: provider as ProviderDetailEntity,),
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
                                    16.verticalSpace,
                                    ProviderContactCard(provider: provider),
                                    24.verticalSpace,
                                  ],
                                ),
                              ),
                              ProviderServicesGrid(services: provider.services),
                              ProviderProductsGrid(products: provider.products),
                              ProviderReviewsSection(provider: provider),
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
