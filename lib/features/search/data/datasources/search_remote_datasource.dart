import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/data/models/product_model.dart';

abstract class SearchRemoteDataSource {
  Future<PaginatedResponse<ProductModel>> searchProducts({
    required String query,
    int page = 1,
  });
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final DioService _dioService;

  const SearchRemoteDataSourceImpl(this._dioService);

  @override
  Future<PaginatedResponse<ProductModel>> searchProducts({
    required String query,
    int page = 1,
  }) async {
    final result = await _dioService.get(
      '/api/products-search',
      queryParameters: {
        'search': query,
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
