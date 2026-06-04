import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/sub_category/domain/entities/sub_category_detail_entity.dart';
import 'package:wassaly/features/sub_category/domain/repositories/sub_category_repository.dart';

class GetSubCategoryDetailUseCase {
  final SubCategoryRepository repository;

  GetSubCategoryDetailUseCase(this.repository);

  Future<Either<Failure, SubCategoryDetailEntity>> call(int subCategoryId,
      {int page = 1,}) async => repository.getSubCategoryDetail(subCategoryId, page: page);
}
