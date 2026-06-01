import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';
import '../../domain/entities/order_entity.dart';
import '../../domain/repositories/order_repository.dart';
import '../datasources/order_remote_data_source.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDataSource remoteDataSource;
  final InternetConnectionService networkInfo;

  OrderRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  FutureEither<List<OrderEntity>> getOrders() async {
    if (await networkInfo.hasConnection()) {
      try {
        final remoteOrders = await remoteDataSource.getOrders();
        return Right(remoteOrders);
      } on Failure catch (failure) {
        return Left(failure);
      } catch (e) {
        return Left(UnknownFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No Internet Connection'));
    }
  }

  @override
  FutureEither<OrderEntity> getOrderDetails(int orderId) async {
    if (await networkInfo.hasConnection()) {
      try {
        final remoteOrder = await remoteDataSource.getOrderDetails(orderId);
        return Right(remoteOrder);
      } on Failure catch (failure) {
        return Left(failure);
      } catch (e) {
        return Left(UnknownFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No Internet Connection'));
    }
  }

  @override
  FutureEither<OrderEntity> cancelOrder(int orderId) async {
    if (await networkInfo.hasConnection()) {
      try {
        final remoteOrder = await remoteDataSource.cancelOrder(orderId);
        return Right(remoteOrder);
      } on Failure catch (failure) {
        return Left(failure);
      } catch (e) {
        return Left(UnknownFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No Internet Connection'));
    }
  }

  @override
  FutureEither<void> deleteOrder(int orderId) async {
    if (await networkInfo.hasConnection()) {
      try {
        await remoteDataSource.deleteOrder(orderId);
        return const Right(null);
      } on Failure catch (failure) {
        return Left(failure);
      } catch (e) {
        return Left(UnknownFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No Internet Connection'));
    }
  }

  @override
  FutureEither<List<OrderEntity>> searchOrders(String query) async {
    if (await networkInfo.hasConnection()) {
      try {
        final remoteOrders = await remoteDataSource.searchOrders(query);
        return Right(remoteOrders);
      } on Failure catch (failure) {
        return Left(failure);
      } catch (e) {
        return Left(UnknownFailure(e.toString()));
      }
    } else {
      return const Left(NetworkFailure('No Internet Connection'));
    }
  }
}
