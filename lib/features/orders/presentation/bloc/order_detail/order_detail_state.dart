import 'package:wassaly/core/imports/imports.dart';
import '../../../domain/entities/order_entity.dart';

enum OrderDetailStatus { initial, loading, success, failure }

class OrderDetailState extends Equatable {
  final OrderDetailStatus status;
  final OrderEntity? order;
  final String errorMessage;

  const OrderDetailState({
    this.status = OrderDetailStatus.initial,
    this.order,
    this.errorMessage = '',
  });

  OrderDetailState copyWith({
    OrderDetailStatus? status,
    OrderEntity? order,
    String? errorMessage,
  }) {
    return OrderDetailState(
      status: status ?? this.status,
      order: order ?? this.order,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, order, errorMessage];
}
