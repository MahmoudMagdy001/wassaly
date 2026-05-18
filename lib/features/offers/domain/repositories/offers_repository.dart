import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

abstract class OffersRepository {
  Future<Either<Failure, PaginatedResponse<ProductEntity>>> getOffers({
    int page = 1,
  });
}
