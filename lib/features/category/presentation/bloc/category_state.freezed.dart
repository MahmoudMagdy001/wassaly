// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryState {

 CategoryStatus get status; CategoryDetailEntity? get categoryDetail; PaginatedResponse<SubCategoryEntity> get subCategories; SubCategoryEntity? get selectedSubCategory; String get errorMessage; bool get isLoadingMore;
/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryStateCopyWith<CategoryState> get copyWith => _$CategoryStateCopyWithImpl<CategoryState>(this as CategoryState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CategoryState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.categoryDetail, _this.categoryDetail) || other.categoryDetail == _this.categoryDetail)&&(identical(other.subCategories, _this.subCategories) || other.subCategories == _this.subCategories)&&(identical(other.selectedSubCategory, _this.selectedSubCategory) || other.selectedSubCategory == _this.selectedSubCategory)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.isLoadingMore, _this.isLoadingMore) || other.isLoadingMore == _this.isLoadingMore));
}


@override
int get hashCode {
  final _this = this as CategoryState;
  return Object.hash(runtimeType,_this.status,_this.categoryDetail,_this.subCategories,_this.selectedSubCategory,_this.errorMessage,_this.isLoadingMore);
}

@override
String toString() {
  final _this = this as CategoryState;
  return 'CategoryState(status: ${_this.status}, categoryDetail: ${_this.categoryDetail}, subCategories: ${_this.subCategories}, selectedSubCategory: ${_this.selectedSubCategory}, errorMessage: ${_this.errorMessage}, isLoadingMore: ${_this.isLoadingMore})';
}


}

