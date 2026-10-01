import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_review_entity.freezed.dart';

@freezed
abstract class AppReviewUserEntity with _$AppReviewUserEntity {
  const factory AppReviewUserEntity({
    required int id,
    required String name,
    required String type,
    String? avatar,
  }) = _AppReviewUserEntity;
}

@freezed
abstract class AppReviewEntity with _$AppReviewEntity {
  const factory AppReviewEntity({
    required int id,
    required int rating,
    required String comment,
    required AppReviewUserEntity user,
    required String createdAt,
  }) = _AppReviewEntity;
}
