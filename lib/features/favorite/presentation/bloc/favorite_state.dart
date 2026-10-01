import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

part 'favorite_state.freezed.dart';

enum FavoriteStatus { initial, loading, refreshing, success, error }

@freezed
abstract class FavoriteState with _$FavoriteState {
  const FavoriteState._();

  const factory FavoriteState({
    @Default(FavoriteStatus.initial) FavoriteStatus status,
    @Default(FavoriteStatus.initial) FavoriteStatus serviceStatus,
    @Default(PaginatedResponse(data: []))
    PaginatedResponse<ProductEntity> favorites,
    @Default(PaginatedResponse(data: []))
    PaginatedResponse<ServiceEntity> serviceFavorites,
    @Default({}) Set<int> favoriteIds,
    @Default({}) Set<int> togglingIds,
    @Default({}) Set<int> serviceFavoriteIds,
    @Default({}) Set<int> serviceTogglingIds,
    Failure? failure,
    Failure? serviceFailure,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isServiceLoadingMore,
  }) = _FavoriteState;

  bool get isLoading => status == FavoriteStatus.loading;
  bool get isRefreshing => status == FavoriteStatus.refreshing;
  bool get isSuccess => status == FavoriteStatus.success;
  bool get isError => status == FavoriteStatus.error;
  bool get isEmpty => favorites.data.isEmpty && isSuccess;

  /// True once the global favorites set has been loaded at least once.
  bool get hasLoaded => status != FavoriteStatus.initial;

  // Backward compatibility getter
  String get errorMessage => failure?.message ?? '';
}
