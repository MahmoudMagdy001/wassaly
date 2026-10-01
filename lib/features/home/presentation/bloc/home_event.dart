import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getBanners() = GetBannersEvent;
  const factory HomeEvent.getCategories() = GetCategoriesEvent;
  const factory HomeEvent.getPopularServices() = GetPopularServicesEvent;
  const factory HomeEvent.loadMorePopularServices() = LoadMorePopularServicesEvent;
  const factory HomeEvent.getProducts() = GetProductsEvent;
  const factory HomeEvent.loadMoreProducts() = LoadMoreProductsEvent;
  const factory HomeEvent.initialize() = HomeInitializeEvent;
}
