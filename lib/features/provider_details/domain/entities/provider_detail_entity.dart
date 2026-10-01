import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

part 'provider_detail_entity.freezed.dart';

@freezed
sealed class ProviderDetailReviewEntity with _$ProviderDetailReviewEntity {
  const factory ProviderDetailReviewEntity({
    required int rating,
    required String comment,
    int? id,
    String? createdAt,
  }) = _ProviderDetailReviewEntity;
}

@freezed
sealed class ProviderDetailUserEntity with _$ProviderDetailUserEntity {
  const factory ProviderDetailUserEntity({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String type,
    required int isActive,
    required String createdAt,
    String? avatar,
  }) = _ProviderDetailUserEntity;
}

@freezed
sealed class ProviderDetailEntity with _$ProviderDetailEntity {
  const factory ProviderDetailEntity({
    required int id,
    required ProviderDetailUserEntity user,
    required String title,
    required String serviceDescription,
    required String priceFrom,
    required String fromDay,
    required String toDay,
    required String startTime,
    required String endTime,
    required String status,
    required String cover,
    required double averageRating,
    required int reviewsCount,
    required int successfulOrdersCount,
    required List<ProviderDetailReviewEntity> reviews,
    required List<ServiceEntity> services,
    required List<ProductEntity> products,
  }) = _ProviderDetailEntity;
}
