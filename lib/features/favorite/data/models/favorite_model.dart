import 'package:wassaly/features/home/domain/entities/offer_entity.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/home/domain/entities/review_entity.dart';

class FavoriteModel extends ProductEntity {
  const FavoriteModel({
    required super.id,
    required super.name,
    required super.image,
    required super.price,
    required super.description,
    required super.offers,
    required super.reviews,
    required super.isFavorite,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) {
    // Parse offers if available
    final offersData = json['offers'] as List<dynamic>? ?? [];
    final offers = offersData.map((offer) {
      final map = offer as Map<String, dynamic>;
      return OfferEntity(
        id: map['id'] as int? ?? 0,
        discountPercentage: map['discount_percentage'] as int? ?? 0,
      );
    }).toList();

    // Parse reviews if available
    final reviewsData = json['reviews'] as List<dynamic>? ?? [];
    final reviews = reviewsData.map((review) {
      final map = review as Map<String, dynamic>;
      return ReviewEntity(
        id: map['id'] as int? ?? 0,
        rating: map['rating'] as int? ?? 0,
        comment: map['comment'] as String? ?? '',
        createdAt: map['created_at'] as String? ?? '',
      );
    }).toList();

    return FavoriteModel(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      price: json['price'] as String,
      description: json['description'] as String,
      offers: offers,
      reviews: reviews,
      isFavorite: json['is_favorite'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'price': price,
        'description': description,
        'offers': offers
            .map((offer) => {
                  'discount_percentage': offer.discountPercentage,
                },)
            .toList(),
        'reviews': reviews
            .map((review) => {
                  'id': review.id,
                  'rating': review.rating,
                  'comment': review.comment,
                },)
            .toList(),
        'is_favorite': isFavorite,
      };

  ProductEntity toEntity() => ProductEntity(
        id: id,
        name: name,
        image: image,
        price: price,
        description: description,
        offers: offers,
        reviews: reviews,
        isFavorite: isFavorite,
      );
}
