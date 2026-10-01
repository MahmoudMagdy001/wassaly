import 'package:wassaly/features/product_details/domain/entities/product_detail_entity.dart';
import 'package:wassaly/features/service_details/data/models/service_detail_model.dart';

class ProductSpecificationModel {
  final int id;
  final String key;
  final String value;
  final String icon;

  const ProductSpecificationModel({
    required this.id,
    required this.key,
    required this.value,
    required this.icon,
  });

  factory ProductSpecificationModel.fromJson(Map<String, dynamic> json) =>
      ProductSpecificationModel(
        id: json['id'] as int? ?? 0,
        key: json['key'] as String? ?? '',
        value: json['value'] as String? ?? '',
        icon: json['icon'] as String? ?? '',
      );

  ProductSpecificationEntity toEntity() => ProductSpecificationEntity(
        id: id,
        key: key,
        value: value,
        icon: icon,
      );
}

class ProductDetailImageModel {
  final int id;
  final String image;

  const ProductDetailImageModel({
    required this.id,
    required this.image,
  });

  factory ProductDetailImageModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailImageModel(
        id: json['id'] as int? ?? 0,
        image: json['image'] as String? ?? '',
      );

  ProductDetailImageEntity toEntity() => ProductDetailImageEntity(
        id: id,
        image: image,
      );
}

class ProductReviewUserModel {
  final int id;
  final String name;
  final String? avatar;

  const ProductReviewUserModel({
    required this.id,
    required this.name,
    required this.avatar,
  });

  factory ProductReviewUserModel.fromJson(Map<String, dynamic> json) =>
      ProductReviewUserModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        avatar: json['avatar'] as String?,
      );

  ProductReviewUserEntity toEntity() => ProductReviewUserEntity(
        id: id,
        name: name,
        avatar: avatar,
      );
}

class ProductDetailReviewModel {
  final int id;
  final int rating;
  final String comment;
  final String createdAt;
  final ProductReviewUserModel user;

  const ProductDetailReviewModel({
    required this.id,
    required this.rating,
    required this.comment,
    required this.createdAt,
    required this.user,
  });

  factory ProductDetailReviewModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailReviewModel(
        id: json['id'] as int? ?? 0,
        rating: json['rating'] as int? ?? 0,
        comment: json['comment'] as String? ?? '',
        createdAt: json['created_at'] as String? ?? '',
        user: ProductReviewUserModel.fromJson(
          json['user'] as Map<String, dynamic>? ?? {},
        ),
      );

  ProductDetailReviewEntity toEntity() => ProductDetailReviewEntity(
        id: id,
        rating: rating,
        comment: comment,
        createdAt: createdAt,
        user: user.toEntity(),
      );
}

class ProductMetaModel {
  final int id;
  final String name;
  final String image;

  const ProductMetaModel({
    required this.id,
    required this.name,
    required this.image,
  });

  factory ProductMetaModel.fromJson(Map<String, dynamic> json) =>
      ProductMetaModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        image: json['image'] as String? ?? '',
      );

  ProductMetaEntity toEntity() => ProductMetaEntity(
        id: id,
        name: name,
        image: image,
      );
}

class ProductDetailModel {
  final int id;
  final String name;
  final String image;
  final String price;
  final String description;
  final List<ProductSpecificationModel> specifications;
  final List<ProductDetailImageModel> images;
  final ProductMetaModel? subCategory;
  final ProductMetaModel? brand;
  final List<ProductDetailReviewModel> reviews;
  final List<int> offerPercentages;
  final bool isFavorite;
  final ServiceProviderModel? provider;

  const ProductDetailModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.specifications,
    required this.images,
    required this.subCategory,
    required this.brand,
    required this.reviews,
    required this.offerPercentages,
    required this.isFavorite,
    required this.provider,
  });

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
        image: json['image'] as String? ?? '',
        price: json['price']?.toString() ?? '0',
        description: json['description'] as String? ?? '',
        specifications: (json['specifications'] as List<dynamic>?)
                ?.map((e) => ProductSpecificationModel.fromJson(
                    e as Map<String, dynamic>,),)
                .toList() ??
            [],
        images: (json['images'] as List<dynamic>?)
                ?.map((e) =>
                    ProductDetailImageModel.fromJson(e as Map<String, dynamic>),)
                .toList() ??
            [],
        subCategory: json['sub_category'] == null
            ? null
            : ProductMetaModel.fromJson(
                json['sub_category'] as Map<String, dynamic>,
              ),
        brand: json['brand'] == null
            ? null
            : ProductMetaModel.fromJson(
                json['brand'] as Map<String, dynamic>,
              ),
        reviews: (json['reviews'] as List<dynamic>?)
                ?.map((e) => ProductDetailReviewModel.fromJson(
                    e as Map<String, dynamic>,),)
                .toList() ??
            [],
        offerPercentages: (json['offers'] as List<dynamic>?)
                ?.map((e) =>
                    int.tryParse(
                      (e as Map<String, dynamic>)['discount_percentage']
                              ?.toString() ??
                          '',
                    ) ??
                    0,)
                .where((e) => e > 0)
                .toList() ??
            [],
        isFavorite: json['is_favorite'] as bool? ?? false,
        provider: json['provider'] == null
            ? null
            : ServiceProviderModel.fromJson(
                json['provider'] as Map<String, dynamic>,
              ),
      );

  ProductDetailEntity toEntity() => ProductDetailEntity(
        id: id,
        name: name,
        image: image,
        price: price,
        description: description,
        specifications: specifications.map((e) => e.toEntity()).toList(),
        images: images.map((e) => e.toEntity()).toList(),
        subCategory: subCategory?.toEntity(),
        brand: brand?.toEntity(),
        reviews: reviews.map((e) => e.toEntity()).toList(),
        offerPercentages: offerPercentages,
        isFavorite: isFavorite,
        provider: provider?.toEntity(),
      );
}
