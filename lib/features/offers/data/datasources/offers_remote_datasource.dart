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
        final items = (data as List? ?? []).map((e) {
          final offerItem = e as Map<String, dynamic>;
          final productData =
              offerItem['product'] as Map<String, dynamic>? ?? offerItem;
          return ProductModel.fromJson(productData);
        }).toList();

        return PaginatedResponse.fromJson(
          json: responseData,
          data: items,
        );
      },
    );
  }
}
