import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/orders/domain/entities/order_entity.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';

part 'orders_state.freezed.dart';

enum OrdersStatus { initial, loading, loadingMore, success, failure }

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default(OrdersStatus.initial) OrdersStatus status,
    @Default(PaginatedResponse<OrderEntity>(data: []))
    PaginatedResponse<OrderEntity> orders,
    @Default(OrdersStatus.initial) OrdersStatus serviceStatus,
    @Default(PaginatedResponse<BookingEntity>(data: []))
    PaginatedResponse<BookingEntity> serviceBookings,
    @Default('') String errorMessage,
  }) = _OrdersState;
}
