import 'package:wassaly/features/home/data/models/product_model.dart';
import 'package:wassaly/features/provider_details/domain/entities/provider_detail_entity.dart';
import 'package:wassaly/features/sub_category/data/models/service_model.dart';

class ProviderDetailReviewModel {
  final int? id;
  final int rating;
  final String comment;
  final String? createdAt;

  const ProviderDetailReviewModel({
    required this.rating,
    required this.comment,
    this.id,
    this.createdAt,
  });

  factory ProviderDetailReviewModel.fromJson(Map<String, dynamic> json) =>
      ProviderDetailReviewModel(
        id: json['id'] as int?,
        rating: (json['rating'] as num).toInt(),
        comment: json['comment'] as String? ?? '',
        createdAt: json['created_at'] as String?,
      );

  ProviderDetailReviewEntity toEntity() => ProviderDetailReviewEntity(
        id: id,
        rating: rating,
        comment: comment,
        createdAt: createdAt,
      );
}

class ProviderDetailUserModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String? avatar;
  final String type;
  final int isActive;
  final String createdAt;

  const ProviderDetailUserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.type,
    required this.isActive,
    required this.createdAt,
    this.avatar,
  });

  factory ProviderDetailUserModel.fromJson(Map<String, dynamic> json) =>
      ProviderDetailUserModel(
        id: json['id'] as int,
        name: json['name'] as String,
        email: json['email'] as String,
        phone: json['phone'] as String,
        avatar: json['avatar'] as String?,
        type: json['type'] as String,
        isActive: json['is_active'] as int,
        createdAt: json['created_at'] as String,
      );

  ProviderDetailUserEntity toEntity() => ProviderDetailUserEntity(
        id: id,
        name: name,
        email: email,
        phone: phone,
        avatar: avatar,
        type: type,
        isActive: isActive,
        createdAt: createdAt,
      );
}

class ProviderDetailModel {
  final int id;
  final ProviderDetailUserModel user;
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
  final List<ProviderDetailReviewModel> reviews;
  final List<ServiceModel> services;
  final List<ProductModel> products;

  const ProviderDetailModel({
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

  factory ProviderDetailModel.fromJson(Map<String, dynamic> json) =>
      ProviderDetailModel(
        id: json['id'] as int,
        user: ProviderDetailUserModel.fromJson(
          json['user'] as Map<String, dynamic>,
        ),
        title: json['title'] as String,
        serviceDescription: json['service_description'] as String,
        priceFrom: json['price_from'] as String,
        fromDay: json['from_day'] as String,
        toDay: json['to_day'] as String,
        startTime: json['start_time'] as String,
        endTime: json['end_time'] as String,
        status: json['status'] as String,
        cover: json['cover'] as String,
        averageRating: (json['average_rating'] as num).toDouble(),
        reviewsCount: json['reviews_count'] as int,
        successfulOrdersCount: json['successful_orders_count'] as int,
        reviews: (json['reviews'] as List<dynamic>?)
                ?.map(
                  (e) => ProviderDetailReviewModel.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList() ??
            [],
        services: (json['services'] as List<dynamic>?)
                ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        products: (json['products'] as List<dynamic>?)
                ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
      );

  ProviderDetailEntity toEntity() => ProviderDetailEntity(
        id: id,
        user: user.toEntity(),
        title: title,
        serviceDescription: serviceDescription,
        priceFrom: priceFrom,
        fromDay: fromDay,
        toDay: toDay,
        startTime: startTime,
        endTime: endTime,
        status: status,
        cover: cover,
        averageRating: averageRating,
        reviewsCount: reviewsCount,
        successfulOrdersCount: successfulOrdersCount,
        reviews: reviews.map((e) => e.toEntity()).toList(),
        services: services.map((e) => e.toEntity()).toList(),
        products: products.map((e) => e.toEntity()).toList(),
      );
}
