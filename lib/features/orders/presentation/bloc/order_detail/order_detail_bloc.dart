import 'package:wassaly/core/imports/imports.dart';
import '../../../domain/usecases/get_order_details_usecase.dart';
import 'order_detail_event.dart';
import 'order_detail_state.dart';

class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState> {
  final GetOrderDetailsUseCase _getOrderDetailsUseCase;

  OrderDetailBloc({
    required GetOrderDetailsUseCase getOrderDetailsUseCase,
  })  : _getOrderDetailsUseCase = getOrderDetailsUseCase,
        super(const OrderDetailState()) {
    on<FetchOrderDetailEvent>(_onFetchOrderDetail);
  }

  Future<void> _onFetchOrderDetail(
    FetchOrderDetailEvent event,
    Emitter<OrderDetailState> emit,
  ) async {
    emit(state.copyWith(status: OrderDetailStatus.loading, errorMessage: ''));

    final result = await _getOrderDetailsUseCase(event.orderId);

    result.fold(
      (failure) => emit(state.copyWith(
        status: OrderDetailStatus.failure,
        errorMessage: failure.message,
      )),
      (order) => emit(state.copyWith(
        status: OrderDetailStatus.success,
        order: order,
      )),
    );
  }
}
