import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/data/models/product_model.dart';
import 'package:wassaly/features/products_filter/domain/entities/product_filter_params.dart';

abstract class ProductsFilterRemoteDataSource {
  Future<PaginatedResponse<ProductModel>> filterProducts({
    required ProductFilterParams params,
    int page = 1,
  });
}

class ProductsFilterRemoteDataSourceImpl
    implements ProductsFilterRemoteDataSource {
  final DioService _dioService;

  const ProductsFilterRemoteDataSourceImpl(this._dioService);

  @override
  Future<PaginatedResponse<ProductModel>> filterProducts({
    required ProductFilterParams params,
    int page = 1,
  }) async {
    final queryParams = <String, dynamic>{
      if (params.categoryId != null) 'category_id': params.categoryId,
      if (params.minPrice != null) 'min_price': params.minPrice,
      if (params.maxPrice != null) 'max_price': params.maxPrice,
      if (params.specialOffers != null)
        'special_offers': params.specialOffers! ? 1 : 0,
      if (params.ratings != null && params.ratings!.isNotEmpty)
        'ratings': params.ratings,
      if (params.sort != null) 'sort': params.sort,
      'page': page,
    };

    final result = await _dioService.get(
      '/api/products-filter',
      queryParameters: queryParams,
    );

    return result.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }

        final data = responseData['data'];
        final items = (data as List? ?? [])
            .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
            .toList();

        return PaginatedResponse.fromJson(
          json: responseData,
          data: items,
        );
      },
    );
  }
}
