import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_event.freezed.dart';

@freezed
sealed class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getOrders() = GetOrdersEvent;
  const factory OrdersEvent.getServiceBookings() = GetServiceBookingsEvent;
  const factory OrdersEvent.loadMoreOrders() = LoadMoreOrdersEvent;
  const factory OrdersEvent.resetOrders() = ResetOrdersEvent;
}
