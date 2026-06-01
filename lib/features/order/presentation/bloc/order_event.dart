part of 'order_bloc.dart';

sealed class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object?> get props => [];
}

class OrdersFetched extends OrderEvent {
  const OrdersFetched();
}

class OrderDetailsFetched extends OrderEvent {
  final int orderId;

  const OrderDetailsFetched(this.orderId);

  @override
  List<Object?> get props => [orderId];
}

class OrderCancelled extends OrderEvent {
  final int orderId;

  const OrderCancelled(this.orderId);

  @override
  List<Object?> get props => [orderId];
}

class OrderDeleted extends OrderEvent {
  final int orderId;

  const OrderDeleted(this.orderId);

  @override
  List<Object?> get props => [orderId];
}

class OrdersSearched extends OrderEvent {
  final String query;

  const OrdersSearched(this.query);

  @override
  List<Object?> get props => [query];
}
