import 'package:wassaly/core/imports/imports.dart';
import '../entities/order_entity.dart';
import '../repositories/orders_repository.dart';

class GetOrderDetailsUseCase {
  final OrdersRepository repository;

  const GetOrderDetailsUseCase(this.repository);

  Future<Either<Failure, OrderEntity>> call(int orderId) {
    return repository.getOrderDetails(orderId);
  }
}
