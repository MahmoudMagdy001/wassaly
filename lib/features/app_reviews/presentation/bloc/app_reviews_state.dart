import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/app_reviews/domain/entities/app_review_entity.dart';

part 'app_reviews_state.freezed.dart';

@freezed
abstract class AppReviewsState with _$AppReviewsState {
  const factory AppReviewsState({
    @Default(AppStatus.initial) AppStatus status,
    @Default([]) List<AppReviewEntity> reviews,
    String? errorMessage,
    @Default(AppStatus.initial) AppStatus actionStatus,
    String? actionErrorMessage,
    int? currentUserId,
  }) = _AppReviewsState;
}
