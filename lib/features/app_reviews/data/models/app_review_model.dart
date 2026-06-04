import 'package:wassaly/features/app_reviews/domain/entities/app_review_entity.dart';

class AppReviewUserModel extends AppReviewUserEntity {
  const AppReviewUserModel({
    required super.id,
    required super.name,
    required super.type, super.avatar,
  });

  factory AppReviewUserModel.fromJson(Map<String, dynamic> json) => AppReviewUserModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      avatar: json['avatar'] as String?,
      type: json['type'] as String? ?? '',
    );
}

class AppReviewModel extends AppReviewEntity {
  const AppReviewModel({
    required super.id,
    required super.rating,
    required super.comment,
    required super.user,
    required super.createdAt,
  });

  factory AppReviewModel.fromJson(Map<String, dynamic> json) => AppReviewModel(
      id: json['id'] as int? ?? 0,
      rating: json['rating'] as int? ?? 0,
      comment: json['comment'] as String? ?? '',
      user: AppReviewUserModel.fromJson(
          json['user'] as Map<String, dynamic>? ?? {},),
      createdAt: json['created_at'] as String? ?? '',
    );
}
