import 'package:wassaly/core/imports/imports.dart';

abstract class OrderDetailEvent extends Equatable {
  const OrderDetailEvent();

  @override
  List<Object?> get props => [];
}

class FetchOrderDetailEvent extends OrderDetailEvent {
  final int orderId;

  const FetchOrderDetailEvent(this.orderId);

  @override
  List<Object?> get props => [orderId];
}
