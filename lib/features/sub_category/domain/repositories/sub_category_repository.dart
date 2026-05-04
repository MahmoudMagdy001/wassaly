import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';

import '../entities/sub_category_detail_entity.dart';

abstract class SubCategoryRepository {
  Future<Either<Failure, SubCategoryDetailEntity>> getSubCategoryDetail(
      int subCategoryId,
      {int page = 1});
}
