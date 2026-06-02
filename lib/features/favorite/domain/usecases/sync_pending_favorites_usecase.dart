import 'package:fpdart/fpdart.dart' hide State;
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/features/favorite/domain/repositories/favorite_repository.dart';

/// Replays any add/remove favorite operations that were queued while offline.
class SyncPendingFavoritesUseCase {
  final FavoriteRepository repository;

  const SyncPendingFavoritesUseCase(this.repository);

  Future<Either<Failure, void>> call() => repository.syncPendingFavorites();
}
