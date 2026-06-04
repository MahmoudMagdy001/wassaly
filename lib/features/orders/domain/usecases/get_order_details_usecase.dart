import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/orders/domain/entities/order_entity.dart';
import 'package:wassaly/features/orders/domain/repositories/orders_repository.dart';

class GetOrderDetailsUseCase {
  final OrdersRepository repository;

  const GetOrderDetailsUseCase(this.repository);

  Future<Either<Failure, OrderEntity>> call(int orderId) => repository.getOrderDetails(orderId);
}
