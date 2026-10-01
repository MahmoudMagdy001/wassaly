// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OffersState {

 AppStatus get status; bool get isLoadingMore; List<ProductEntity> get products; String get errorMessage; int get currentPage; bool get hasReachedMax;
/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OffersStateCopyWith<OffersState> get copyWith => _$OffersStateCopyWithImpl<OffersState>(this as OffersState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OffersState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OffersState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.isLoadingMore, _this.isLoadingMore) || other.isLoadingMore == _this.isLoadingMore)&&const DeepCollectionEquality().equals(other.products, _this.products)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.hasReachedMax, _this.hasReachedMax) || other.hasReachedMax == _this.hasReachedMax));
}


@override
int get hashCode {
  final _this = this as OffersState;
  return Object.hash(runtimeType,_this.status,_this.isLoadingMore,const DeepCollectionEquality().hash(_this.products),_this.errorMessage,_this.currentPage,_this.hasReachedMax);
}

@override
String toString() {
  final _this = this as OffersState;
  return 'OffersState(status: ${_this.status}, isLoadingMore: ${_this.isLoadingMore}, products: ${_this.products}, errorMessage: ${_this.errorMessage}, currentPage: ${_this.currentPage}, hasReachedMax: ${_this.hasReachedMax})';
}


}

/// @nodoc
abstract mixin class $OffersStateCopyWith<$Res>  {
  factory $OffersStateCopyWith(OffersState value, $Res Function(OffersState) _then) = _$OffersStateCopyWithImpl;
@useResult
$Res call({
 AppStatus status, bool isLoadingMore, List<ProductEntity> products, String errorMessage, int currentPage, bool hasReachedMax
});




}
/// @nodoc
class _$OffersStateCopyWithImpl<$Res>
    implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._self, this._then);

  final OffersState _self;
  final $Res Function(OffersState) _then;

/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? isLoadingMore = null,Object? products = null,Object? errorMessage = null,Object? currentPage = null,Object? hasReachedMax = null,}) {
  return _then(OffersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OffersState].
extension OffersStatePatterns on OffersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OffersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OffersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OffersState value)  $default,){
final _that = this;
switch (_that) {
case _OffersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OffersState value)?  $default,){
final _that = this;
switch (_that) {
case _OffersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppStatus status,  bool isLoadingMore,  List<ProductEntity> products,  String errorMessage,  int currentPage,  bool hasReachedMax)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OffersState() when $default != null:
return $default(_that.status,_that.isLoadingMore,_that.products,_that.errorMessage,_that.currentPage,_that.hasReachedMax);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppStatus status,  bool isLoadingMore,  List<ProductEntity> products,  String errorMessage,  int currentPage,  bool hasReachedMax)  $default,) {final _that = this;
switch (_that) {
case _OffersState():
return $default(_that.status,_that.isLoadingMore,_that.products,_that.errorMessage,_that.currentPage,_that.hasReachedMax);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppStatus status,  bool isLoadingMore,  List<ProductEntity> products,  String errorMessage,  int currentPage,  bool hasReachedMax)?  $default,) {final _that = this;
switch (_that) {
case _OffersState() when $default != null:
return $default(_that.status,_that.isLoadingMore,_that.products,_that.errorMessage,_that.currentPage,_that.hasReachedMax);case _:
  return null;

}
}

}

/// @nodoc


class _OffersState implements OffersState {
  const _OffersState({this.status = AppStatus.initial, this.isLoadingMore = false,  List<ProductEntity> products = const [], this.errorMessage = '', this.currentPage = 1, this.hasReachedMax = false}): _products = products;
  

@override@JsonKey() final  AppStatus status;
@override@JsonKey() final  bool isLoadingMore;
 final  List<ProductEntity> _products;
@override@JsonKey() List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasReachedMax;

/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OffersStateCopyWith<_OffersState> get copyWith => __$OffersStateCopyWithImpl<_OffersState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OffersState&&(identical(other.status, status) || other.status == status)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&const DeepCollectionEquality().equals(other.products, _products)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,isLoadingMore,const DeepCollectionEquality().hash(_products),errorMessage,currentPage,hasReachedMax);
}

@override
String toString() {
    return 'OffersState(status: $status, isLoadingMore: $isLoadingMore, products: $products, errorMessage: $errorMessage, currentPage: $currentPage, hasReachedMax: $hasReachedMax)';
}


}

/// @nodoc
abstract mixin class _$OffersStateCopyWith<$Res> implements $OffersStateCopyWith<$Res> {
  factory _$OffersStateCopyWith(_OffersState value, $Res Function(_OffersState) _then) = __$OffersStateCopyWithImpl;
@override @useResult
$Res call({
 AppStatus status, bool isLoadingMore, List<ProductEntity> products, String errorMessage, int currentPage, bool hasReachedMax
});




}
/// @nodoc
class __$OffersStateCopyWithImpl<$Res>
    implements _$OffersStateCopyWith<$Res> {
  __$OffersStateCopyWithImpl(this._self, this._then);

  final _OffersState _self;
  final $Res Function(_OffersState) _then;

/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? isLoadingMore = null,Object? products = null,Object? errorMessage = null,Object? currentPage = null,Object? hasReachedMax = null,}) {
  return _then(_OffersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
