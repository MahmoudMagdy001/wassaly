// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CategoryEvent()';
}


}

/// @nodoc
class $CategoryEventCopyWith<$Res>  {
$CategoryEventCopyWith(CategoryEvent _, $Res Function(CategoryEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryEvent].
extension CategoryEventPatterns on CategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchCategoryDetailEvent value)?  fetchCategoryDetail,TResult Function( LoadMoreSubCategoriesEvent value)?  loadMoreSubCategories,TResult Function( SelectSubCategoryEvent value)?  selectSubCategory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchCategoryDetailEvent() when fetchCategoryDetail != null:
return fetchCategoryDetail(_that);case LoadMoreSubCategoriesEvent() when loadMoreSubCategories != null:
return loadMoreSubCategories(_that);case SelectSubCategoryEvent() when selectSubCategory != null:
return selectSubCategory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchCategoryDetailEvent value)  fetchCategoryDetail,required TResult Function( LoadMoreSubCategoriesEvent value)  loadMoreSubCategories,required TResult Function( SelectSubCategoryEvent value)  selectSubCategory,}){
final _that = this;
switch (_that) {
case FetchCategoryDetailEvent():
return fetchCategoryDetail(_that);case LoadMoreSubCategoriesEvent():
return loadMoreSubCategories(_that);case SelectSubCategoryEvent():
return selectSubCategory(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchCategoryDetailEvent value)?  fetchCategoryDetail,TResult? Function( LoadMoreSubCategoriesEvent value)?  loadMoreSubCategories,TResult? Function( SelectSubCategoryEvent value)?  selectSubCategory,}){
final _that = this;
switch (_that) {
case FetchCategoryDetailEvent() when fetchCategoryDetail != null:
return fetchCategoryDetail(_that);case LoadMoreSubCategoriesEvent() when loadMoreSubCategories != null:
return loadMoreSubCategories(_that);case SelectSubCategoryEvent() when selectSubCategory != null:
return selectSubCategory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int categoryId)?  fetchCategoryDetail,TResult Function( int categoryId)?  loadMoreSubCategories,TResult Function( SubCategoryEntity subCategory)?  selectSubCategory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchCategoryDetailEvent() when fetchCategoryDetail != null:
return fetchCategoryDetail(_that.categoryId);case LoadMoreSubCategoriesEvent() when loadMoreSubCategories != null:
return loadMoreSubCategories(_that.categoryId);case SelectSubCategoryEvent() when selectSubCategory != null:
return selectSubCategory(_that.subCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int categoryId)  fetchCategoryDetail,required TResult Function( int categoryId)  loadMoreSubCategories,required TResult Function( SubCategoryEntity subCategory)  selectSubCategory,}) {final _that = this;
switch (_that) {
case FetchCategoryDetailEvent():
return fetchCategoryDetail(_that.categoryId);case LoadMoreSubCategoriesEvent():
return loadMoreSubCategories(_that.categoryId);case SelectSubCategoryEvent():
return selectSubCategory(_that.subCategory);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int categoryId)?  fetchCategoryDetail,TResult? Function( int categoryId)?  loadMoreSubCategories,TResult? Function( SubCategoryEntity subCategory)?  selectSubCategory,}) {final _that = this;
switch (_that) {
case FetchCategoryDetailEvent() when fetchCategoryDetail != null:
return fetchCategoryDetail(_that.categoryId);case LoadMoreSubCategoriesEvent() when loadMoreSubCategories != null:
return loadMoreSubCategories(_that.categoryId);case SelectSubCategoryEvent() when selectSubCategory != null:
return selectSubCategory(_that.subCategory);case _:
  return null;

}
}

}

/// @nodoc


class FetchCategoryDetailEvent implements CategoryEvent {
  const FetchCategoryDetailEvent(this.categoryId);
  

 final  int categoryId;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchCategoryDetailEventCopyWith<FetchCategoryDetailEvent> get copyWith => _$FetchCategoryDetailEventCopyWithImpl<FetchCategoryDetailEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCategoryDetailEvent&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,categoryId);
}

