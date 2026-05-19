import 'package:wassaly/core/imports/imports.dart';

class AppReviewUserEntity extends Equatable {
  final int id;
  final String name;
  final String? avatar;
  final String type;

  const AppReviewUserEntity({
    required this.id,
    required this.name,
    this.avatar,
    required this.type,
  });

  @override
  List<Object?> get props => [id, name, avatar, type];
}

class AppReviewEntity extends Equatable {
  final int id;
  final int rating;
  final String comment;
  final AppReviewUserEntity user;
  final String createdAt;

  const AppReviewEntity({
    required this.id,
    required this.rating,
    required this.comment,
    required this.user,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, rating, comment, user, createdAt];
}
