// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadCartItemsEvent value)?  loadCartItems,TResult Function( AddToCartEvent value)?  addToCart,TResult Function( RemoveFromCartEvent value)?  removeFromCart,TResult Function( UpdateQuantityEvent value)?  updateQuantity,TResult Function( CheckIfInCartEvent value)?  checkIfInCart,TResult Function( GetCartCountEvent value)?  getCartCount,TResult Function( LoadAddressesEvent value)?  loadAddresses,TResult Function( SelectAddressEvent value)?  selectAddress,TResult Function( ClearCartEvent value)?  clearCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadCartItemsEvent() when loadCartItems != null:
return loadCartItems(_that);case AddToCartEvent() when addToCart != null:
return addToCart(_that);case RemoveFromCartEvent() when removeFromCart != null:
return removeFromCart(_that);case UpdateQuantityEvent() when updateQuantity != null:
return updateQuantity(_that);case CheckIfInCartEvent() when checkIfInCart != null:
return checkIfInCart(_that);case GetCartCountEvent() when getCartCount != null:
return getCartCount(_that);case LoadAddressesEvent() when loadAddresses != null:
return loadAddresses(_that);case SelectAddressEvent() when selectAddress != null:
return selectAddress(_that);case ClearCartEvent() when clearCart != null:
return clearCart(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadCartItemsEvent value)  loadCartItems,required TResult Function( AddToCartEvent value)  addToCart,required TResult Function( RemoveFromCartEvent value)  removeFromCart,required TResult Function( UpdateQuantityEvent value)  updateQuantity,required TResult Function( CheckIfInCartEvent value)  checkIfInCart,required TResult Function( GetCartCountEvent value)  getCartCount,required TResult Function( LoadAddressesEvent value)  loadAddresses,required TResult Function( SelectAddressEvent value)  selectAddress,required TResult Function( ClearCartEvent value)  clearCart,}){
final _that = this;
switch (_that) {
case LoadCartItemsEvent():
return loadCartItems(_that);case AddToCartEvent():
return addToCart(_that);case RemoveFromCartEvent():
return removeFromCart(_that);case UpdateQuantityEvent():
return updateQuantity(_that);case CheckIfInCartEvent():
return checkIfInCart(_that);case GetCartCountEvent():
return getCartCount(_that);case LoadAddressesEvent():
return loadAddresses(_that);case SelectAddressEvent():
return selectAddress(_that);case ClearCartEvent():
return clearCart(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadCartItemsEvent value)?  loadCartItems,TResult? Function( AddToCartEvent value)?  addToCart,TResult? Function( RemoveFromCartEvent value)?  removeFromCart,TResult? Function( UpdateQuantityEvent value)?  updateQuantity,TResult? Function( CheckIfInCartEvent value)?  checkIfInCart,TResult? Function( GetCartCountEvent value)?  getCartCount,TResult? Function( LoadAddressesEvent value)?  loadAddresses,TResult? Function( SelectAddressEvent value)?  selectAddress,TResult? Function( ClearCartEvent value)?  clearCart,}){
final _that = this;
switch (_that) {
case LoadCartItemsEvent() when loadCartItems != null:
return loadCartItems(_that);case AddToCartEvent() when addToCart != null:
return addToCart(_that);case RemoveFromCartEvent() when removeFromCart != null:
return removeFromCart(_that);case UpdateQuantityEvent() when updateQuantity != null:
return updateQuantity(_that);case CheckIfInCartEvent() when checkIfInCart != null:
return checkIfInCart(_that);case GetCartCountEvent() when getCartCount != null:
return getCartCount(_that);case LoadAddressesEvent() when loadAddresses != null:
return loadAddresses(_that);case SelectAddressEvent() when selectAddress != null:
return selectAddress(_that);case ClearCartEvent() when clearCart != null:
return clearCart(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool silent)?  loadCartItems,TResult Function( int productId,  int quantity)?  addToCart,TResult Function( int cartItemId)?  removeFromCart,TResult Function( int cartItemId,  int quantity)?  updateQuantity,TResult Function( int productId)?  checkIfInCart,TResult Function()?  getCartCount,TResult Function()?  loadAddresses,TResult Function( String addressId)?  selectAddress,TResult Function()?  clearCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadCartItemsEvent() when loadCartItems != null:
return loadCartItems(_that.silent);case AddToCartEvent() when addToCart != null:
return addToCart(_that.productId,_that.quantity);case RemoveFromCartEvent() when removeFromCart != null:
return removeFromCart(_that.cartItemId);case UpdateQuantityEvent() when updateQuantity != null:
return updateQuantity(_that.cartItemId,_that.quantity);case CheckIfInCartEvent() when checkIfInCart != null:
return checkIfInCart(_that.productId);case GetCartCountEvent() when getCartCount != null:
return getCartCount();case LoadAddressesEvent() when loadAddresses != null:
return loadAddresses();case SelectAddressEvent() when selectAddress != null:
return selectAddress(_that.addressId);case ClearCartEvent() when clearCart != null:
return clearCart();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool silent)  loadCartItems,required TResult Function( int productId,  int quantity)  addToCart,required TResult Function( int cartItemId)  removeFromCart,required TResult Function( int cartItemId,  int quantity)  updateQuantity,required TResult Function( int productId)  checkIfInCart,required TResult Function()  getCartCount,required TResult Function()  loadAddresses,required TResult Function( String addressId)  selectAddress,required TResult Function()  clearCart,}) {final _that = this;
switch (_that) {
case LoadCartItemsEvent():
return loadCartItems(_that.silent);case AddToCartEvent():
return addToCart(_that.productId,_that.quantity);case RemoveFromCartEvent():
return removeFromCart(_that.cartItemId);case UpdateQuantityEvent():
return updateQuantity(_that.cartItemId,_that.quantity);case CheckIfInCartEvent():
return checkIfInCart(_that.productId);case GetCartCountEvent():
return getCartCount();case LoadAddressesEvent():
return loadAddresses();case SelectAddressEvent():
return selectAddress(_that.addressId);case ClearCartEvent():
return clearCart();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool silent)?  loadCartItems,TResult? Function( int productId,  int quantity)?  addToCart,TResult? Function( int cartItemId)?  removeFromCart,TResult? Function( int cartItemId,  int quantity)?  updateQuantity,TResult? Function( int productId)?  checkIfInCart,TResult? Function()?  getCartCount,TResult? Function()?  loadAddresses,TResult? Function( String addressId)?  selectAddress,TResult? Function()?  clearCart,}) {final _that = this;
switch (_that) {
case LoadCartItemsEvent() when loadCartItems != null:
return loadCartItems(_that.silent);case AddToCartEvent() when addToCart != null:
return addToCart(_that.productId,_that.quantity);case RemoveFromCartEvent() when removeFromCart != null:
return removeFromCart(_that.cartItemId);case UpdateQuantityEvent() when updateQuantity != null:
return updateQuantity(_that.cartItemId,_that.quantity);case CheckIfInCartEvent() when checkIfInCart != null:
return checkIfInCart(_that.productId);case GetCartCountEvent() when getCartCount != null:
return getCartCount();case LoadAddressesEvent() when loadAddresses != null:
return loadAddresses();case SelectAddressEvent() when selectAddress != null:
return selectAddress(_that.addressId);case ClearCartEvent() when clearCart != null:
return clearCart();case _:
  return null;

}
}

}

