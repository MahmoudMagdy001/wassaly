import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/product_details/domain/entities/product_detail_entity.dart';
import 'package:wassaly/features/product_details/domain/repositories/product_details_repository.dart';

class GetProductDetailsUseCase {
  final ProductDetailsRepository _repository;

  const GetProductDetailsUseCase(this._repository);

  Future<Either<Failure, ProductDetailEntity>> call(int productId) => _repository.getProductDetails(productId);
}
