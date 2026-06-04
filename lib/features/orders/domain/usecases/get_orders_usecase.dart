import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/orders/domain/entities/order_entity.dart';
import 'package:wassaly/features/orders/domain/repositories/orders_repository.dart';

class GetOrdersUseCase {
  final OrdersRepository repository;

  const GetOrdersUseCase(this.repository);

  Future<Either<Failure, PaginatedResponse<OrderEntity>>> call({int page = 1}) => repository.getOrders(page: page);
}
