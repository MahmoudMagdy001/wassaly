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
        final data = responseData['data'];

        final pagination =
            responseData['pagination'] as Map<String, dynamic>? ?? {};
        final lastPage = pagination['last_page'] as int? ?? 1;
        final total = pagination['total'] as int? ?? 0;
        final currentPage = pagination['current_page'] as int? ?? page;

        if (data == null || (data is! List) || (data).isEmpty) {
          return PaginatedResponse(
            data: const <ProductModel>[],
            currentPage: currentPage,
            lastPage: lastPage,
            total: total,
          );
        }

        if (!status) {
          throw ServerFailure(message);
        }

        final List<dynamic> list = data;
        final products = list
            .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
            .toList();

        return PaginatedResponse(
          data: products,
          currentPage: currentPage,
          lastPage: lastPage,
          total: total,
        );
      },
    );
  }
}
