import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

import '../entities/sub_category_detail_entity.dart';
import '../repositories/sub_category_repository.dart';

class GetSubCategoryDetailUseCase {
  final SubCategoryRepository repository;

  GetSubCategoryDetailUseCase(this.repository);

  Future<Either<Failure, SubCategoryDetailEntity>> call(int subCategoryId,
      {int page = 1}) async {
    return await repository.getSubCategoryDetail(subCategoryId, page: page);
  }
}
