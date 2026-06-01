part of 'order_bloc.dart';

class OrderState extends Equatable {
  final AppStatus status;
  final List<OrderEntity> orders;
  final OrderEntity? selectedOrder;
  final String? errorMessage;

  const OrderState({
    this.status = AppStatus.initial,
    this.orders = const [],
    this.selectedOrder,
    this.errorMessage,
  });

  OrderState copyWith({
    AppStatus? status,
    List<OrderEntity>? orders,
    OrderEntity? selectedOrder,
    bool nullSelectedOrder = false,
    String? errorMessage,
    bool clearError = false,
  }) {
    return OrderState(
      status: status ?? this.status,
      orders: orders ?? this.orders,
      selectedOrder: nullSelectedOrder ? null : (selectedOrder ?? this.selectedOrder),
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }

  @override
  List<Object?> get props => [status, orders, selectedOrder, errorMessage];
}
