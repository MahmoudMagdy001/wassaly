import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';

import '../bloc/app_reviews_bloc.dart';
import '../bloc/app_reviews_event.dart';
import '../bloc/app_reviews_state.dart';
import '../widgets/app_review_form_sheet.dart';

class AppReviewsPage extends StatelessWidget {
  const AppReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final sessionState = context.watch<SessionBloc>().state;
    final currentUserId =
        sessionState is SessionAuthenticated ? sessionState.user.id : null;

    return Scaffold(
      backgroundColor: cs.surface,
      floatingActionButton: BlocBuilder<AppReviewsBloc, AppReviewsState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          if (!state.status.isSuccess || currentUserId == null) {
            return const SizedBox.shrink();
          }

          return FloatingActionButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                builder: (_) => BlocProvider.value(
                  value: context.read<AppReviewsBloc>(),
                  child: const AppReviewFormSheet(),
                ),
              );
            },
            child: const Icon(Icons.add_rounded),
          );
        },
      ),
      body: CustomScrollView(
        slivers: [
          AppSliverTopBar(
            title: context.l10n.profile_app_reviews,
            floating: true,
            snap: true,
          ),
          BlocConsumer<AppReviewsBloc, AppReviewsState>(
            listenWhen: (previous, current) =>
                previous.actionStatus != current.actionStatus,
            listener: (context, state) {
              if (state.actionStatus.isSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(context.l10n.product_details_review_created),
                  ),
                );
              } else if (state.actionStatus.isFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.actionErrorMessage ??
                        context.l10n.errors_something_went_wrong),
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state.status.isLoading) {
                return const SliverFillRemaining(
                  hasScrollBody: false,
                  child: AppLoading(),
                );
              }

              if (state.status.isFailure) {
                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: AppErrorWidget(
                    message: state.errorMessage ??
                        context.l10n.errors_something_went_wrong,
                    onRetry: () => context
                        .read<AppReviewsBloc>()
                        .add(const GetAppReviewsEvent()),
                  ),
                );
              }

              if (state.status.isSuccess && state.reviews.isEmpty) {
                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: AppEmptyState(
                    title: context.l10n.profile_no_reviews,
                    subtitle: context.l10n.profile_no_reviews_desc,
                    icon: Icons.reviews_outlined,
                  ),
                );
              }

              return SliverPadding(
                padding: EdgeInsets.all(8.r),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final review = state.reviews[index];

                      return AppReviewCard(
                        rating: review.rating,
                        comment: review.comment,
                        userName: review.user.name,
                        userAvatar: review.user.avatar,
                        createdAt: review.createdAt,
                      );
                    },
                    childCount: state.reviews.length,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
