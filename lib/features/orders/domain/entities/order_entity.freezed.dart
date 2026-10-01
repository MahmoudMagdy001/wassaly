// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderEntity {

 int get id; String get orderNumber; String get status; double get totalPrice; String get paymentMethod; double get deliveryFees; List<OrderItemEntity> get items; String get createdAt; double? get subTotal; double? get discountAmount; String? get customerName; String? get customerPhone; String? get deliveryAddress; String? get governorateId; String? get governorateName; String? get centerId; String? get centerName;
/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<OrderEntity> get copyWith => _$OrderEntityCopyWithImpl<OrderEntity>(this as OrderEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.orderNumber, _this.orderNumber) || other.orderNumber == _this.orderNumber)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.totalPrice, _this.totalPrice) || other.totalPrice == _this.totalPrice)&&(identical(other.paymentMethod, _this.paymentMethod) || other.paymentMethod == _this.paymentMethod)&&(identical(other.deliveryFees, _this.deliveryFees) || other.deliveryFees == _this.deliveryFees)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.subTotal, _this.subTotal) || other.subTotal == _this.subTotal)&&(identical(other.discountAmount, _this.discountAmount) || other.discountAmount == _this.discountAmount)&&(identical(other.customerName, _this.customerName) || other.customerName == _this.customerName)&&(identical(other.customerPhone, _this.customerPhone) || other.customerPhone == _this.customerPhone)&&(identical(other.deliveryAddress, _this.deliveryAddress) || other.deliveryAddress == _this.deliveryAddress)&&(identical(other.governorateId, _this.governorateId) || other.governorateId == _this.governorateId)&&(identical(other.governorateName, _this.governorateName) || other.governorateName == _this.governorateName)&&(identical(other.centerId, _this.centerId) || other.centerId == _this.centerId)&&(identical(other.centerName, _this.centerName) || other.centerName == _this.centerName));
}


@override
int get hashCode {
  final _this = this as OrderEntity;
  return Object.hash(runtimeType,_this.id,_this.orderNumber,_this.status,_this.totalPrice,_this.paymentMethod,_this.deliveryFees,const DeepCollectionEquality().hash(_this.items),_this.createdAt,_this.subTotal,_this.discountAmount,_this.customerName,_this.customerPhone,_this.deliveryAddress,_this.governorateId,_this.governorateName,_this.centerId,_this.centerName);
}

@override
String toString() {
  final _this = this as OrderEntity;
  return 'OrderEntity(id: ${_this.id}, orderNumber: ${_this.orderNumber}, status: ${_this.status}, totalPrice: ${_this.totalPrice}, paymentMethod: ${_this.paymentMethod}, deliveryFees: ${_this.deliveryFees}, items: ${_this.items}, createdAt: ${_this.createdAt}, subTotal: ${_this.subTotal}, discountAmount: ${_this.discountAmount}, customerName: ${_this.customerName}, customerPhone: ${_this.customerPhone}, deliveryAddress: ${_this.deliveryAddress}, governorateId: ${_this.governorateId}, governorateName: ${_this.governorateName}, centerId: ${_this.centerId}, centerName: ${_this.centerName})';
}


}

/// @nodoc
abstract mixin class $OrderEntityCopyWith<$Res>  {
  factory $OrderEntityCopyWith(OrderEntity value, $Res Function(OrderEntity) _then) = _$OrderEntityCopyWithImpl;
@useResult
$Res call({
 int id, String orderNumber, String status, double totalPrice, String paymentMethod, double deliveryFees, List<OrderItemEntity> items, String createdAt, double? subTotal, double? discountAmount, String? customerName, String? customerPhone, String? deliveryAddress, String? governorateId, String? governorateName, String? centerId, String? centerName
});




}
/// @nodoc
class _$OrderEntityCopyWithImpl<$Res>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._self, this._then);

  final OrderEntity _self;
  final $Res Function(OrderEntity) _then;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderNumber = null,Object? status = null,Object? totalPrice = null,Object? paymentMethod = null,Object? deliveryFees = null,Object? items = null,Object? createdAt = null,Object? subTotal = freezed,Object? discountAmount = freezed,Object? customerName = freezed,Object? customerPhone = freezed,Object? deliveryAddress = freezed,Object? governorateId = freezed,Object? governorateName = freezed,Object? centerId = freezed,Object? centerName = freezed,}) {
  return _then(OrderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,deliveryFees: null == deliveryFees ? _self.deliveryFees : deliveryFees // ignore: cast_nullable_to_non_nullable
as double,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemEntity>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,subTotal: freezed == subTotal ? _self.subTotal : subTotal // ignore: cast_nullable_to_non_nullable
as double?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,deliveryAddress: freezed == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as String?,governorateId: freezed == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String?,governorateName: freezed == governorateName ? _self.governorateName : governorateName // ignore: cast_nullable_to_non_nullable
as String?,centerId: freezed == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String?,centerName: freezed == centerName ? _self.centerName : centerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderEntity].
extension OrderEntityPatterns on OrderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrderEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String orderNumber,  String status,  double totalPrice,  String paymentMethod,  double deliveryFees,  List<OrderItemEntity> items,  String createdAt,  double? subTotal,  double? discountAmount,  String? customerName,  String? customerPhone,  String? deliveryAddress,  String? governorateId,  String? governorateName,  String? centerId,  String? centerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.orderNumber,_that.status,_that.totalPrice,_that.paymentMethod,_that.deliveryFees,_that.items,_that.createdAt,_that.subTotal,_that.discountAmount,_that.customerName,_that.customerPhone,_that.deliveryAddress,_that.governorateId,_that.governorateName,_that.centerId,_that.centerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String orderNumber,  String status,  double totalPrice,  String paymentMethod,  double deliveryFees,  List<OrderItemEntity> items,  String createdAt,  double? subTotal,  double? discountAmount,  String? customerName,  String? customerPhone,  String? deliveryAddress,  String? governorateId,  String? governorateName,  String? centerId,  String? centerName)  $default,) {final _that = this;
switch (_that) {
case _OrderEntity():
return $default(_that.id,_that.orderNumber,_that.status,_that.totalPrice,_that.paymentMethod,_that.deliveryFees,_that.items,_that.createdAt,_that.subTotal,_that.discountAmount,_that.customerName,_that.customerPhone,_that.deliveryAddress,_that.governorateId,_that.governorateName,_that.centerId,_that.centerName);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String orderNumber,  String status,  double totalPrice,  String paymentMethod,  double deliveryFees,  List<OrderItemEntity> items,  String createdAt,  double? subTotal,  double? discountAmount,  String? customerName,  String? customerPhone,  String? deliveryAddress,  String? governorateId,  String? governorateName,  String? centerId,  String? centerName)?  $default,) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.orderNumber,_that.status,_that.totalPrice,_that.paymentMethod,_that.deliveryFees,_that.items,_that.createdAt,_that.subTotal,_that.discountAmount,_that.customerName,_that.customerPhone,_that.deliveryAddress,_that.governorateId,_that.governorateName,_that.centerId,_that.centerName);case _:
  return null;

}
}

}