/// @nodoc


class LoadCartItemsEvent implements CartEvent {
  const LoadCartItemsEvent({this.silent = false});
  

@JsonKey() final  bool silent;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCartItemsEventCopyWith<LoadCartItemsEvent> get copyWith => _$LoadCartItemsEventCopyWithImpl<LoadCartItemsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCartItemsEvent&&(identical(other.silent, silent) || other.silent == silent));
}


@override
int get hashCode {
    return Object.hash(runtimeType,silent);
}

@override
String toString() {
    return 'CartEvent.loadCartItems(silent: $silent)';
}


}

/// @nodoc
abstract mixin class $LoadCartItemsEventCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $LoadCartItemsEventCopyWith(LoadCartItemsEvent value, $Res Function(LoadCartItemsEvent) _then) = _$LoadCartItemsEventCopyWithImpl;
@useResult
$Res call({
 bool silent
});




}
/// @nodoc
class _$LoadCartItemsEventCopyWithImpl<$Res>
    implements $LoadCartItemsEventCopyWith<$Res> {
  _$LoadCartItemsEventCopyWithImpl(this._self, this._then);

  final LoadCartItemsEvent _self;
  final $Res Function(LoadCartItemsEvent) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? silent = null,}) {
  return _then(LoadCartItemsEvent(
silent: null == silent ? _self.silent : silent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class AddToCartEvent implements CartEvent {
  const AddToCartEvent(this.productId, {this.quantity = 1});
  

 final  int productId;
@JsonKey() final  int quantity;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartEventCopyWith<AddToCartEvent> get copyWith => _$AddToCartEventCopyWithImpl<AddToCartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartEvent&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode {
    return Object.hash(runtimeType,productId,quantity);
}

@override
String toString() {
    return 'CartEvent.addToCart(productId: $productId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $AddToCartEventCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $AddToCartEventCopyWith(AddToCartEvent value, $Res Function(AddToCartEvent) _then) = _$AddToCartEventCopyWithImpl;
@useResult
$Res call({
 int productId, int quantity
});




}
/// @nodoc
class _$AddToCartEventCopyWithImpl<$Res>
    implements $AddToCartEventCopyWith<$Res> {
  _$AddToCartEventCopyWithImpl(this._self, this._then);

  final AddToCartEvent _self;
  final $Res Function(AddToCartEvent) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = null,}) {
  return _then(AddToCartEvent(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RemoveFromCartEvent implements CartEvent {
  const RemoveFromCartEvent(this.cartItemId);
  

 final  int cartItemId;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFromCartEventCopyWith<RemoveFromCartEvent> get copyWith => _$RemoveFromCartEventCopyWithImpl<RemoveFromCartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFromCartEvent&&(identical(other.cartItemId, cartItemId) || other.cartItemId == cartItemId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,cartItemId);
}

@override
String toString() {
    return 'CartEvent.removeFromCart(cartItemId: $cartItemId)';
}


}

/// @nodoc
abstract mixin class $RemoveFromCartEventCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $RemoveFromCartEventCopyWith(RemoveFromCartEvent value, $Res Function(RemoveFromCartEvent) _then) = _$RemoveFromCartEventCopyWithImpl;
@useResult
$Res call({
 int cartItemId
});




}
/// @nodoc
class _$RemoveFromCartEventCopyWithImpl<$Res>
    implements $RemoveFromCartEventCopyWith<$Res> {
  _$RemoveFromCartEventCopyWithImpl(this._self, this._then);

  final RemoveFromCartEvent _self;
  final $Res Function(RemoveFromCartEvent) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cartItemId = null,}) {
  return _then(RemoveFromCartEvent(
null == cartItemId ? _self.cartItemId : cartItemId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateQuantityEvent implements CartEvent {
  const UpdateQuantityEvent({required this.cartItemId, required this.quantity});
  

 final  int cartItemId;
 final  int quantity;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateQuantityEventCopyWith<UpdateQuantityEvent> get copyWith => _$UpdateQuantityEventCopyWithImpl<UpdateQuantityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateQuantityEvent&&(identical(other.cartItemId, cartItemId) || other.cartItemId == cartItemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode {
    return Object.hash(runtimeType,cartItemId,quantity);
}

@override
String toString() {
    return 'CartEvent.updateQuantity(cartItemId: $cartItemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $UpdateQuantityEventCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $UpdateQuantityEventCopyWith(UpdateQuantityEvent value, $Res Function(UpdateQuantityEvent) _then) = _$UpdateQuantityEventCopyWithImpl;
@useResult
$Res call({
 int cartItemId, int quantity
});




}
/// @nodoc
class _$UpdateQuantityEventCopyWithImpl<$Res>
    implements $UpdateQuantityEventCopyWith<$Res> {
  _$UpdateQuantityEventCopyWithImpl(this._self, this._then);

  final UpdateQuantityEvent _self;
  final $Res Function(UpdateQuantityEvent) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cartItemId = null,Object? quantity = null,}) {
  return _then(UpdateQuantityEvent(
cartItemId: null == cartItemId ? _self.cartItemId : cartItemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CheckIfInCartEvent implements CartEvent {
  const CheckIfInCartEvent(this.productId);
  

 final  int productId;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckIfInCartEventCopyWith<CheckIfInCartEvent> get copyWith => _$CheckIfInCartEventCopyWithImpl<CheckIfInCartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckIfInCartEvent&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,productId);
}

@override
String toString() {
    return 'CartEvent.checkIfInCart(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $CheckIfInCartEventCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $CheckIfInCartEventCopyWith(CheckIfInCartEvent value, $Res Function(CheckIfInCartEvent) _then) = _$CheckIfInCartEventCopyWithImpl;
@useResult
$Res call({
 int productId
});




}
/// @nodoc
class _$CheckIfInCartEventCopyWithImpl<$Res>
    implements $CheckIfInCartEventCopyWith<$Res> {
  _$CheckIfInCartEventCopyWithImpl(this._self, this._then);

  final CheckIfInCartEvent _self;
  final $Res Function(CheckIfInCartEvent) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(CheckIfInCartEvent(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetCartCountEvent implements CartEvent {
  const GetCartCountEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartCountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CartEvent.getCartCount()';
}


}




/// @nodoc


class LoadAddressesEvent implements CartEvent {
  const LoadAddressesEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadAddressesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CartEvent.loadAddresses()';
}


}




/// @nodoc


class SelectAddressEvent implements CartEvent {
  const SelectAddressEvent(this.addressId);
  

 final  String addressId;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectAddressEventCopyWith<SelectAddressEvent> get copyWith => _$SelectAddressEventCopyWithImpl<SelectAddressEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectAddressEvent&&(identical(other.addressId, addressId) || other.addressId == addressId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,addressId);
}

@override
String toString() {
    return 'CartEvent.selectAddress(addressId: $addressId)';
}


}

/// @nodoc
abstract mixin class $SelectAddressEventCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $SelectAddressEventCopyWith(SelectAddressEvent value, $Res Function(SelectAddressEvent) _then) = _$SelectAddressEventCopyWithImpl;
@useResult
$Res call({
 String addressId
});




}
/// @nodoc
class _$SelectAddressEventCopyWithImpl<$Res>
    implements $SelectAddressEventCopyWith<$Res> {
  _$SelectAddressEventCopyWithImpl(this._self, this._then);

  final SelectAddressEvent _self;
  final $Res Function(SelectAddressEvent) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? addressId = null,}) {
  return _then(SelectAddressEvent(
null == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearCartEvent implements CartEvent {
  const ClearCartEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearCartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CartEvent.clearCart()';
}


}




// dart format on
