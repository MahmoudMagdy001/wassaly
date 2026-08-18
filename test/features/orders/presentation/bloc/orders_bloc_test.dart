import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/orders/domain/entities/order_entity.dart';
import 'package:wassaly/features/orders/domain/usecases/get_orders_usecase.dart';
import 'package:wassaly/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:wassaly/features/orders/presentation/bloc/orders_event.dart';
import 'package:wassaly/features/orders/presentation/bloc/orders_state.dart';
import 'package:wassaly/features/service_booking/domain/usecases/get_my_bookings_usecase.dart';

class MockGetOrdersUseCase extends Mock implements GetOrdersUseCase {}
class MockGetMyBookingsUseCase extends Mock implements GetMyBookingsUseCase {}

void main() {
  late MockGetOrdersUseCase mockGetOrdersUseCase;
  late MockGetMyBookingsUseCase mockGetMyBookingsUseCase;

  const tOrder = OrderEntity(
    id: 1,
    orderNumber: 'ORD-1001',
    status: 'pending',
    totalPrice: 150.0,
    paymentMethod: 'cash',
    deliveryFees: 20.0,
    createdAt: '2026-08-18T12:00:00Z',
    items: [],
  );

  setUp(() {
    mockGetOrdersUseCase = MockGetOrdersUseCase();
    mockGetMyBookingsUseCase = MockGetMyBookingsUseCase();
  });

  OrdersBloc buildBloc() => OrdersBloc(
        getOrdersUseCase: mockGetOrdersUseCase,
        getMyBookingsUseCase: mockGetMyBookingsUseCase,
      );

  group('OrdersBloc', () {
    test('initial state has OrdersStatus.initial and empty orders', () async {
      final bloc = buildBloc();
      expect(bloc.state.status, OrdersStatus.initial);
      expect(bloc.state.orders.data, isEmpty);
      await bloc.close();
    });

    blocTest<OrdersBloc, OrdersState>(
      'emits [loading, success] when GetOrdersEvent succeeds',
      build: () {
        when(() => mockGetOrdersUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => const Right<Failure, PaginatedResponse<OrderEntity>>(
                  PaginatedResponse<OrderEntity>(data: [tOrder]),
                ),);
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetOrdersEvent()),
      expect: () => [
        const OrdersState(
          status: OrdersStatus.loading,
        ),
        const OrdersState(
          status: OrdersStatus.success,
          orders: PaginatedResponse<OrderEntity>(data: [tOrder]),
        ),
      ],
    );

    blocTest<OrdersBloc, OrdersState>(
      'emits [loading, failure] when GetOrdersEvent fails',
      build: () {
        when(() => mockGetOrdersUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => const Left<Failure, PaginatedResponse<OrderEntity>>(
                  ServerFailure('Failed to fetch orders'),
                ),);
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetOrdersEvent()),
      expect: () => [
        const OrdersState(
          status: OrdersStatus.loading,
        ),
        const OrdersState(
          status: OrdersStatus.failure,
          errorMessage: 'Failed to fetch orders',
        ),
      ],
    );
  });
}
