import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/usecase/usecase.dart';
import '../../domain/entities/order_entity.dart';
import '../../domain/usecases/get_orders_usecase.dart';
import '../../domain/usecases/get_order_details_usecase.dart';
import '../../domain/usecases/cancel_order_usecase.dart';
import '../../domain/usecases/delete_order_usecase.dart';
import '../../domain/usecases/search_orders_usecase.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final GetOrdersUseCase _getOrdersUseCase;
  final GetOrderDetailsUseCase _getOrderDetailsUseCase;
  final CancelOrderUseCase _cancelOrderUseCase;
  final DeleteOrderUseCase _deleteOrderUseCase;
  final SearchOrdersUseCase _searchOrdersUseCase;

  OrderBloc({
    required GetOrdersUseCase getOrdersUseCase,
    required GetOrderDetailsUseCase getOrderDetailsUseCase,
    required CancelOrderUseCase cancelOrderUseCase,
    required DeleteOrderUseCase deleteOrderUseCase,
    required SearchOrdersUseCase searchOrdersUseCase,
  })  : _getOrdersUseCase = getOrdersUseCase,
        _getOrderDetailsUseCase = getOrderDetailsUseCase,
        _cancelOrderUseCase = cancelOrderUseCase,
        _deleteOrderUseCase = deleteOrderUseCase,
        _searchOrdersUseCase = searchOrdersUseCase,
        super(const OrderState()) {
    on<OrdersFetched>(_onOrdersFetched);
    on<OrderDetailsFetched>(_onOrderDetailsFetched);
    on<OrderCancelled>(_onOrderCancelled);
    on<OrderDeleted>(_onOrderDeleted);
    on<OrdersSearched>(_onOrdersSearched);
  }

  Future<void> _onOrdersFetched(
    OrdersFetched event,
    Emitter<OrderState> emit,
  ) async {
    emit(state.copyWith(status: AppStatus.loading));

    final result = await _getOrdersUseCase(const NoParams());

    result.fold(
      (failure) => emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: failure.message,
      )),
      (orders) => emit(state.copyWith(
        status: AppStatus.success,
        orders: orders,
        clearError: true,
      )),
    );
  }

  Future<void> _onOrderDetailsFetched(
    OrderDetailsFetched event,
    Emitter<OrderState> emit,
  ) async {
    emit(state.copyWith(status: AppStatus.loading));

    final result = await _getOrderDetailsUseCase(event.orderId);

    result.fold(
      (failure) => emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: failure.message,
      )),
      (order) => emit(state.copyWith(
        status: AppStatus.success,
        selectedOrder: order,
        clearError: true,
      )),
    );
  }

  Future<void> _onOrderCancelled(
    OrderCancelled event,
    Emitter<OrderState> emit,
  ) async {
    emit(state.copyWith(status: AppStatus.loading));

    final result = await _cancelOrderUseCase(event.orderId);

    result.fold(
      (failure) => emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: failure.message,
      )),
      (order) {
        final updatedOrders = state.orders?.map((o) {
          return o.id == order.id ? order : o;
        }).toList();

        emit(state.copyWith(
          status: AppStatus.success,
          selectedOrder: order,
          orders: updatedOrders,
          clearError: true,
        ));
      },
    );
  }

  Future<void> _onOrderDeleted(
    OrderDeleted event,
    Emitter<OrderState> emit,
  ) async {
    emit(state.copyWith(status: AppStatus.loading));

    final result = await _deleteOrderUseCase(event.orderId);

    result.fold(
      (failure) => emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: failure.message,
      )),
      (_) {
        final updatedOrders = state.orders.where((o) => o.id != event.orderId).toList();
        emit(state.copyWith(
          status: AppStatus.success,
          orders: updatedOrders,
          nullSelectedOrder: state.selectedOrder?.id == event.orderId,
          clearError: true,
        ));
        // Force refresh from server to ensure sync
        add(const OrdersFetched());
      },
    );
  }

  Future<void> _onOrdersSearched(
    OrdersSearched event,
    Emitter<OrderState> emit,
  ) async {
    if (event.query.isEmpty) {
      add(const OrdersFetched());
      return;
    }

    emit(state.copyWith(status: AppStatus.loading));

    final result = await _searchOrdersUseCase(event.query);

    result.fold(
      (failure) => emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: failure.message,
      )),
      (orders) {
        // Local filtering fallback to ensure results match the query
        final filteredOrders = orders.where((o) {
          final query = event.query.toLowerCase();
          return o.orderNumber.toLowerCase().contains(query) ||
              (o.customerName?.toLowerCase().contains(query) ?? false) ||
              (o.customerPhone?.contains(query) ?? false);
        }).toList();

        emit(state.copyWith(
          status: AppStatus.success,
          orders: filteredOrders,
          clearError: true,
        ));
      },
    );
  }
}
