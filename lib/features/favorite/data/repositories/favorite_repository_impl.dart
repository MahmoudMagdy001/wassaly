import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/favorite/data/datasources/favorite_local_datasource.dart';
import 'package:wassaly/features/favorite/data/datasources/favorite_remote_datasource.dart';
import 'package:wassaly/features/favorite/domain/repositories/favorite_repository.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteRemoteDataSource remoteDataSource;
  final FavoriteLocalDataSource localDataSource;

  const FavoriteRepositoryImpl(this.remoteDataSource, this.localDataSource);

  // ── Fetch products ─────────────────────────────────────────────────────────

  @override
  Future<Either<Failure, PaginatedResponse<ProductEntity>>> getFavorites(
      {int page = 1}) async {
    try {
      final response = await remoteDataSource.getFavorites(page: page);
      if (page == 1) {
        await localDataSource.cacheProductFavorites(response.data);
      }
      return Right(response);
    } on NetworkFailure {
      final localData = localDataSource.getCachedProductFavorites();
      return Right(PaginatedResponse(
          data: localData,
          currentPage: 1,
          lastPage: 1,
          total: localData.length));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  // ── Fetch services ─────────────────────────────────────────────────────────

  @override
  Future<Either<Failure, PaginatedResponse<ServiceEntity>>> getServiceFavorites(
      {int page = 1}) async {
    try {
      final response = await remoteDataSource.getServiceFavorites(page: page);
      if (page == 1) {
        await localDataSource.cacheServiceFavorites(response.data);
      }
      return Right(response);
    } on NetworkFailure {
      final localData = localDataSource.getCachedServiceFavorites();
      return Right(PaginatedResponse(
          data: localData,
          currentPage: 1,
          lastPage: 1,
          total: localData.length));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  // ── Toggle products ────────────────────────────────────────────────────────

  @override
  Future<Either<Failure, void>> addToFavorites(int productId) async {
    try {
      await remoteDataSource.addToFavorites(productId);
      return const Right(null);
    } on NetworkFailure {
      // Queue the operation for later sync
      await localDataSource.enqueuePendingOperation(
        PendingFavoriteOperation(
          action: PendingFavoriteAction.add,
          itemType: PendingFavoriteItemType.product,
          id: productId,
        ),
      );
      return const Right(null); // Optimistic success for UI
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromFavorites(int productId) async {
    try {
      await remoteDataSource.removeFromFavorites(productId);
      await localDataSource.toggleProductFavoriteLocally(
        ProductEntity(
          id: productId,
          name: '',
          image: '',
          price: '0.0',
          description: '',
          offers: const [],
          reviews: const [],
          isFavorite: false,
        ),
        false,
      );
      return const Right(null);
    } on NetworkFailure {
      // Remove locally + queue so the server is updated when back online
      await localDataSource.toggleProductFavoriteLocally(
        ProductEntity(
          id: productId,
          name: '',
          image: '',
          price: '0.0',
          description: '',
          offers: const [],
          reviews: const [],
          isFavorite: false,
        ),
        false,
      );
      await localDataSource.enqueuePendingOperation(
        PendingFavoriteOperation(
          action: PendingFavoriteAction.remove,
          itemType: PendingFavoriteItemType.product,
          id: productId,
        ),
      );
      return const Right(null);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  // ── Toggle services ────────────────────────────────────────────────────────

  @override
  Future<Either<Failure, void>> addServiceToFavorites(int serviceId) async {
    try {
      await remoteDataSource.addServiceToFavorites(serviceId);
      return const Right(null);
    } on NetworkFailure {
      await localDataSource.enqueuePendingOperation(
        PendingFavoriteOperation(
          action: PendingFavoriteAction.add,
          itemType: PendingFavoriteItemType.service,
          id: serviceId,
        ),
      );
      return const Right(null);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> removeServiceFromFavorites(
      int serviceId) async {
    try {
      await remoteDataSource.removeServiceFromFavorites(serviceId);
      await localDataSource.toggleServiceFavoriteLocally(
        ServiceEntity(
          id: serviceId,
          title: '',
          description: '',
          price: 0,
          isFavorite: false,
        ),
        false,
      );
      return const Right(null);
    } on NetworkFailure {
      await localDataSource.toggleServiceFavoriteLocally(
        ServiceEntity(
          id: serviceId,
          title: '',
          description: '',
          price: 0,
          isFavorite: false,
        ),
        false,
      );
      await localDataSource.enqueuePendingOperation(
        PendingFavoriteOperation(
          action: PendingFavoriteAction.remove,
          itemType: PendingFavoriteItemType.service,
          id: serviceId,
        ),
      );
      return const Right(null);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  // ── Sync pending operations ────────────────────────────────────────────────

  @override
  Future<Either<Failure, void>> syncPendingFavorites() async {
    final pending = localDataSource.getPendingOperations();
    if (pending.isEmpty) return const Right(null);

    final List<PendingFavoriteOperation> failed = [];

    for (final op in pending) {
      try {
        switch ((op.action, op.itemType)) {
          case (PendingFavoriteAction.add, PendingFavoriteItemType.product):
            await remoteDataSource.addToFavorites(op.id);
          case (PendingFavoriteAction.remove, PendingFavoriteItemType.product):
            await remoteDataSource.removeFromFavorites(op.id);
          case (PendingFavoriteAction.add, PendingFavoriteItemType.service):
            await remoteDataSource.addServiceToFavorites(op.id);
          case (PendingFavoriteAction.remove, PendingFavoriteItemType.service):
            await remoteDataSource.removeServiceFromFavorites(op.id);
        }
      } catch (_) {
        // If still offline or server error, keep the failed ops
        failed.add(op);
      }
    }

    // Clear the queue and re-enqueue any that still failed
    await localDataSource.clearPendingOperations();
    for (final op in failed) {
      await localDataSource.enqueuePendingOperation(op);
    }

    if (failed.isNotEmpty) {
      return Left(NetworkFailure(
          'Synced ${pending.length - failed.length}/${pending.length} pending favorites'));
    }
    return const Right(null);
  }
}
