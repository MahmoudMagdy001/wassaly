import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_reviews_event.freezed.dart';

@freezed
sealed class AppReviewsEvent with _$AppReviewsEvent {
  const factory AppReviewsEvent.getAppReviews() = GetAppReviewsEvent;
  const factory AppReviewsEvent.addAppReview({
    required int rating,
    required String comment,
  }) = AddAppReviewEvent;
  const factory AppReviewsEvent.updateAppReview({
    required int reviewId,
    required int rating,
    required String comment,
  }) = UpdateAppReviewEvent;
}
