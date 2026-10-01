import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/review_entity.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
abstract class ReviewModel with _$ReviewModel {
  const ReviewModel._();

  const factory ReviewModel({
    @Default(0) int id,
    @Default(0) int rating,
    @Default('') String comment,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        id: json['id'] as int? ?? 0,
        rating: json['rating'] as int? ?? 0,
        comment: json['comment'] as String? ?? '',
        createdAt: json['created_at'] as String? ?? '',
      );

  ReviewEntity toEntity() => ReviewEntity(
        id: id,
        rating: rating,
        comment: comment,
        createdAt: createdAt,
      );
}
