import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/home/data/models/product_model.dart';
import 'package:wassaly/features/sub_category/data/models/service_model.dart';
import 'package:wassaly/features/sub_category/domain/entities/sub_category_detail_entity.dart';

part 'sub_category_detail_model.freezed.dart';

@freezed
abstract class SubCategoryDetailModel with _$SubCategoryDetailModel {
  const SubCategoryDetailModel._();

  const factory SubCategoryDetailModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String image,
    @Default([]) List<ServiceModel> services,
    @Default(PaginatedResponse(data: []))
    PaginatedResponse<ProductModel> products,
  }) = _SubCategoryDetailModel;

  factory SubCategoryDetailModel.fromJson(
    Map<String, dynamic> json, {
    Map<String, dynamic>? pagination,
  }) {
    final productsList = (json['products'] as List<dynamic>?)
            ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];

    final servicesList = (json['services'] as List<dynamic>?)
            ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];

    return SubCategoryDetailModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      services: servicesList,
      products: PaginatedResponse<ProductModel>(
        data: productsList,
        currentPage: pagination?['current_page'] as int? ?? 1,
        lastPage: pagination?['last_page'] as int? ?? 1,
        total: pagination?['total'] as int? ?? productsList.length,
      ),
    );
  }

  SubCategoryDetailEntity toEntity() => SubCategoryDetailEntity(
        id: id,
        name: name,
        image: image,
        services: services.map((s) => s.toEntity()).toList(),
        products: products.map((p) => p.toEntity()),
      );
}
