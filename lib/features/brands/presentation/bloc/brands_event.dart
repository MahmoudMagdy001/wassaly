import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands_event.freezed.dart';

@freezed
sealed class BrandsEvent with _$BrandsEvent {
  const factory BrandsEvent.getBrands() = GetBrandsEvent;
  const factory BrandsEvent.getBrandProducts({
    required int brandId,
    @Default(false) bool isRefresh,
  }) = GetBrandProductsEvent;
  const factory BrandsEvent.loadMoreBrandProducts({
    required int brandId,
  }) = LoadMoreBrandProductsEvent;
}
