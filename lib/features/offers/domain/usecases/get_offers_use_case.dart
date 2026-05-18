import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/offers/domain/repositories/offers_repository.dart';

class GetOffersUseCase {
  final OffersRepository _repository;

  const GetOffersUseCase(this._repository);

  Future<Either<Failure, PaginatedResponse<ProductEntity>>> call(
      int params) async {
    return await _repository.getOffers(page: params);
  }
}
