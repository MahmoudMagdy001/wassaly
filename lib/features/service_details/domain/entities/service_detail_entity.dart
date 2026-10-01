import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/extensions/date_time_extension.dart';

part 'service_detail_entity.freezed.dart';

@freezed
abstract class ServiceReviewUserEntity with _$ServiceReviewUserEntity {
  const factory ServiceReviewUserEntity({
    required int id,
    required String name,
    required String? avatar,
    required String type,
  }) = _ServiceReviewUserEntity;
}

@freezed
abstract class ServiceDetailReviewEntity with _$ServiceDetailReviewEntity {
  const factory ServiceDetailReviewEntity({
    required int id,
    required int rating,
    required String comment,
    required String createdAt,
    required ServiceReviewUserEntity user,
  }) = _ServiceDetailReviewEntity;
}

@freezed
abstract class ServiceAvailableTimeEntity with _$ServiceAvailableTimeEntity {
  const ServiceAvailableTimeEntity._();

  const factory ServiceAvailableTimeEntity({
    required int id,
    required String time,
  }) = _ServiceAvailableTimeEntity;

  String get displayTime => time.to12HourFormat();
}

@freezed
abstract class ServiceAvailableDayEntity with _$ServiceAvailableDayEntity {
  const factory ServiceAvailableDayEntity({
    required int id,
    required String nameAr,
    required String nameEn,
    required List<ServiceAvailableTimeEntity> availableTimes,
  }) = _ServiceAvailableDayEntity;
}

@freezed
abstract class ServiceProviderUserEntity with _$ServiceProviderUserEntity {
  const factory ServiceProviderUserEntity({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String? avatar,
    required String type,
    required int isActive,
  }) = _ServiceProviderUserEntity;
}

@freezed
abstract class ServiceProviderEntity with _$ServiceProviderEntity {
  const factory ServiceProviderEntity({
    required int id,
    required ServiceProviderUserEntity user,
    required String title,
    required String serviceDescription,
    required String cover,
    required double averageRating,
    required int reviewsCount,
    required int successfulOrdersCount,
  }) = _ServiceProviderEntity;
}

@freezed
abstract class ServiceDetailEntity with _$ServiceDetailEntity {
  const ServiceDetailEntity._();

  const factory ServiceDetailEntity({
    required int id,
    required String service,
    required String description,
    required String? category,
    required String image,
    required List<String> images,
    required num price,
    required ServiceProviderEntity provider,
    required List<ServiceAvailableDayEntity> availableDays,
    required List<ServiceDetailReviewEntity> reviews,
    required bool isFavorite,
  }) = _ServiceDetailEntity;

  double get averageRating {
    if (reviews.isEmpty) return 0;
    return reviews.fold<int>(0, (sum, r) => sum + r.rating) / reviews.length;
  }
}
