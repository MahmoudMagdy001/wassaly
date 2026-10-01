import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_event.freezed.dart';

@freezed
sealed class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.getFavorites() = GetFavoritesEvent;
  const factory FavoriteEvent.getServiceFavorites() = GetServiceFavoritesEvent;
  const factory FavoriteEvent.toggleFavorite(
    int productId, {
    required bool expectedIsFavorite,
  }) = ToggleFavoriteEvent;
  const factory FavoriteEvent.toggleServiceFavorite(
    int serviceId, {
    required bool expectedIsFavorite,
  }) = ToggleServiceFavoriteEvent;
  const factory FavoriteEvent.loadMoreFavorites() = LoadMoreFavoritesEvent;
  const factory FavoriteEvent.loadMoreServiceFavorites() =
      LoadMoreServiceFavoritesEvent;
  const factory FavoriteEvent.clearFavorites() = ClearFavoritesEvent;
  const factory FavoriteEvent.syncPendingFavorites() =
      SyncPendingFavoritesEvent;
}
