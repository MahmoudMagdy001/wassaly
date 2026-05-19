import 'package:wassaly/core/imports/imports.dart';

class ProductFilterParams extends Equatable {
  final int? categoryId;
  final double? minPrice;
  final double? maxPrice;
  final bool? specialOffers;
  final List<int>? ratings;
  final String? sort;

  const ProductFilterParams({
    this.categoryId,
    this.minPrice,
    this.maxPrice,
    this.specialOffers,
    this.ratings,
    this.sort,
  });

  ProductFilterParams copyWith({
    int? categoryId,
    double? minPrice,
    double? maxPrice,
    bool? specialOffers,
    List<int>? ratings,
    String? sort,
    bool clearCategory = false,
  }) {
    return ProductFilterParams(
      categoryId: clearCategory ? null : (categoryId ?? this.categoryId),
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      specialOffers: specialOffers ?? this.specialOffers,
      ratings: ratings ?? this.ratings,
      sort: sort ?? this.sort,
    );
  }

  bool get isEmpty =>
      categoryId == null &&
      minPrice == null &&
      maxPrice == null &&
      specialOffers == null &&
      (ratings == null || ratings!.isEmpty) &&
      sort == null;

  @override
  List<Object?> get props => [
        categoryId,
        minPrice,
        maxPrice,
        specialOffers,
        ratings,
        sort,
      ];
}
