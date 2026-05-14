import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/failure.dart';
import '../entities/order_entity.dart';
import '../entities/place_order_params.dart';
import '../repositories/cart_repository.dart';

class PlaceOrderUseCase {
  final CartRepository _repository;

  const PlaceOrderUseCase(this._repository);

  Future<Either<Failure, OrderEntity>> call(PlaceOrderParams params) =>
      _repository.placeOrder(params);
}
