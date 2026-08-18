import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/features/cart/domain/entities/cart_item_entity.dart';
import 'package:wassaly/features/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/get_cart_items_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/remove_from_cart_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/update_quantity_usecase.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_event.dart';
import 'package:wassaly/features/cart/presentation/bloc/cart_state.dart';

class MockGetCartItemsUseCase extends Mock implements GetCartItemsUseCase {}
class MockAddToCartUseCase extends Mock implements AddToCartUseCase {}
class MockRemoveFromCartUseCase extends Mock implements RemoveFromCartUseCase {}
class MockUpdateQuantityUseCase extends Mock implements UpdateQuantityUseCase {}

void main() {
  late MockGetCartItemsUseCase mockGetCartItemsUseCase;
  late MockAddToCartUseCase mockAddToCartUseCase;
  late MockRemoveFromCartUseCase mockRemoveFromCartUseCase;
  late MockUpdateQuantityUseCase mockUpdateQuantityUseCase;

  const tCartItem = CartItemEntity(
    id: 1,
    productId: 10,
    productName: 'Sample Product',
    productImage: 'https://example.com/img.png',
    price: '50.0',
    quantity: 2,
    unitPrice: 50.0,
    totalPrice: 100.0,
  );

  setUp(() {
    mockGetCartItemsUseCase = MockGetCartItemsUseCase();
    mockAddToCartUseCase = MockAddToCartUseCase();
    mockRemoveFromCartUseCase = MockRemoveFromCartUseCase();
    mockUpdateQuantityUseCase = MockUpdateQuantityUseCase();
  });

  CartBloc buildBloc() => CartBloc(
        getCartItemsUseCase: mockGetCartItemsUseCase,
        addToCartUseCase: mockAddToCartUseCase,
        removeFromCartUseCase: mockRemoveFromCartUseCase,
        updateQuantityUseCase: mockUpdateQuantityUseCase,
      );

  group('CartBloc', () {
    test('initial state is CartStatus.initial with empty items', () async {
      final bloc = buildBloc();
      expect(bloc.state.status, CartStatus.initial);
      expect(bloc.state.items, isEmpty);
      await bloc.close();
    });

    blocTest<CartBloc, CartState>(
      'emits [loading, success] when LoadCartItemsEvent succeeds',
      build: () {
        when(() => mockGetCartItemsUseCase())
            .thenAnswer((_) async => const Right<Failure, List<CartItemEntity>>([tCartItem]));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const LoadCartItemsEvent()),
      expect: () => [
        const CartState(status: CartStatus.loading),
        const CartState(
          status: CartStatus.success,
          items: [tCartItem],
          cartCount: 1,
          inCartProductIds: {10},
        ),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [loading, error] when LoadCartItemsEvent fails',
      build: () {
        when(() => mockGetCartItemsUseCase())
            .thenAnswer((_) async => const Left<Failure, List<CartItemEntity>>(ServerFailure('Failed to load cart')));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const LoadCartItemsEvent()),
      expect: () => [
        const CartState(status: CartStatus.loading),
        const CartState(
          status: CartStatus.error,
          failure: ServerFailure('Failed to load cart'),
        ),
      ],
    );

    blocTest<CartBloc, CartState>(
      'resets state on ClearCartEvent',
      build: buildBloc,
      seed: () => const CartState(status: CartStatus.success, items: [tCartItem]),
      act: (bloc) => bloc.add(const ClearCartEvent()),
      expect: () => [
        const CartState(),
      ],
    );
  });
}
