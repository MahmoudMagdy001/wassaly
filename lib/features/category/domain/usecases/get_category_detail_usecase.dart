import 'package:wassaly/core/imports/imports.dart';

import 'package:wassaly/features/category/domain/entities/category_detail_entity.dart';
import 'package:wassaly/features/category/domain/repositories/category_repository.dart';

class GetCategoryDetailUseCase {
  final CategoryRepository repository;

  GetCategoryDetailUseCase(this.repository);

  Future<Either<Failure, CategoryDetailEntity>> call(int categoryId,
      {int page = 1,}) async => repository.getCategoryDetail(categoryId, page: page);
}
