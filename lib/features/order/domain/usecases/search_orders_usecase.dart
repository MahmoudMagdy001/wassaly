import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/usecase/usecase.dart';
import '../entities/order_entity.dart';
import '../repositories/order_repository.dart';

class SearchOrdersUseCase implements BaseUseCase<List<OrderEntity>, String> {
  final OrderRepository repository;

  SearchOrdersUseCase(this.repository);

  @override
  FutureEither<List<OrderEntity>> call(String query) async {
    return await repository.searchOrders(query);
  }
}
