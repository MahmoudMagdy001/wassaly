// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubCategoryState {

 SubCategoryStatus get status; SubCategoryDetailEntity? get subCategory; PaginatedResponse<ProductEntity> get products; String get errorMessage; bool get isLoadingMore;
/// Create a copy of SubCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryStateCopyWith<SubCategoryState> get copyWith => _$SubCategoryStateCopyWithImpl<SubCategoryState>(this as SubCategoryState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubCategoryState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.subCategory, _this.subCategory) || other.subCategory == _this.subCategory)&&(identical(other.products, _this.products) || other.products == _this.products)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.isLoadingMore, _this.isLoadingMore) || other.isLoadingMore == _this.isLoadingMore));
}


@override
int get hashCode {
  final _this = this as SubCategoryState;
  return Object.hash(runtimeType,_this.status,_this.subCategory,_this.products,_this.errorMessage,_this.isLoadingMore);
}

@override
String toString() {
  final _this = this as SubCategoryState;
  return 'SubCategoryState(status: ${_this.status}, subCategory: ${_this.subCategory}, products: ${_this.products}, errorMessage: ${_this.errorMessage}, isLoadingMore: ${_this.isLoadingMore})';
}


}

/// @nodoc
abstract mixin class $SubCategoryStateCopyWith<$Res>  {
  factory $SubCategoryStateCopyWith(SubCategoryState value, $Res Function(SubCategoryState) _then) = _$SubCategoryStateCopyWithImpl;
@useResult
$Res call({
 SubCategoryStatus status, SubCategoryDetailEntity? subCategory, PaginatedResponse<ProductEntity> products, String errorMessage, bool isLoadingMore
});


$SubCategoryDetailEntityCopyWith<$Res>? get subCategory;$PaginatedResponseCopyWith<ProductEntity, $Res> get products;

}
/// @nodoc
class _$SubCategoryStateCopyWithImpl<$Res>
    implements $SubCategoryStateCopyWith<$Res> {
  _$SubCategoryStateCopyWithImpl(this._self, this._then);

  final SubCategoryState _self;
  final $Res Function(SubCategoryState) _then;

/// Create a copy of SubCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? subCategory = freezed,Object? products = null,Object? errorMessage = null,Object? isLoadingMore = null,}) {
  return _then(SubCategoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubCategoryStatus,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryDetailEntity?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SubCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoryDetailEntityCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $SubCategoryDetailEntityCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of SubCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductEntity, $Res> get products {
  
  return $PaginatedResponseCopyWith<ProductEntity, $Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubCategoryState].
extension SubCategoryStatePatterns on SubCategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryState value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryState value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubCategoryStatus status,  SubCategoryDetailEntity? subCategory,  PaginatedResponse<ProductEntity> products,  String errorMessage,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryState() when $default != null:
return $default(_that.status,_that.subCategory,_that.products,_that.errorMessage,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubCategoryStatus status,  SubCategoryDetailEntity? subCategory,  PaginatedResponse<ProductEntity> products,  String errorMessage,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryState():
return $default(_that.status,_that.subCategory,_that.products,_that.errorMessage,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubCategoryStatus status,  SubCategoryDetailEntity? subCategory,  PaginatedResponse<ProductEntity> products,  String errorMessage,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryState() when $default != null:
return $default(_that.status,_that.subCategory,_that.products,_that.errorMessage,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _SubCategoryState extends SubCategoryState {
  const _SubCategoryState({this.status = SubCategoryStatus.initial, this.subCategory, this.products = const PaginatedResponse(data: []), this.errorMessage = '', this.isLoadingMore = false}): super._();
  

@override@JsonKey() final  SubCategoryStatus status;
@override final  SubCategoryDetailEntity? subCategory;
@override@JsonKey() final  PaginatedResponse<ProductEntity> products;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of SubCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryStateCopyWith<_SubCategoryState> get copyWith => __$SubCategoryStateCopyWithImpl<_SubCategoryState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryState&&(identical(other.status, status) || other.status == status)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.products, products) || other.products == products)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,subCategory,products,errorMessage,isLoadingMore);
}

@override
String toString() {
    return 'SubCategoryState(status: $status, subCategory: $subCategory, products: $products, errorMessage: $errorMessage, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryStateCopyWith<$Res> implements $SubCategoryStateCopyWith<$Res> {
  factory _$SubCategoryStateCopyWith(_SubCategoryState value, $Res Function(_SubCategoryState) _then) = __$SubCategoryStateCopyWithImpl;
@override @useResult
$Res call({
 SubCategoryStatus status, SubCategoryDetailEntity? subCategory, PaginatedResponse<ProductEntity> products, String errorMessage, bool isLoadingMore
});


@override $SubCategoryDetailEntityCopyWith<$Res>? get subCategory;@override $PaginatedResponseCopyWith<ProductEntity, $Res> get products;

}
/// @nodoc
class __$SubCategoryStateCopyWithImpl<$Res>
    implements _$SubCategoryStateCopyWith<$Res> {
  __$SubCategoryStateCopyWithImpl(this._self, this._then);

  final _SubCategoryState _self;
  final $Res Function(_SubCategoryState) _then;

/// Create a copy of SubCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? subCategory = freezed,Object? products = null,Object? errorMessage = null,Object? isLoadingMore = null,}) {
  return _then(_SubCategoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubCategoryStatus,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryDetailEntity?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SubCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoryDetailEntityCopyWith<$Res>? get subCategory {
    if (_self.subCategory == null) {
    return null;
  }

  return $SubCategoryDetailEntityCopyWith<$Res>(_self.subCategory!, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}/// Create a copy of SubCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductEntity, $Res> get products {
  
  return $PaginatedResponseCopyWith<ProductEntity, $Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}

// dart format on
