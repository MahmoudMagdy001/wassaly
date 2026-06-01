import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/usecase/usecase.dart';
import '../entities/order_entity.dart';
import '../repositories/order_repository.dart';

class CancelOrderUseCase implements BaseUseCase<OrderEntity, int> {
  final OrderRepository repository;

  CancelOrderUseCase(this.repository);

  @override
  FutureEither<OrderEntity> call(int orderId) async {
    return await repository.cancelOrder(orderId);
  }
}
