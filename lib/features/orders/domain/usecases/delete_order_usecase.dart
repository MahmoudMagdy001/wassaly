import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/orders/domain/repositories/orders_repository.dart';

class DeleteOrderUseCase {
  final OrdersRepository _repository;

  const DeleteOrderUseCase(this._repository);

  Future<Either<Failure, void>> call(int orderId) async => _repository.deleteOrder(orderId);
}