/// @nodoc


class _OrderEntity extends OrderEntity {
  const _OrderEntity({required this.id, required this.orderNumber, required this.status, required this.totalPrice, required this.paymentMethod, required this.deliveryFees, required  List<OrderItemEntity> items, required this.createdAt, this.subTotal, this.discountAmount, this.customerName, this.customerPhone, this.deliveryAddress, this.governorateId, this.governorateName, this.centerId, this.centerName}): _items = items,super._();
  

@override final  int id;
@override final  String orderNumber;
@override final  String status;
@override final  double totalPrice;
@override final  String paymentMethod;
@override final  double deliveryFees;
 final  List<OrderItemEntity> _items;
@override List<OrderItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String createdAt;
@override final  double? subTotal;
@override final  double? discountAmount;
@override final  String? customerName;
@override final  String? customerPhone;
@override final  String? deliveryAddress;
@override final  String? governorateId;
@override final  String? governorateName;
@override final  String? centerId;
@override final  String? centerName;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderEntityCopyWith<_OrderEntity> get copyWith => __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.deliveryFees, deliveryFees) || other.deliveryFees == deliveryFees)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.subTotal, subTotal) || other.subTotal == subTotal)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.deliveryAddress, deliveryAddress) || other.deliveryAddress == deliveryAddress)&&(identical(other.governorateId, governorateId) || other.governorateId == governorateId)&&(identical(other.governorateName, governorateName) || other.governorateName == governorateName)&&(identical(other.centerId, centerId) || other.centerId == centerId)&&(identical(other.centerName, centerName) || other.centerName == centerName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,orderNumber,status,totalPrice,paymentMethod,deliveryFees,const DeepCollectionEquality().hash(_items),createdAt,subTotal,discountAmount,customerName,customerPhone,deliveryAddress,governorateId,governorateName,centerId,centerName);
}

@override
String toString() {
    return 'OrderEntity(id: $id, orderNumber: $orderNumber, status: $status, totalPrice: $totalPrice, paymentMethod: $paymentMethod, deliveryFees: $deliveryFees, items: $items, createdAt: $createdAt, subTotal: $subTotal, discountAmount: $discountAmount, customerName: $customerName, customerPhone: $customerPhone, deliveryAddress: $deliveryAddress, governorateId: $governorateId, governorateName: $governorateName, centerId: $centerId, centerName: $centerName)';
}


}

/// @nodoc
abstract mixin class _$OrderEntityCopyWith<$Res> implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(_OrderEntity value, $Res Function(_OrderEntity) _then) = __$OrderEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String orderNumber, String status, double totalPrice, String paymentMethod, double deliveryFees, List<OrderItemEntity> items, String createdAt, double? subTotal, double? discountAmount, String? customerName, String? customerPhone, String? deliveryAddress, String? governorateId, String? governorateName, String? centerId, String? centerName
});




}
/// @nodoc
class __$OrderEntityCopyWithImpl<$Res>
    implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(this._self, this._then);

  final _OrderEntity _self;
  final $Res Function(_OrderEntity) _then;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderNumber = null,Object? status = null,Object? totalPrice = null,Object? paymentMethod = null,Object? deliveryFees = null,Object? items = null,Object? createdAt = null,Object? subTotal = freezed,Object? discountAmount = freezed,Object? customerName = freezed,Object? customerPhone = freezed,Object? deliveryAddress = freezed,Object? governorateId = freezed,Object? governorateName = freezed,Object? centerId = freezed,Object? centerName = freezed,}) {
  return _then(_OrderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,deliveryFees: null == deliveryFees ? _self.deliveryFees : deliveryFees // ignore: cast_nullable_to_non_nullable
as double,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemEntity>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,subTotal: freezed == subTotal ? _self.subTotal : subTotal // ignore: cast_nullable_to_non_nullable
as double?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,deliveryAddress: freezed == deliveryAddress ? _self.deliveryAddress : deliveryAddress // ignore: cast_nullable_to_non_nullable
as String?,governorateId: freezed == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String?,governorateName: freezed == governorateName ? _self.governorateName : governorateName // ignore: cast_nullable_to_non_nullable
as String?,centerId: freezed == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String?,centerName: freezed == centerName ? _self.centerName : centerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
