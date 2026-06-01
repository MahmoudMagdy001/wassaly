import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/utils/typedefs.dart';

import '../entities/order_entity.dart';

abstract class OrderRepository {
  FutureEither<List<OrderEntity>> getOrders();
  FutureEither<OrderEntity> getOrderDetails(int orderId);
  FutureEither<OrderEntity> cancelOrder(int orderId);
  FutureEither<void> deleteOrder(int orderId);
  FutureEither<List<OrderEntity>> searchOrders(String query);
}
