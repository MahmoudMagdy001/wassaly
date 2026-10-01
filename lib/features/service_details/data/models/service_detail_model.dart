import 'package:wassaly/features/service_details/domain/entities/service_detail_entity.dart';

class ServiceReviewUserModel {
  final int id;
  final String name;
  final String? avatar;
  final String type;

  const ServiceReviewUserModel({
    required this.id,
    required this.name,
    required this.type, this.avatar,
  });

  factory ServiceReviewUserModel.fromJson(Map<String, dynamic> json) =>
      ServiceReviewUserModel(
        id: json['id'] as int,
        name: json['name'] as String,
        avatar: json['avatar'] as String?,
        type: json['type'] as String,
      );

  ServiceReviewUserEntity toEntity() => ServiceReviewUserEntity(
        id: id,
        name: name,
        avatar: avatar,
        type: type,
      );
}

class ServiceDetailReviewModel {
  final int id;
  final int rating;
  final String comment;
  final String createdAt;
  final ServiceReviewUserModel user;

  const ServiceDetailReviewModel({
    required this.id,
    required this.rating,
    required this.comment,
    required this.createdAt,
    required this.user,
  });

  factory ServiceDetailReviewModel.fromJson(Map<String, dynamic> json) =>
      ServiceDetailReviewModel(
        id: json['id'] as int,
        rating: (json['rating'] as num).toInt(),
        comment: json['comment'] as String,
        createdAt: json['created_at'] as String,
        user: ServiceReviewUserModel.fromJson(
          json['user'] as Map<String, dynamic>,
        ),
      );

  ServiceDetailReviewEntity toEntity() => ServiceDetailReviewEntity(
        id: id,
        rating: rating,
        comment: comment,
        createdAt: createdAt,
        user: user.toEntity(),
      );
}

class ServiceAvailableTimeModel {
  final int id;
  final String time;

  const ServiceAvailableTimeModel({
    required this.id,
    required this.time,
  });

  factory ServiceAvailableTimeModel.fromJson(Map<String, dynamic> json) =>
      ServiceAvailableTimeModel(
        id: json['id'] as int,
        time: json['time'] as String,
      );

  ServiceAvailableTimeEntity toEntity() => ServiceAvailableTimeEntity(
        id: id,
        time: time,
      );
}

class ServiceAvailableDayModel {
  final int id;
  final String nameAr;
  final String nameEn;
  final List<ServiceAvailableTimeModel> availableTimes;

  const ServiceAvailableDayModel({
    required this.id,
    required this.nameAr,
    required this.nameEn,
    required this.availableTimes,
  });

  factory ServiceAvailableDayModel.fromJson(Map<String, dynamic> json) =>
      ServiceAvailableDayModel(
        id: json['id'] as int,
        nameAr: json['name_ar'] as String,
        nameEn: json['name_en'] as String,
        availableTimes: (json['available_times'] as List<dynamic>)
            .map(
              (e) =>
                  ServiceAvailableTimeModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );

  ServiceAvailableDayEntity toEntity() => ServiceAvailableDayEntity(
        id: id,
        nameAr: nameAr,
        nameEn: nameEn,
        availableTimes: availableTimes.map((e) => e.toEntity()).toList(),
      );
}

class ServiceProviderUserModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String? avatar;
  final String type;
  final int isActive;

  const ServiceProviderUserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.type, required this.isActive, this.avatar,
  });

  factory ServiceProviderUserModel.fromJson(Map<String, dynamic> json) =>
      ServiceProviderUserModel(
        id: json['id'] as int,
        name: json['name'] as String,
        email: json['email'] as String,
        phone: json['phone'] as String,
        avatar: json['avatar'] as String?,
        type: json['type'] as String,
        isActive: json['is_active'] as int,
      );

  ServiceProviderUserEntity toEntity() => ServiceProviderUserEntity(
        id: id,
        name: name,
        email: email,
        phone: phone,
        avatar: avatar,
        type: type,
        isActive: isActive,
      );
}

class ServiceProviderModel {
  final int id;
  final ServiceProviderUserModel user;
  final String title;
  final String serviceDescription;
  final String cover;
  final double averageRating;
  final int reviewsCount;
  final int successfulOrdersCount;

  const ServiceProviderModel({
    required this.id,
    required this.user,
    required this.title,
    required this.serviceDescription,
    required this.cover,
    required this.averageRating,
    required this.reviewsCount,
    required this.successfulOrdersCount,
  });

  factory ServiceProviderModel.fromJson(Map<String, dynamic> json) =>
      ServiceProviderModel(
        id: json['id'] as int,
        user: ServiceProviderUserModel.fromJson(
          json['user'] as Map<String, dynamic>,
        ),
        title: json['title'] as String,
        serviceDescription: json['service_description'] as String,
        cover: json['cover'] as String,
        averageRating: (json['average_rating'] as num).toDouble(),
        reviewsCount: json['reviews_count'] as int,
        successfulOrdersCount: json['successful_orders_count'] as int,
      );

  ServiceProviderEntity toEntity() => ServiceProviderEntity(
        id: id,
        user: user.toEntity(),
        title: title,
        serviceDescription: serviceDescription,
        cover: cover,
        averageRating: averageRating,
        reviewsCount: reviewsCount,
        successfulOrdersCount: successfulOrdersCount,
      );
}

class ServiceDetailModel {
  final int id;
  final String service;
  final String description;
  final String? category;
  final String image;
  final List<String> images;
  final num price;
  final ServiceProviderModel provider;
  final List<ServiceAvailableDayModel> availableDays;
  final List<ServiceDetailReviewModel> reviews;
  final bool isFavorite;

  const ServiceDetailModel({
    required this.id,
    required this.service,
    required this.description,
    required this.image, required this.images, required this.price, required this.provider, required this.availableDays, required this.reviews, required this.isFavorite, this.category,
  });

  factory ServiceDetailModel.fromJson(Map<String, dynamic> json) =>
      ServiceDetailModel(
        id: json['id'] as int,
        service: json['service'] as String,
        description: json['description'] as String,
        category: json['category'] is Map<String, dynamic>
            ? (json['category'] as Map<String, dynamic>)['name'] as String?
            : null,
        image: json['image'] as String,
        images: (json['images'] as List<dynamic>)
            .map((e) => (e as Map<String, dynamic>)['image'] as String)
            .toList(),
        price: json['price'] as num,
        provider: ServiceProviderModel.fromJson(
          json['provider'] as Map<String, dynamic>,
        ),
        availableDays: (json['available_days'] as List<dynamic>)
            .map(
              (e) =>
                  ServiceAvailableDayModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        reviews: (json['reviews'] as List<dynamic>)
            .map(
              (e) =>
                  ServiceDetailReviewModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        isFavorite: json['is_favorite'] as bool,
      );

  ServiceDetailEntity toEntity() => ServiceDetailEntity(
        id: id,
        service: service,
        description: description,
        category: category,
        image: image,
        images: images,
        price: price,
        provider: provider.toEntity(),
        availableDays: availableDays.map((e) => e.toEntity()).toList(),
        reviews: reviews.map((e) => e.toEntity()).toList(),
        isFavorite: isFavorite,
      );
}
