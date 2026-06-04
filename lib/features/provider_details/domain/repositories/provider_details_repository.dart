import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/provider_details/domain/entities/provider_detail_entity.dart';

abstract class ProviderDetailsRepository {
  Future<Either<Failure, ProviderDetailEntity>> getProviderDetails(
      int providerId,);
}
