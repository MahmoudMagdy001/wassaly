import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/sub_category/domain/entities/sub_category_detail_entity.dart';

abstract class SubCategoryRepository {
  Future<Either<Failure, SubCategoryDetailEntity>> getSubCategoryDetail(
      int subCategoryId,
      {int page = 1,});
}
