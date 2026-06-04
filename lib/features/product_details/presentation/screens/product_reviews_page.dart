import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';
import 'package:wassaly/features/product_details/domain/entities/product_detail_entity.dart';
import 'package:wassaly/features/product_details/presentation/bloc/product_details_bloc.dart';
import 'package:wassaly/features/product_details/presentation/bloc/product_details_state.dart';
import 'package:wassaly/features/product_details/presentation/widgets/product_review_form_sheet.dart';

class ProductReviewsPage extends StatelessWidget {
  final int productId;

  const ProductReviewsPage({
    required this.productId, super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: BlocConsumer<ProductDetailsBloc, ProductDetailsState>(
        listenWhen: (previous, current) =>
            previous.reviewActionStatus != current.reviewActionStatus,
        listener: (context, state) {
          if (state.reviewActionStatus == ReviewActionStatus.success ||
              state.reviewActionStatus == ReviewActionStatus.failure) {
            final message = state.reviewActionMessage ==
                    'product_details_review_created'
                ? context.l10n.product_details_review_created
                : state.reviewActionMessage == 'product_details_review_updated'
                    ? context.l10n.product_details_review_updated
                    : state.reviewActionMessage;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          }
        },
        buildWhen: (previous, current) => previous.product != current.product,
        builder: (context, state) {
          final reviews = state.product?.reviews ?? const [];
          final currentUserId = _currentUserId(context);

          return CustomScrollView(
            slivers: [
              AppSliverTopBar(
                title: context.l10n.product_details_all_reviews,
              ),
              SliverPadding(
                padding: EdgeInsets.all(8.r),
                sliver: SliverList.separated(
                  itemCount: reviews.length,
                  separatorBuilder: (_, __) => 2.verticalSpace,
                  itemBuilder: (context, index) {
                    final review = reviews[index];
                    final isMine = currentUserId != null &&
                        review.user.id.toString() == currentUserId;

                    return AppReviewCard(
                      rating: review.rating,
                      comment: review.comment,
                      userName: review.user.name,
                      userAvatar: review.user.avatar,
                      isCurrentUserReview: isMine,
                      canEdit: isMine &&
                          ReviewHelper.canEditReview(review.createdAt),
                      createdAt: review.createdAt,
                      onEdit: () => _showReviewSheet(context, review),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  String? _currentUserId(BuildContext context) {
    final sessionState = context.watch<SessionBloc>().state;
    return sessionState is SessionAuthenticated ? sessionState.user.id : null;
  }

  void _showReviewSheet(
    BuildContext context,
    ProductDetailReviewEntity review,
  ) {
    unawaited(
      context.showAppBottomSheet<void>(
        builder: (_) => BlocProvider.value(
          value: context.read<ProductDetailsBloc>(),
          child: ProductReviewFormSheet(
            productId: productId,
            review: review,
          ),
        ),
      ),
    );
  }
}
