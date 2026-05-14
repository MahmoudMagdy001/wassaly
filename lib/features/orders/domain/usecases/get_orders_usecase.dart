import 'package:wassaly/core/imports/imports.dart';
import '../entities/order_entity.dart';
import '../repositories/orders_repository.dart';

class GetOrdersUseCase {
  final OrdersRepository repository;

  const GetOrdersUseCase(this.repository);

  Future<Either<Failure, PaginatedResponse<OrderEntity>>> call({int page = 1}) {
    return repository.getOrders(page: page);
  }
}
