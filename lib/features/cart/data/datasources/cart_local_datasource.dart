import 'dart:convert' as convert;

import 'package:fpdart/fpdart.dart';

import '../../../../core/imports/core_imports.dart';
import '../../domain/entities/cart_item_entity.dart';
import '../models/cart_item_model.dart';
import '../models/offer_model.dart';

abstract class CartLocalDataSource {
  Future<Either<Failure, void>> saveCartItemsLocally(
      List<CartItemEntity> items);
  List<CartItemEntity> getCartItemsLocally();
  bool isProductInCartLocally(int productId);
  int getCartCountLocally();
  Future<Either<Failure, void>> clearCartLocally();
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  final StorageService _storage;

  static const String _cartKey = 'cart_items';
  static const String _cartCountKey = 'cart_count';
  static const String _inCartProductsKey = 'in_cart_products';

  const CartLocalDataSourceImpl(this._storage);

  @override
  Future<Either<Failure, void>> saveCartItemsLocally(
      List<CartItemEntity> items) async {
    try {
      final itemsModels =
          items.map((e) => CartItemModel.fromEntity(e)).toList();
      final itemsJson =
          itemsModels.map((item) => _cartItemToJson(item)).toList();
      await _storage.setString(_cartKey, convert.jsonEncode(itemsJson));

      // Also save cart count and in-cart product IDs for quick access
      await _storage.setInt(_cartCountKey, items.length);
      final inCartProductIds = items.map((item) => item.productId).toSet();
      await _storage.setStringList(_inCartProductsKey,
          inCartProductIds.map((id) => id.toString()).toList());

      return right(null);
    } catch (e) {
      return left(CacheFailure('Failed to save cart items: ${e.toString()}'));
    }
  }

  @override
  List<CartItemEntity> getCartItemsLocally() {
    final itemsJson = _storage.getString(_cartKey);
    if (itemsJson == null) return [];

    try {
      final itemsList = convert.jsonDecode(itemsJson) as List;
      final models = itemsList
          .map((json) => _cartItemFromJson(json as Map<String, dynamic>))
          .toList();
      return models.map((e) => e.toEntity()).toList();
    } catch (e) {
      return [];
    }
  }

  @override
  bool isProductInCartLocally(int productId) {
    final inCartProductIds = _storage.getStringList(_inCartProductsKey);
    if (inCartProductIds == null) return false;

    return inCartProductIds.contains(productId.toString());
  }

  @override
  int getCartCountLocally() {
    return _storage.getInt(_cartCountKey) ?? 0;
  }

  @override
  Future<Either<Failure, void>> clearCartLocally() async {
    try {
      await _storage.remove(_cartKey);
      await _storage.remove(_cartCountKey);
      await _storage.remove(_inCartProductsKey);
      return right(null);
    } catch (e) {
      return left(CacheFailure('Failed to clear cart: ${e.toString()}'));
    }
  }

  // --- Helper Methods ---

  Map<String, dynamic> _cartItemToJson(CartItemModel item) {
    return {
      'id': item.id,
      'productId': item.productId,
      'productName': item.productName,
      'productImage': item.productImage,
      'price': item.price,
      'productDescription': item.productDescription,
      'offers': item.offers?.map((offer) => offer.toJson()).toList(),
      'quantity': item.quantity,
      'unitPrice': item.unitPrice,
      'totalPrice': item.totalPrice,
    };
  }

  CartItemModel _cartItemFromJson(Map<String, dynamic> json) {
    final offersList = json['offers'] as List<dynamic>?;

    return CartItemModel(
      id: json['id'] as int,
      productId: json['productId'] as int,
      productName: json['productName'] as String,
      productImage: json['productImage'] as String,
      price: json['price'] as String,
      productDescription: json['productDescription'] as String?,
      offers: offersList
          ?.map((offer) => OfferModel.fromJson(offer as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int,
      unitPrice: (json['unitPrice'] as num?)?.toDouble() ?? 0.0,
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
