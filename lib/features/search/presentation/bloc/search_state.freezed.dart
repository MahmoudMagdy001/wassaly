// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

 String get query; SearchStatus get status; PaginatedResponse<ProductEntity> get products; String get errorMessage; bool get hasSearched;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SearchState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.query, _this.query) || other.query == _this.query)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.products, _this.products) || other.products == _this.products)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.hasSearched, _this.hasSearched) || other.hasSearched == _this.hasSearched));
}


@override
int get hashCode {
  final _this = this as SearchState;
  return Object.hash(runtimeType,_this.query,_this.status,_this.products,_this.errorMessage,_this.hasSearched);
}

@override
String toString() {
  final _this = this as SearchState;
  return 'SearchState(query: ${_this.query}, status: ${_this.status}, products: ${_this.products}, errorMessage: ${_this.errorMessage}, hasSearched: ${_this.hasSearched})';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 String query, SearchStatus status, PaginatedResponse<ProductEntity> products, String errorMessage, bool hasSearched
});


$PaginatedResponseCopyWith<ProductEntity, $Res> get products;

}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? status = null,Object? products = null,Object? errorMessage = null,Object? hasSearched = null,}) {
  return _then(SearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SearchStatus,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,hasSearched: null == hasSearched ? _self.hasSearched : hasSearched // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductEntity, $Res> get products {
  
  return $PaginatedResponseCopyWith<ProductEntity, $Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  SearchStatus status,  PaginatedResponse<ProductEntity> products,  String errorMessage,  bool hasSearched)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.query,_that.status,_that.products,_that.errorMessage,_that.hasSearched);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  SearchStatus status,  PaginatedResponse<ProductEntity> products,  String errorMessage,  bool hasSearched)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.query,_that.status,_that.products,_that.errorMessage,_that.hasSearched);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  SearchStatus status,  PaginatedResponse<ProductEntity> products,  String errorMessage,  bool hasSearched)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.query,_that.status,_that.products,_that.errorMessage,_that.hasSearched);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState extends SearchState {
  const _SearchState({this.query = '', this.status = SearchStatus.initial, this.products = const PaginatedResponse(data: []), this.errorMessage = '', this.hasSearched = false}): super._();
  

@override@JsonKey() final  String query;
@override@JsonKey() final  SearchStatus status;
@override@JsonKey() final  PaginatedResponse<ProductEntity> products;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool hasSearched;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.query, query) || other.query == query)&&(identical(other.status, status) || other.status == status)&&(identical(other.products, products) || other.products == products)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.hasSearched, hasSearched) || other.hasSearched == hasSearched));
}


@override
int get hashCode {
    return Object.hash(runtimeType,query,status,products,errorMessage,hasSearched);
}

@override
String toString() {
    return 'SearchState(query: $query, status: $status, products: $products, errorMessage: $errorMessage, hasSearched: $hasSearched)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 String query, SearchStatus status, PaginatedResponse<ProductEntity> products, String errorMessage, bool hasSearched
});


@override $PaginatedResponseCopyWith<ProductEntity, $Res> get products;

}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? status = null,Object? products = null,Object? errorMessage = null,Object? hasSearched = null,}) {
  return _then(_SearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SearchStatus,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductEntity>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,hasSearched: null == hasSearched ? _self.hasSearched : hasSearched // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SearchState
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
