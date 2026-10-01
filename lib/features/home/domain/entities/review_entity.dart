import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_entity.freezed.dart';

@freezed
abstract class ReviewEntity with _$ReviewEntity {
  const factory ReviewEntity({
    required int id,
    required int rating,
    required String comment,
    required String createdAt,
  }) = _ReviewEntity;
}
