import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/failure.dart';
import '../../domain/entities/cart_item_entity.dart';
import '../../domain/entities/coupon_entity.dart';
import '../../domain/entities/order_entity.dart';
import '../../domain/entities/place_order_params.dart';
import '../../domain/repositories/cart_repository.dart';
import '../datasources/cart_local_datasource.dart';
import '../datasources/cart_remote_datasource.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource remoteDataSource;
  final CartLocalDataSource localDataSource;

  const CartRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failure, List<CartItemEntity>>> getCartItems() async {
    try {
      final items = await remoteDataSource.getCartItems();
      return Right(items.map((e) => e.toEntity()).toList());
    } on ServerFailure catch (failure) {
      return Left(failure);
    } on NetworkFailure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> addToCart(int productId, int quantity) async {
    try {
      await remoteDataSource.addToCart(productId, quantity);
      return const Right(null);
    } on ServerFailure catch (failure) {
      return Left(failure);
    } on NetworkFailure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromCart(int cartItemId) async {
    try {
      await remoteDataSource.removeFromCart(cartItemId);
      return const Right(null);
    } on ServerFailure catch (failure) {
      return Left(failure);
    } on NetworkFailure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateQuantity(
      int cartItemId, int quantity) async {
    try {
      await remoteDataSource.updateQuantity(cartItemId, quantity);
      return const Right(null);
    } on ServerFailure catch (failure) {
      return Left(failure);
    } on NetworkFailure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CouponEntity>> applyCoupon(String code) async {
    try {
      final coupon = await remoteDataSource.applyCoupon(code);
      return Right(coupon.toEntity());
    } on ServerFailure catch (failure) {
      return Left(failure);
    } on NetworkFailure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, OrderEntity>> placeOrder(
      PlaceOrderParams params) async {
    try {
      final orderModel = await remoteDataSource.placeOrder(params);
      return Right(orderModel.toEntity());
    } on ServerFailure catch (failure) {
      return Left(failure);
    } on NetworkFailure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveCartItemsLocally(
      List<CartItemEntity> items) async {
    return localDataSource.saveCartItemsLocally(items);
  }

  @override
  List<CartItemEntity> getCartItemsLocally() {
    return localDataSource.getCartItemsLocally();
  }

  @override
  bool isProductInCartLocally(int productId) {
    return localDataSource.isProductInCartLocally(productId);
  }

  @override
  int getCartCountLocally() {
    return localDataSource.getCartCountLocally();
  }

  @override
  Future<Either<Failure, void>> clearCartLocally() async {
    return localDataSource.clearCartLocally();
  }
}
