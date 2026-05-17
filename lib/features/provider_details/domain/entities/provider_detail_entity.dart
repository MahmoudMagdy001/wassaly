import 'package:wassaly/core/imports/imports.dart';

import '../../../home/domain/entities/product_entity.dart';
import '../../../sub_category/domain/entities/service_entity.dart';

class ProviderDetailReviewEntity extends Equatable {
  final int? id;
  final int rating;
  final String comment;
  final String? createdAt;

  const ProviderDetailReviewEntity({
    this.id,
    required this.rating,
    required this.comment,
    this.createdAt,
  });

  @override
  List<Object?> get props => [id, rating, comment, createdAt];
}

class ProviderDetailUserEntity extends Equatable {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String? avatar;
  final String type;
  final int isActive;
  final String createdAt;

  const ProviderDetailUserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    this.avatar,
    required this.type,
    required this.isActive,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        phone,
        avatar,
        type,
        isActive,
        createdAt,
      ];
}

class ProviderDetailEntity extends Equatable {
  final int id;
  final ProviderDetailUserEntity user;
  final String title;
  final String serviceDescription;
  final String priceFrom;
  final String fromDay;
  final String toDay;
  final String startTime;
  final String endTime;
  final String status;
  final String cover;
  final double averageRating;
  final int reviewsCount;
  final int successfulOrdersCount;
  final List<ProviderDetailReviewEntity> reviews;
  final List<ServiceEntity> services;
  final List<ProductEntity> products;

  const ProviderDetailEntity({
    required this.id,
    required this.user,
    required this.title,
    required this.serviceDescription,
    required this.priceFrom,
    required this.fromDay,
    required this.toDay,
    required this.startTime,
    required this.endTime,
    required this.status,
    required this.cover,
    required this.averageRating,
    required this.reviewsCount,
    required this.successfulOrdersCount,
    required this.reviews,
    required this.services,
    required this.products,
  });

  @override
  List<Object?> get props => [
        id,
        user,
        title,
        serviceDescription,
        priceFrom,
        fromDay,
        toDay,
        startTime,
        endTime,
        status,
        cover,
        averageRating,
        reviewsCount,
        successfulOrdersCount,
        reviews,
        services,
        products,
      ];
}
