import 'package:wassaly/features/service_details/domain/entities/service_detail_entity.dart';

class ServiceReviewUserModel extends ServiceReviewUserEntity {
  const ServiceReviewUserModel({
    required super.id,
    required super.name,
    required super.avatar,
    required super.type,
  });

  factory ServiceReviewUserModel.fromJson(Map<String, dynamic> json) =>
      ServiceReviewUserModel(
        id: json['id'] as int,
        name: json['name'] as String,
        avatar: json['avatar'] as String?,
        type: json['type'] as String,
      );
}

class ServiceDetailReviewModel extends ServiceDetailReviewEntity {
  const ServiceDetailReviewModel({
    required super.id,
    required super.rating,
    required super.comment,
    required super.createdAt,
    required super.user,
  });

  factory ServiceDetailReviewModel.fromJson(Map<String, dynamic> json) =>
      ServiceDetailReviewModel(
        id: json['id'] as int,
        rating: (json['rating'] as num).toInt(),
        comment: json['comment'] as String,
        createdAt: json['created_at'] as String,
        user: ServiceReviewUserModel.fromJson(
            json['user'] as Map<String, dynamic>,),
      );
}

class ServiceAvailableTimeModel extends ServiceAvailableTimeEntity {
  const ServiceAvailableTimeModel({
    required super.id,
    required super.time,
  });

  factory ServiceAvailableTimeModel.fromJson(Map<String, dynamic> json) =>
      ServiceAvailableTimeModel(
        id: json['id'] as int,
        time: json['time'] as String,
      );
}

class ServiceAvailableDayModel extends ServiceAvailableDayEntity {
  const ServiceAvailableDayModel({
    required super.id,
    required super.nameAr,
    required super.nameEn,
    required super.availableTimes,
  });

  factory ServiceAvailableDayModel.fromJson(Map<String, dynamic> json) =>
      ServiceAvailableDayModel(
        id: json['id'] as int,
        nameAr: json['name_ar'] as String,
        nameEn: json['name_en'] as String,
        availableTimes: (json['available_times'] as List<dynamic>)
            .map((e) =>
                ServiceAvailableTimeModel.fromJson(e as Map<String, dynamic>),)
            .toList(),
      );
}

class ServiceProviderUserModel extends ServiceProviderUserEntity {
  const ServiceProviderUserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.avatar,
    required super.type,
    required super.isActive,
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
}

class ServiceProviderModel extends ServiceProviderEntity {
  const ServiceProviderModel({
    required super.id,
    required super.user,
    required super.title,
    required super.serviceDescription,
    required super.cover,
    required super.averageRating,
    required super.reviewsCount,
    required super.successfulOrdersCount,
  });

  factory ServiceProviderModel.fromJson(Map<String, dynamic> json) =>
      ServiceProviderModel(
        id: json['id'] as int,
        user: ServiceProviderUserModel.fromJson(
            json['user'] as Map<String, dynamic>,),
        title: json['title'] as String,
        serviceDescription: json['service_description'] as String,
        cover: json['cover'] as String,
        averageRating: (json['average_rating'] as num).toDouble(),
        reviewsCount: json['reviews_count'] as int,
        successfulOrdersCount: json['successful_orders_count'] as int,
      );
}

class ServiceDetailModel extends ServiceDetailEntity {
  const ServiceDetailModel({
    required super.id,
    required super.service,
    required super.description,
    required super.category,
    required super.image,
    required super.images,
    required super.price,
    required super.provider,
    required super.availableDays,
    required super.reviews,
    required super.isFavorite,
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
            json['provider'] as Map<String, dynamic>,),
        availableDays: (json['available_days'] as List<dynamic>)
            .map((e) =>
                ServiceAvailableDayModel.fromJson(e as Map<String, dynamic>),)
            .toList(),
        reviews: (json['reviews'] as List<dynamic>)
            .map((e) =>
                ServiceDetailReviewModel.fromJson(e as Map<String, dynamic>),)
            .toList(),
        isFavorite: json['is_favorite'] as bool,
      );
}