@override
String toString() {
    return 'CategoryEvent.fetchCategoryDetail(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $FetchCategoryDetailEventCopyWith<$Res> implements $CategoryEventCopyWith<$Res> {
  factory $FetchCategoryDetailEventCopyWith(FetchCategoryDetailEvent value, $Res Function(FetchCategoryDetailEvent) _then) = _$FetchCategoryDetailEventCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$FetchCategoryDetailEventCopyWithImpl<$Res>
    implements $FetchCategoryDetailEventCopyWith<$Res> {
  _$FetchCategoryDetailEventCopyWithImpl(this._self, this._then);

  final FetchCategoryDetailEvent _self;
  final $Res Function(FetchCategoryDetailEvent) _then;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(FetchCategoryDetailEvent(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadMoreSubCategoriesEvent implements CategoryEvent {
  const LoadMoreSubCategoriesEvent(this.categoryId);
  

 final  int categoryId;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMoreSubCategoriesEventCopyWith<LoadMoreSubCategoriesEvent> get copyWith => _$LoadMoreSubCategoriesEventCopyWithImpl<LoadMoreSubCategoriesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreSubCategoriesEvent&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,categoryId);
}

@override
String toString() {
    return 'CategoryEvent.loadMoreSubCategories(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $LoadMoreSubCategoriesEventCopyWith<$Res> implements $CategoryEventCopyWith<$Res> {
  factory $LoadMoreSubCategoriesEventCopyWith(LoadMoreSubCategoriesEvent value, $Res Function(LoadMoreSubCategoriesEvent) _then) = _$LoadMoreSubCategoriesEventCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$LoadMoreSubCategoriesEventCopyWithImpl<$Res>
    implements $LoadMoreSubCategoriesEventCopyWith<$Res> {
  _$LoadMoreSubCategoriesEventCopyWithImpl(this._self, this._then);

  final LoadMoreSubCategoriesEvent _self;
  final $Res Function(LoadMoreSubCategoriesEvent) _then;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(LoadMoreSubCategoriesEvent(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SelectSubCategoryEvent implements CategoryEvent {
  const SelectSubCategoryEvent(this.subCategory);
  

 final  SubCategoryEntity subCategory;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectSubCategoryEventCopyWith<SelectSubCategoryEvent> get copyWith => _$SelectSubCategoryEventCopyWithImpl<SelectSubCategoryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectSubCategoryEvent&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory));
}


@override
int get hashCode {
    return Object.hash(runtimeType,subCategory);
}

@override
String toString() {
    return 'CategoryEvent.selectSubCategory(subCategory: $subCategory)';
}


}

/// @nodoc
abstract mixin class $SelectSubCategoryEventCopyWith<$Res> implements $CategoryEventCopyWith<$Res> {
  factory $SelectSubCategoryEventCopyWith(SelectSubCategoryEvent value, $Res Function(SelectSubCategoryEvent) _then) = _$SelectSubCategoryEventCopyWithImpl;
@useResult
$Res call({
 SubCategoryEntity subCategory
});


$SubCategoryEntityCopyWith<$Res> get subCategory;

}
/// @nodoc
class _$SelectSubCategoryEventCopyWithImpl<$Res>
    implements $SelectSubCategoryEventCopyWith<$Res> {
  _$SelectSubCategoryEventCopyWithImpl(this._self, this._then);

  final SelectSubCategoryEvent _self;
  final $Res Function(SelectSubCategoryEvent) _then;

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? subCategory = null,}) {
  return _then(SelectSubCategoryEvent(
null == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryEntity,
  ));
}

/// Create a copy of CategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoryEntityCopyWith<$Res> get subCategory {
  
  return $SubCategoryEntityCopyWith<$Res>(_self.subCategory, (value) {
    return _then(_self.copyWith(subCategory: value));
  });
}
}

// dart format on
