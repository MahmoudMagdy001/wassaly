import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/orders/domain/entities/order_entity.dart';

part 'order_detail_state.freezed.dart';

enum OrderDetailStatus { initial, loading, success, failure }

enum OrderActionStatus { initial, loading, success, failure }

@freezed
abstract class OrderDetailState with _$OrderDetailState {
  const factory OrderDetailState({
    @Default(OrderDetailStatus.initial) OrderDetailStatus status,
    @Default(OrderActionStatus.initial) OrderActionStatus actionStatus,
    OrderEntity? order,
    @Default('') String errorMessage,
    @Default('') String actionErrorMessage,
    @Default(false) bool isNotFound,
  }) = _OrderDetailState;
}
