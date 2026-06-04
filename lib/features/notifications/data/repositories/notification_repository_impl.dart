import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/notifications/data/datasources/notification_local_datasource.dart';
import 'package:wassaly/features/notifications/data/datasources/notification_remote_datasource.dart';
import 'package:wassaly/features/notifications/data/models/notification_model.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';
import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource remoteDataSource;
  final NotificationLocalDataSource localDataSource;

  NotificationRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failure, PaginatedResponse<NotificationEntity>>>
      getNotifications({int page = 1}) async {
    try {
      final result = await remoteDataSource.getNotifications(page: page);
      // Cache the result
      await localDataSource.cacheNotifications(
        result.data.map((e) => e).toList(),
        page: page,
      );
      return Right(result.map((model) => model as NotificationEntity));
    } on Failure catch (e) {
      // Try to return cached data on failure (like offline)
      final cached = localDataSource.getCachedNotifications(page: page);
      if (cached.isNotEmpty) {
        return Right(
          PaginatedResponse(
            data: cached.map((e) => e as NotificationEntity).toList(),
            currentPage: page,
            lastPage:
                page, // Fallback: we don't know the last page for sure from cache
          ),
        );
      }
      return Left(e);
    } on Object catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> markAsRead(int id) async {
    try {
      await remoteDataSource.markAsRead(id);
      // Update local cache
      final cached = localDataSource.getCachedNotifications();
      final updated = cached.map((n) {
        if (n.id == id) {
          return NotificationModel(
            id: n.id,
            title: n.title,
            body: n.body,
            type: n.type,
            data: n.data,
            isRead: true,
            createdAt: n.createdAt,
          );
        }
        return n;
      }).toList();
      await localDataSource.cacheNotifications(updated);
      return const Right(unit);
    } on Failure catch (e) {
      return Left(e);
    } on Object catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteNotification(int id) async {
    try {
      await remoteDataSource.deleteNotification(id);
      // Update local cache
      final cached = localDataSource.getCachedNotifications();
      final updated = cached.where((n) => n.id != id).toList();
      await localDataSource.cacheNotifications(updated);
      return const Right(unit);
    } on Failure catch (e) {
      return Left(e);
    } on Object catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> readAllNotifications() async {
    try {
      await remoteDataSource.readAllNotifications();
      // Update local cache
      final cached = localDataSource.getCachedNotifications();
      final updated = cached
          .map(
            (n) => NotificationModel(
              id: n.id,
              title: n.title,
              body: n.body,
              type: n.type,
              data: n.data,
              isRead: true,
              createdAt: n.createdAt,
            ),
          )
          .toList();
      await localDataSource.cacheNotifications(updated);
      return const Right(unit);
    } on Failure catch (e) {
      return Left(e);
    } on Object catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteAllNotifications() async {
    try {
      await remoteDataSource.deleteAllNotifications();
      await localDataSource.clearCache();
      return const Right(unit);
    } on Failure catch (e) {
      return Left(e);
    } on Object catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> getNotificationStatus() async {
    try {
      final result = await remoteDataSource.getNotificationStatus();
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } on Object catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> toggleNotification(bool isEnabled) async {
    try {
      final result = await remoteDataSource.toggleNotification(isEnabled);
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } on Object catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }
}
