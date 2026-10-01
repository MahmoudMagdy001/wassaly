import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/app_reviews/domain/entities/app_review_entity.dart';

part 'app_review_model.freezed.dart';
part 'app_review_model.g.dart';

@freezed
abstract class AppReviewUserModel with _$AppReviewUserModel {
  const AppReviewUserModel._();

  const factory AppReviewUserModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String type,
    String? avatar,
  }) = _AppReviewUserModel;

  factory AppReviewUserModel.fromJson(Map<String, dynamic> json) =>
      AppReviewUserModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        avatar: json['avatar'] as String?,
        type: json['type'] as String? ?? '',
      );

  AppReviewUserEntity toEntity() => AppReviewUserEntity(
        id: id,
        name: name,
        type: type,
        avatar: avatar,
      );
}

@freezed
abstract class AppReviewModel with _$AppReviewModel {
  const AppReviewModel._();

  const factory AppReviewModel({
    @Default(0) int id,
    @Default(0) int rating,
    @Default('') String comment,
    @Default(AppReviewUserModel()) AppReviewUserModel user,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
  }) = _AppReviewModel;

  factory AppReviewModel.fromJson(Map<String, dynamic> json) =>
      AppReviewModel(
        id: json['id'] as int? ?? 0,
        rating: json['rating'] as int? ?? 0,
        comment: json['comment'] as String? ?? '',
        user: AppReviewUserModel.fromJson(
          json['user'] as Map<String, dynamic>? ?? {},
        ),
        createdAt: json['created_at'] as String? ?? '',
      );

  AppReviewEntity toEntity() => AppReviewEntity(
        id: id,
        rating: rating,
        comment: comment,
        user: user.toEntity(),
        createdAt: createdAt,
      );
}
