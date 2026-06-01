import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';

import '../../domain/entities/app_review_entity.dart';
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

    return BlocListener<AppReviewsBloc, AppReviewsState>(
      listenWhen: (previous, current) =>
          previous.actionStatus != current.actionStatus,
      listener: (context, state) {
        if (state.actionStatus.isSuccess) {
          context.showTypedSnackBar(
            context.l10n.product_details_review_created,
            type: SnackBarType.success,
          );
        } else if (state.actionStatus.isFailure) {
          context.showTypedSnackBar(
            state.actionErrorMessage ??
                context.l10n.errors_something_went_wrong,
            type: SnackBarType.error,
          );
        }
      },
      child: Scaffold(
        backgroundColor: cs.surface,
        floatingActionButton:
            BlocSelector<AppReviewsBloc, AppReviewsState, bool>(
          selector: (state) => state.status.isSuccess && currentUserId != null,
          builder: (context, showFab) {
            if (!showFab) return const SizedBox.shrink();

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

            // 1. Loading State
            BlocSelector<AppReviewsBloc, AppReviewsState, bool>(
              selector: (state) => state.status.isLoading,
              builder: (context, isLoading) {
                if (!isLoading) return const SliverToBoxAdapter();
                return const SliverFillRemaining(
                  hasScrollBody: false,
                  child: AppLoading(),
                );
              },
            ),

            // 2. Error State
            BlocSelector<AppReviewsBloc, AppReviewsState, (bool, String?)>(
              selector: (state) => (state.status.isFailure, state.errorMessage),
              builder: (context, data) {
                final (isFailure, errorMessage) = data;
                if (!isFailure) return const SliverToBoxAdapter();

                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: AppErrorWidget(
                    message: errorMessage ??
                        context.l10n.errors_something_went_wrong,
                    onRetry: () => context
                        .read<AppReviewsBloc>()
                        .add(const GetAppReviewsEvent()),
                  ),
                );
              },
            ),

            // 3. Empty State
            BlocSelector<AppReviewsBloc, AppReviewsState, bool>(
              selector: (state) =>
                  state.status.isSuccess && state.reviews.isEmpty,
              builder: (context, isEmpty) {
                if (!isEmpty) return const SliverToBoxAdapter();

                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: AppEmptyState(
                    title: context.l10n.profile_no_reviews,
                    subtitle: context.l10n.profile_no_reviews_desc,
                    icon: Icons.reviews_outlined,
                  ),
                );
              },
            ),

            // 4. Reviews List
            BlocSelector<AppReviewsBloc, AppReviewsState,
                List<AppReviewEntity>>(
              selector: (state) => state.reviews,
              builder: (context, reviews) {
                if (reviews.isEmpty) return const SliverToBoxAdapter();

                return SliverPadding(
                  padding: EdgeInsets.all(8.r),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final review = reviews[index];

                        return AppReviewCard(
                          rating: review.rating,
                          comment: review.comment,
                          userName: review.user.name,
                          userAvatar: review.user.avatar,
                          createdAt: review.createdAt,
                        );
                      },
                      childCount: reviews.length,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
