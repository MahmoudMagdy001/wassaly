import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/usecase/usecase.dart';
import '../repositories/order_repository.dart';

class DeleteOrderUseCase implements BaseUseCase<void, int> {
  final OrderRepository repository;

  DeleteOrderUseCase(this.repository);

  @override
  FutureEither<void> call(int orderId) async {
    return await repository.deleteOrder(orderId);
  }
}
