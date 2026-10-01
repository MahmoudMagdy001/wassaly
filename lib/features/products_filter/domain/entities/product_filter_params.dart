import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_filter_params.freezed.dart';

@freezed
sealed class ProductFilterParams with _$ProductFilterParams {
  const ProductFilterParams._();

  const factory ProductFilterParams({
    int? categoryId,
    double? minPrice,
    double? maxPrice,
    bool? specialOffers,
    List<int>? ratings,
    String? sort,
  }) = _ProductFilterParams;

  bool get isEmpty =>
      categoryId == null &&
      minPrice == null &&
      maxPrice == null &&
      specialOffers == null &&
      (ratings == null || ratings!.isEmpty) &&
      sort == null;
}
