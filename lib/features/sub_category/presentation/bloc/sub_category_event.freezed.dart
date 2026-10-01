// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubCategoryEvent {

 int get subCategoryId;
/// Create a copy of SubCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryEventCopyWith<SubCategoryEvent> get copyWith => _$SubCategoryEventCopyWithImpl<SubCategoryEvent>(this as SubCategoryEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubCategoryEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryEvent&&(identical(other.subCategoryId, _this.subCategoryId) || other.subCategoryId == _this.subCategoryId));
}


@override
int get hashCode {
  final _this = this as SubCategoryEvent;
  return Object.hash(runtimeType,_this.subCategoryId);
}

@override
String toString() {
  final _this = this as SubCategoryEvent;
  return 'SubCategoryEvent(subCategoryId: ${_this.subCategoryId})';
}


}

/// @nodoc
abstract mixin class $SubCategoryEventCopyWith<$Res>  {
  factory $SubCategoryEventCopyWith(SubCategoryEvent value, $Res Function(SubCategoryEvent) _then) = _$SubCategoryEventCopyWithImpl;
@useResult
$Res call({
 int subCategoryId
});




}
/// @nodoc
class _$SubCategoryEventCopyWithImpl<$Res>
    implements $SubCategoryEventCopyWith<$Res> {
  _$SubCategoryEventCopyWithImpl(this._self, this._then);

  final SubCategoryEvent _self;
  final $Res Function(SubCategoryEvent) _then;

/// Create a copy of SubCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subCategoryId = null,}) {
  return _then(_self.copyWith(
subCategoryId: null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SubCategoryEvent].
extension SubCategoryEventPatterns on SubCategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchSubCategoryDetailEvent value)?  fetchSubCategoryDetail,TResult Function( LoadMoreProductsEvent value)?  loadMoreProducts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchSubCategoryDetailEvent() when fetchSubCategoryDetail != null:
return fetchSubCategoryDetail(_that);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchSubCategoryDetailEvent value)  fetchSubCategoryDetail,required TResult Function( LoadMoreProductsEvent value)  loadMoreProducts,}){
final _that = this;
switch (_that) {
case FetchSubCategoryDetailEvent():
return fetchSubCategoryDetail(_that);case LoadMoreProductsEvent():
return loadMoreProducts(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchSubCategoryDetailEvent value)?  fetchSubCategoryDetail,TResult? Function( LoadMoreProductsEvent value)?  loadMoreProducts,}){
final _that = this;
switch (_that) {
case FetchSubCategoryDetailEvent() when fetchSubCategoryDetail != null:
return fetchSubCategoryDetail(_that);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int subCategoryId)?  fetchSubCategoryDetail,TResult Function( int subCategoryId)?  loadMoreProducts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchSubCategoryDetailEvent() when fetchSubCategoryDetail != null:
return fetchSubCategoryDetail(_that.subCategoryId);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts(_that.subCategoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int subCategoryId)  fetchSubCategoryDetail,required TResult Function( int subCategoryId)  loadMoreProducts,}) {final _that = this;
switch (_that) {
case FetchSubCategoryDetailEvent():
return fetchSubCategoryDetail(_that.subCategoryId);case LoadMoreProductsEvent():
return loadMoreProducts(_that.subCategoryId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int subCategoryId)?  fetchSubCategoryDetail,TResult? Function( int subCategoryId)?  loadMoreProducts,}) {final _that = this;
switch (_that) {
case FetchSubCategoryDetailEvent() when fetchSubCategoryDetail != null:
return fetchSubCategoryDetail(_that.subCategoryId);case LoadMoreProductsEvent() when loadMoreProducts != null:
return loadMoreProducts(_that.subCategoryId);case _:
  return null;

}
}

}

/// @nodoc


class FetchSubCategoryDetailEvent implements SubCategoryEvent {
  const FetchSubCategoryDetailEvent(this.subCategoryId);
  

@override final  int subCategoryId;

/// Create a copy of SubCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchSubCategoryDetailEventCopyWith<FetchSubCategoryDetailEvent> get copyWith => _$FetchSubCategoryDetailEventCopyWithImpl<FetchSubCategoryDetailEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchSubCategoryDetailEvent&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,subCategoryId);
}

@override
String toString() {
    return 'SubCategoryEvent.fetchSubCategoryDetail(subCategoryId: $subCategoryId)';
}


}

/// @nodoc
abstract mixin class $FetchSubCategoryDetailEventCopyWith<$Res> implements $SubCategoryEventCopyWith<$Res> {
  factory $FetchSubCategoryDetailEventCopyWith(FetchSubCategoryDetailEvent value, $Res Function(FetchSubCategoryDetailEvent) _then) = _$FetchSubCategoryDetailEventCopyWithImpl;
@override @useResult
$Res call({
 int subCategoryId
});




}
/// @nodoc
class _$FetchSubCategoryDetailEventCopyWithImpl<$Res>
    implements $FetchSubCategoryDetailEventCopyWith<$Res> {
  _$FetchSubCategoryDetailEventCopyWithImpl(this._self, this._then);

  final FetchSubCategoryDetailEvent _self;
  final $Res Function(FetchSubCategoryDetailEvent) _then;

/// Create a copy of SubCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subCategoryId = null,}) {
  return _then(FetchSubCategoryDetailEvent(
null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadMoreProductsEvent implements SubCategoryEvent {
  const LoadMoreProductsEvent(this.subCategoryId);
  

@override final  int subCategoryId;

/// Create a copy of SubCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMoreProductsEventCopyWith<LoadMoreProductsEvent> get copyWith => _$LoadMoreProductsEventCopyWithImpl<LoadMoreProductsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreProductsEvent&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,subCategoryId);
}

@override
String toString() {
    return 'SubCategoryEvent.loadMoreProducts(subCategoryId: $subCategoryId)';
}


}

/// @nodoc
abstract mixin class $LoadMoreProductsEventCopyWith<$Res> implements $SubCategoryEventCopyWith<$Res> {
  factory $LoadMoreProductsEventCopyWith(LoadMoreProductsEvent value, $Res Function(LoadMoreProductsEvent) _then) = _$LoadMoreProductsEventCopyWithImpl;
@override @useResult
$Res call({
 int subCategoryId
});




}
/// @nodoc
class _$LoadMoreProductsEventCopyWithImpl<$Res>
    implements $LoadMoreProductsEventCopyWith<$Res> {
  _$LoadMoreProductsEventCopyWithImpl(this._self, this._then);

  final LoadMoreProductsEvent _self;
  final $Res Function(LoadMoreProductsEvent) _then;

/// Create a copy of SubCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subCategoryId = null,}) {
  return _then(LoadMoreProductsEvent(
null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
