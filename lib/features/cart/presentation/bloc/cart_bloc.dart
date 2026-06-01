import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injection/injection.dart';
import '../../data/models/cart_item_model.dart';
import '../../data/repositories/cart_repository_impl.dart';
import '../../domain/entities/cart_item_entity.dart';
import '../../domain/repositories/cart_repository.dart';
import '../../domain/usecases/add_to_cart_usecase.dart';
import '../../domain/usecases/apply_coupon_usecase.dart';
import '../../domain/usecases/checkout_usecase.dart';
import '../../domain/usecases/get_cart_items_usecase.dart';
import '../../domain/usecases/remove_from_cart_usecase.dart';
import '../../domain/usecases/update_quantity_usecase.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItemsUseCase getCartItemsUseCase;
  final AddToCartUseCase addToCartUseCase;
  final RemoveFromCartUseCase removeFromCartUseCase;
  final UpdateQuantityUseCase updateQuantityUseCase;
  final ApplyCouponUseCase applyCouponUseCase;
  final CheckoutUseCase checkoutUseCase;

  CartBloc({
    required this.getCartItemsUseCase,
    required this.addToCartUseCase,
    required this.removeFromCartUseCase,
    required this.updateQuantityUseCase,
    required this.applyCouponUseCase,
    required this.checkoutUseCase,
  }) : super(const CartState()) {
    on<LoadCartItemsEvent>(_onLoadCartItems);
    on<AddToCartEvent>(_onAddToCart);
    on<RemoveFromCartEvent>(_onRemoveFromCart);
    on<UpdateQuantityEvent>(_onUpdateQuantity);
    on<CheckIfInCartEvent>(_onCheckIfInCart);
    on<GetCartCountEvent>(_onGetCartCount);
    on<ApplyCouponEvent>(_onApplyCoupon);
    on<ClearCouponEvent>(_onClearCoupon);
    on<CouponCodeChangedEvent>(_onCouponCodeChanged);
    on<SelectedAddressChangedEvent>(_onSelectedAddressChanged);
    on<PhoneNumberChangedEvent>(_onPhoneNumberChanged);
    on<CustomerNameChangedEvent>(_onCustomerNameChanged);
    on<CheckoutEvent>(_onCheckout);
    on<PrefillCustomerInfoEvent>(_onPrefillCustomerInfo);
  }

  Future<void> _onLoadCartItems(
    LoadCartItemsEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(status: CartStatus.loading, errorMessage: null));

    final result = await getCartItemsUseCase();

    result.fold(
      (failure) => emit(state.copyWith(
        status: CartStatus.error,
        errorMessage: failure.message,
      )),
      (items) {
        // Save cart items locally for offline access
        _saveCartItemsLocally(items);

        return emit(state.copyWith(
          status: CartStatus.success,
          items: items,
          cartCount: items.length,
          inCartProductIds: items.map((e) => e.productId).toSet(),
          selectedAddressId: state.selectedAddressId,
        ));
      },
    );
  }

  Future<void> _onAddToCart(
    AddToCartEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(
      addingProductIds: {...state.addingProductIds, event.productId},
      errorMessage: null,
    ));

    final result = await addToCartUseCase(event.productId, event.quantity);

    await result.fold(
      (failure) async {
        emit(state.copyWith(
          addingProductIds: state.addingProductIds..remove(event.productId),
          errorMessage: failure.message,
        ));
      },
      (_) async {
        // Success - update cart state
        final updatedIds = {...state.inCartProductIds, event.productId};
        emit(state.copyWith(
          inCartProductIds: updatedIds,
          addingProductIds: state.addingProductIds..remove(event.productId),
          cartCount: state.cartCount + 1,
        ));

        // Reload cart items to include the newly added item
        final itemsResult = await getCartItemsUseCase();
        itemsResult.fold(
          (failure) => null, // Silently fail, keep existing state
          (items) {
            _saveCartItemsLocally(items);
            emit(state.copyWith(
              items: items,
              cartCount: items.length,
            ));
          },
        );
      },
    );
  }

  Future<void> _onRemoveFromCart(
    RemoveFromCartEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(
      addingProductIds: {...state.addingProductIds, event.cartItemId},
      errorMessage: null,
    ));

    final result = await removeFromCartUseCase(event.cartItemId);

    result.fold(
      (failure) => emit(state.copyWith(
        addingProductIds: state.addingProductIds..remove(event.cartItemId),
        errorMessage: failure.message,
      )),
      (_) {
        final updatedItems =
            state.items.where((item) => item.id != event.cartItemId).toList();
        final updatedIds = updatedItems.map((item) => item.productId).toSet();
        emit(state.copyWith(
          items: updatedItems,
          inCartProductIds: updatedIds,
          addingProductIds: state.addingProductIds..remove(event.cartItemId),
          cartCount: updatedItems.length,
        ));
      },
    );
  }

  Future<void> _onUpdateQuantity(
    UpdateQuantityEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(
      addingProductIds: {...state.addingProductIds, event.cartItemId},
      errorMessage: null,
    ));

    final result =
        await updateQuantityUseCase(event.cartItemId, event.quantity);

    result.fold(
      (failure) => emit(state.copyWith(
        addingProductIds: state.addingProductIds..remove(event.cartItemId),
        errorMessage: failure.message,
      )),
      (_) {
        final updatedItems = state.items.map((item) {
          if (item.id != event.cartItemId) return item;
          final unitPrice = item.unitPrice > 0
              ? item.unitPrice
              : item.totalPrice / item.quantity;
          return item.copyWith(
            quantity: event.quantity,
            totalPrice: unitPrice * event.quantity,
          );
        }).toList();

        emit(state.copyWith(
          items: updatedItems,
          addingProductIds: state.addingProductIds..remove(event.cartItemId),
        ));
      },
    );
  }

  Future<void> _onCheckIfInCart(
    CheckIfInCartEvent event,
    Emitter<CartState> emit,
  ) async {
    // Check if product is in cart locally based on cart items
    final isInCart =
        state.items.any((item) => item.productId == event.productId);

    final updatedIds = isInCart
        ? {...state.inCartProductIds, event.productId}
        : state.inCartProductIds;
    emit(state.copyWith(inCartProductIds: updatedIds));
  }

  Future<void> _onGetCartCount(
    GetCartCountEvent event,
    Emitter<CartState> emit,
  ) async {
    // Calculate cart count from existing cart items
    final cartCount = state.items.length;
    emit(state.copyWith(cartCount: cartCount));
  }

  Future<void> _onApplyCoupon(
    ApplyCouponEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(
      state.copyWith(
        couponStatus: CouponStatus.loading,
        clearCouponError: true,
        couponCode: event.code.trim(),
      ),
    );

    final result = await applyCouponUseCase(event.code.trim());

    result.fold(
      (failure) => emit(
        state.copyWith(
          couponStatus: CouponStatus.error,
          couponErrorMessage: failure.message,
          clearCoupon: true,
        ),
      ),
      (coupon) => emit(
        state.copyWith(
          couponStatus: CouponStatus.success,
          appliedCoupon: coupon,
          clearCouponError: true,
        ),
      ),
    );
  }

  Future<void> _onClearCoupon(
    ClearCouponEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(
      state.copyWith(
        couponStatus: CouponStatus.initial,
        clearCoupon: true,
        clearCouponError: true,
        couponCode: '',
      ),
    );
  }

  Future<void> _onCouponCodeChanged(
    CouponCodeChangedEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(couponCode: event.code));
  }

  Future<void> _onSelectedAddressChanged(
    SelectedAddressChangedEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(selectedAddressId: event.addressId));
  }

  Future<void> _onPhoneNumberChanged(
    PhoneNumberChangedEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  Future<void> _onCustomerNameChanged(
    CustomerNameChangedEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(customerName: event.customerName));
  }

  Future<void> _onCheckout(
    CheckoutEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(
      checkoutStatus: CheckoutStatus.loading,
      errorMessage: null,
    ));

    final result = await checkoutUseCase(
      customerName: event.customerName,
      customerPhone: event.customerPhone,
      governorateId: event.governorateId,
      centerId: event.centerId,
      region: event.region,
      address: event.address,
      couponCode: event.couponCode,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        checkoutStatus: CheckoutStatus.error,
        errorMessage: failure.message,
      )),
      (orderData) => emit(state.copyWith(
        checkoutStatus: CheckoutStatus.success,
        orderData: orderData,
        items: [],
        cartCount: 0,
        inCartProductIds: {},
      )),
    );
  }

  Future<void> _onPrefillCustomerInfo(
    PrefillCustomerInfoEvent event,
    Emitter<CartState> emit,
  ) async {
    final newName = (state.customerName.isEmpty)
        ? (event.name ?? state.customerName)
        : state.customerName;
    final newPhone = (state.phoneNumber.isEmpty)
        ? (event.phone ?? state.phoneNumber)
        : state.phoneNumber;

    if (newName != state.customerName || newPhone != state.phoneNumber) {
      emit(state.copyWith(
        customerName: newName,
        phoneNumber: newPhone,
      ));
    }
  }

  // Helper method to save cart items locally
  Future<void> _saveCartItemsLocally(List<CartItemEntity> items) async {
    try {
      // Convert entities to models and save via repository
      final cartRepository = sl<CartRepository>();
      if (cartRepository is CartRepositoryImpl) {
        // Access the datasource directly to save locally
        final dataSource = (cartRepository).remoteDataSource;
        final itemsModels = items
            .map((entity) => CartItemModel(
                  id: entity.id,
                  productId: entity.productId,
                  productName: entity.productName,
                  productImage: entity.productImage,
                  price: entity.price,
                  quantity: entity.quantity,
                  unitPrice: entity.unitPrice,
                  totalPrice: entity.totalPrice,
                ))
            .toList();

        await dataSource.saveCartItemsLocally(itemsModels);
      }
    } catch (e) {
      // Silently fail - local storage is optional
      print('Failed to save cart items locally: $e');
    }
  }
}
