import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/data/models/product_model.dart';

abstract class OffersRemoteDataSource {
  Future<PaginatedResponse<ProductModel>> getOffers({int page = 1});
}

class OffersRemoteDataSourceImpl implements OffersRemoteDataSource {
  final DioService _dioService;

  const OffersRemoteDataSourceImpl(this._dioService);

  @override
  Future<PaginatedResponse<ProductModel>> getOffers({int page = 1}) async {
    final result = await _dioService.get(
      '/api/offers',
      queryParameters: {
        'page': page,
      },
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
        final pagination =
            responseData['pagination'] as Map<String, dynamic>? ?? {};
        final lastPage = pagination['last_page'] as int? ?? 1;
        final total = pagination['total'] as int? ?? 0;
        final currentPage = pagination['current_page'] as int? ?? page;

        if (data == null) {
          return PaginatedResponse(
            data: const <ProductModel>[],
            currentPage: currentPage,
            lastPage: lastPage,
            total: total,
          );
        }

        final List<dynamic> list = data as List<dynamic>;
        final products = list.map((e) {
          final offerItem = e as Map<String, dynamic>;
          // The API returns offer objects: { id, product: {...}, discount_percentage }
          // We extract the nested product and pass it to ProductModel.fromJson
          final productData =
              offerItem['product'] as Map<String, dynamic>? ?? offerItem;
          return ProductModel.fromJson(productData);
        }).toList();

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
