import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/order_entity.dart';

enum OrdersStatus { initial, loading, success, failure }

class OrdersState extends Equatable {
  final OrdersStatus status;
  final PaginatedResponse<OrderEntity> orders;
  final String errorMessage;

  const OrdersState({
    this.status = OrdersStatus.initial,
    this.orders = const PaginatedResponse(data: []),
    this.errorMessage = '',
  });

  OrdersState copyWith({
    OrdersStatus? status,
    PaginatedResponse<OrderEntity>? orders,
    String? errorMessage,
  }) {
    return OrdersState(
      status: status ?? this.status,
      orders: orders ?? this.orders,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, orders, errorMessage];
}
