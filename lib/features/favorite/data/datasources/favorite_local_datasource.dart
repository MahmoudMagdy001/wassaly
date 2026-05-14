import 'package:wassaly/core/imports/imports.dart';

abstract class FavoriteLocalDataSource {
  Future<Either<Failure, void>> saveFavoritesLocally(List<int> favoriteIds);
  List<int> getFavoriteIdsLocally();
  Future<Either<Failure, void>> clearFavoritesLocally();
}

class FavoriteLocalDataSourceImpl implements FavoriteLocalDataSource {
  final StorageService _storage;

  static const String _favoriteIdsKey = 'favorite_ids';

  const FavoriteLocalDataSourceImpl(this._storage);

  @override
  Future<Either<Failure, void>> saveFavoritesLocally(
      List<int> favoriteIds) async {
    try {
      await _storage.setStringList(
          _favoriteIdsKey, favoriteIds.map((id) => id.toString()).toList());
      return right(null);
    } catch (e) {
      return left(CacheFailure('Failed to save favorite IDs: ${e.toString()}'));
    }
  }

  @override
  List<int> getFavoriteIdsLocally() {
    final favoriteIds = _storage.getStringList(_favoriteIdsKey);
    if (favoriteIds == null) return [];

    try {
      return favoriteIds.map((id) => int.parse(id)).toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<Either<Failure, void>> clearFavoritesLocally() async {
    try {
      await _storage.remove(_favoriteIdsKey);
      return right(null);
    } catch (e) {
      return left(CacheFailure('Failed to clear favorites: ${e.toString()}'));
    }
  }
}
