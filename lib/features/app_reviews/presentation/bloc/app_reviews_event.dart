import 'package:wassaly/core/imports/imports.dart';

abstract class AppReviewsEvent extends Equatable {
  const AppReviewsEvent();

  @override
  List<Object?> get props => [];
}

class GetAppReviewsEvent extends AppReviewsEvent {
  const GetAppReviewsEvent();
}

class AddAppReviewEvent extends AppReviewsEvent {
  final int rating;
  final String comment;

  const AddAppReviewEvent({
    required this.rating,
    required this.comment,
  });

  @override
  List<Object?> get props => [rating, comment];
}

class UpdateAppReviewEvent extends AppReviewsEvent {
  final int reviewId;
  final int rating;
  final String comment;

  const UpdateAppReviewEvent({
    required this.reviewId,
    required this.rating,
    required this.comment,
  });

  @override
  List<Object?> get props => [reviewId, rating, comment];
}
