import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail_event.freezed.dart';

@freezed
sealed class OrderDetailEvent with _$OrderDetailEvent {
  const factory OrderDetailEvent.fetch(int orderId) = FetchOrderDetailEvent;
  const factory OrderDetailEvent.cancel(int orderId) = CancelOrderEvent;
  const factory OrderDetailEvent.update(int orderId, Map<String, dynamic> data) =
      UpdateOrderEvent;
  const factory OrderDetailEvent.delete(int orderId) = DeleteOrderEvent;
}