/// @nodoc
abstract mixin class $CategoryStateCopyWith<$Res>  {
  factory $CategoryStateCopyWith(CategoryState value, $Res Function(CategoryState) _then) = _$CategoryStateCopyWithImpl;
@useResult
$Res call({
 CategoryStatus status, CategoryDetailEntity? categoryDetail, PaginatedResponse<SubCategoryEntity> subCategories, SubCategoryEntity? selectedSubCategory, String errorMessage, bool isLoadingMore
});


$CategoryDetailEntityCopyWith<$Res>? get categoryDetail;$PaginatedResponseCopyWith<SubCategoryEntity, $Res> get subCategories;$SubCategoryEntityCopyWith<$Res>? get selectedSubCategory;

}
/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._self, this._then);

  final CategoryState _self;
  final $Res Function(CategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? categoryDetail = freezed,Object? subCategories = null,Object? selectedSubCategory = freezed,Object? errorMessage = null,Object? isLoadingMore = null,}) {
  return _then(CategoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CategoryStatus,categoryDetail: freezed == categoryDetail ? _self.categoryDetail : categoryDetail // ignore: cast_nullable_to_non_nullable
as CategoryDetailEntity?,subCategories: null == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<SubCategoryEntity>,selectedSubCategory: freezed == selectedSubCategory ? _self.selectedSubCategory : selectedSubCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailEntityCopyWith<$Res>? get categoryDetail {
    if (_self.categoryDetail == null) {
    return null;
  }

  return $CategoryDetailEntityCopyWith<$Res>(_self.categoryDetail!, (value) {
    return _then(_self.copyWith(categoryDetail: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<SubCategoryEntity, $Res> get subCategories {
  
  return $PaginatedResponseCopyWith<SubCategoryEntity, $Res>(_self.subCategories, (value) {
    return _then(_self.copyWith(subCategories: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoryEntityCopyWith<$Res>? get selectedSubCategory {
    if (_self.selectedSubCategory == null) {
    return null;
  }

  return $SubCategoryEntityCopyWith<$Res>(_self.selectedSubCategory!, (value) {
    return _then(_self.copyWith(selectedSubCategory: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryState].
extension CategoryStatePatterns on CategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryState value)  $default,){
final _that = this;
switch (_that) {
case _CategoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryState value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategoryStatus status,  CategoryDetailEntity? categoryDetail,  PaginatedResponse<SubCategoryEntity> subCategories,  SubCategoryEntity? selectedSubCategory,  String errorMessage,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
return $default(_that.status,_that.categoryDetail,_that.subCategories,_that.selectedSubCategory,_that.errorMessage,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategoryStatus status,  CategoryDetailEntity? categoryDetail,  PaginatedResponse<SubCategoryEntity> subCategories,  SubCategoryEntity? selectedSubCategory,  String errorMessage,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _CategoryState():
return $default(_that.status,_that.categoryDetail,_that.subCategories,_that.selectedSubCategory,_that.errorMessage,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategoryStatus status,  CategoryDetailEntity? categoryDetail,  PaginatedResponse<SubCategoryEntity> subCategories,  SubCategoryEntity? selectedSubCategory,  String errorMessage,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _CategoryState() when $default != null:
return $default(_that.status,_that.categoryDetail,_that.subCategories,_that.selectedSubCategory,_that.errorMessage,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryState extends CategoryState {
  const _CategoryState({this.status = CategoryStatus.initial, this.categoryDetail, this.subCategories = const PaginatedResponse(data: []), this.selectedSubCategory, this.errorMessage = '', this.isLoadingMore = false}): super._();
  

@override@JsonKey() final  CategoryStatus status;
@override final  CategoryDetailEntity? categoryDetail;
@override@JsonKey() final  PaginatedResponse<SubCategoryEntity> subCategories;
@override final  SubCategoryEntity? selectedSubCategory;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryStateCopyWith<_CategoryState> get copyWith => __$CategoryStateCopyWithImpl<_CategoryState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryState&&(identical(other.status, status) || other.status == status)&&(identical(other.categoryDetail, categoryDetail) || other.categoryDetail == categoryDetail)&&(identical(other.subCategories, subCategories) || other.subCategories == subCategories)&&(identical(other.selectedSubCategory, selectedSubCategory) || other.selectedSubCategory == selectedSubCategory)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,categoryDetail,subCategories,selectedSubCategory,errorMessage,isLoadingMore);
}

@override
String toString() {
    return 'CategoryState(status: $status, categoryDetail: $categoryDetail, subCategories: $subCategories, selectedSubCategory: $selectedSubCategory, errorMessage: $errorMessage, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$CategoryStateCopyWith<$Res> implements $CategoryStateCopyWith<$Res> {
  factory _$CategoryStateCopyWith(_CategoryState value, $Res Function(_CategoryState) _then) = __$CategoryStateCopyWithImpl;
@override @useResult
$Res call({
 CategoryStatus status, CategoryDetailEntity? categoryDetail, PaginatedResponse<SubCategoryEntity> subCategories, SubCategoryEntity? selectedSubCategory, String errorMessage, bool isLoadingMore
});


@override $CategoryDetailEntityCopyWith<$Res>? get categoryDetail;@override $PaginatedResponseCopyWith<SubCategoryEntity, $Res> get subCategories;@override $SubCategoryEntityCopyWith<$Res>? get selectedSubCategory;

}
/// @nodoc
class __$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateCopyWith<$Res> {
  __$CategoryStateCopyWithImpl(this._self, this._then);

  final _CategoryState _self;
  final $Res Function(_CategoryState) _then;

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? categoryDetail = freezed,Object? subCategories = null,Object? selectedSubCategory = freezed,Object? errorMessage = null,Object? isLoadingMore = null,}) {
  return _then(_CategoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CategoryStatus,categoryDetail: freezed == categoryDetail ? _self.categoryDetail : categoryDetail // ignore: cast_nullable_to_non_nullable
as CategoryDetailEntity?,subCategories: null == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<SubCategoryEntity>,selectedSubCategory: freezed == selectedSubCategory ? _self.selectedSubCategory : selectedSubCategory // ignore: cast_nullable_to_non_nullable
as SubCategoryEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDetailEntityCopyWith<$Res>? get categoryDetail {
    if (_self.categoryDetail == null) {
    return null;
  }

  return $CategoryDetailEntityCopyWith<$Res>(_self.categoryDetail!, (value) {
    return _then(_self.copyWith(categoryDetail: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<SubCategoryEntity, $Res> get subCategories {
  
  return $PaginatedResponseCopyWith<SubCategoryEntity, $Res>(_self.subCategories, (value) {
    return _then(_self.copyWith(subCategories: value));
  });
}/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubCategoryEntityCopyWith<$Res>? get selectedSubCategory {
    if (_self.selectedSubCategory == null) {
    return null;
  }

  return $SubCategoryEntityCopyWith<$Res>(_self.selectedSubCategory!, (value) {
    return _then(_self.copyWith(selectedSubCategory: value));
  });
}
}

// dart format on
