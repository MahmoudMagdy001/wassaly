import 'package:wassaly/core/imports/imports.dart';
import '../entities/provider_detail_entity.dart';

abstract class ProviderDetailsRepository {
  Future<Either<Failure, ProviderDetailEntity>> getProviderDetails(
      int providerId);
}
