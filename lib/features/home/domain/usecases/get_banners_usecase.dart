import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/banner_entity.dart';
import 'package:wassaly/features/home/domain/repositories/home_repository.dart';

class GetBannersUseCase {
  final HomeRepository _repository;

  const GetBannersUseCase(this._repository);

  Future<Either<Failure, List<BannerEntity>>> call() async => _repository.getBanners();
}
