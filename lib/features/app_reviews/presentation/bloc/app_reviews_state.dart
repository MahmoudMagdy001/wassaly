import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/app_reviews/domain/entities/app_review_entity.dart';

class AppReviewsState extends Equatable {
  final AppStatus status;
  final List<AppReviewEntity> reviews;
  final String? errorMessage;
  final AppStatus actionStatus;
  final String? actionErrorMessage;
  final int? currentUserId;

  const AppReviewsState({
    this.status = AppStatus.initial,
    this.reviews = const [],
    this.errorMessage,
    this.actionStatus = AppStatus.initial,
    this.actionErrorMessage,
    this.currentUserId,
  });

  AppReviewsState copyWith({
    AppStatus? status,
    List<AppReviewEntity>? reviews,
    String? errorMessage,
    bool clearError = false,
    AppStatus? actionStatus,
    String? actionErrorMessage,
    int? currentUserId,
  }) => AppReviewsState(
      status: status ?? this.status,
      reviews: reviews ?? this.reviews,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      actionStatus: actionStatus ?? AppStatus.initial,
      actionErrorMessage: actionErrorMessage,
      currentUserId: currentUserId ?? this.currentUserId,
    );

  @override
  List<Object?> get props => [
        status,
        reviews,
        errorMessage,
        actionStatus,
        actionErrorMessage,
        currentUserId,
      ];
}
