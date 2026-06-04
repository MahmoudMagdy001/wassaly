import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/banner_entity.dart';
import 'package:wassaly/features/home/domain/entities/category_entity.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/home/domain/entities/sub_category_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BannerEntity>>> getBanners();
  Future<Either<Failure, List<CategoryEntity>>> getCategories();
  Future<Either<Failure, PaginatedResponse<SubCategoryEntity>>> getPopularServices(
      {int page = 1,});
  Future<Either<Failure, PaginatedResponse<ProductEntity>>> getProducts(
      {int page = 1,});
}
