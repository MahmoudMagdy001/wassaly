import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/orders/domain/entities/order_entity.dart';

enum OrderDetailStatus { initial, loading, success, failure }

enum OrderActionStatus { initial, loading, success, failure }

class OrderDetailState extends Equatable {
  final OrderDetailStatus status;
  final OrderActionStatus actionStatus;
  final OrderEntity? order;
  final String errorMessage;
  final String actionErrorMessage;
  final bool isNotFound;

  const OrderDetailState({
    this.status = OrderDetailStatus.initial,
    this.actionStatus = OrderActionStatus.initial,
    this.order,
    this.errorMessage = '',
    this.actionErrorMessage = '',
    this.isNotFound = false,
  });

  OrderDetailState copyWith({
    OrderDetailStatus? status,
    OrderActionStatus? actionStatus,
    OrderEntity? order,
    String? errorMessage,
    String? actionErrorMessage,
    bool? isNotFound,
    bool clearOrder = false,
  }) => OrderDetailState(
      status: status ?? this.status,
      actionStatus: actionStatus ?? this.actionStatus,
      order: clearOrder ? null : order ?? this.order,
      errorMessage: errorMessage ?? this.errorMessage,
      actionErrorMessage: actionErrorMessage ?? this.actionErrorMessage,
      isNotFound: isNotFound ?? this.isNotFound,
    );

  @override
  List<Object?> get props => [
        status,
        actionStatus,
        order,
        errorMessage,
        actionErrorMessage,
        isNotFound,
      ];
}
