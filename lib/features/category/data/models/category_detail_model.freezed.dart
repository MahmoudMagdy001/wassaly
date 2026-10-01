// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryDetailModel {

 CategoryEntity get category; PaginatedResponse<SubCategoryEntity> get subCategories;
/// Create a copy of CategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDetailModelCopyWith<CategoryDetailModel> get copyWith => _$CategoryDetailModelCopyWithImpl<CategoryDetailModel>(this as CategoryDetailModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CategoryDetailModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDetailModel&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.subCategories, _this.subCategories) || other.subCategories == _this.subCategories));
}


@override
int get hashCode {
  final _this = this as CategoryDetailModel;
  return Object.hash(runtimeType,_this.category,_this.subCategories);
}

@override
String toString() {
  final _this = this as CategoryDetailModel;
  return 'CategoryDetailModel(category: ${_this.category}, subCategories: ${_this.subCategories})';
}


}

/// @nodoc
abstract mixin class $CategoryDetailModelCopyWith<$Res>  {
  factory $CategoryDetailModelCopyWith(CategoryDetailModel value, $Res Function(CategoryDetailModel) _then) = _$CategoryDetailModelCopyWithImpl;
@useResult
$Res call({
 CategoryEntity category, PaginatedResponse<SubCategoryEntity> subCategories
});


$CategoryEntityCopyWith<$Res> get category;$PaginatedResponseCopyWith<SubCategoryEntity, $Res> get subCategories;

}
/// @nodoc
class _$CategoryDetailModelCopyWithImpl<$Res>
    implements $CategoryDetailModelCopyWith<$Res> {
  _$CategoryDetailModelCopyWithImpl(this._self, this._then);

  final CategoryDetailModel _self;
  final $Res Function(CategoryDetailModel) _then;

/// Create a copy of CategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? subCategories = null,}) {
  return _then(CategoryDetailModel(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity,subCategories: null == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<SubCategoryEntity>,
  ));
}
/// Create a copy of CategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<$Res> get category {
  
  return $CategoryEntityCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of CategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<SubCategoryEntity, $Res> get subCategories {
  
  return $PaginatedResponseCopyWith<SubCategoryEntity, $Res>(_self.subCategories, (value) {
    return _then(_self.copyWith(subCategories: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryDetailModel].
extension CategoryDetailModelPatterns on CategoryDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategoryEntity category,  PaginatedResponse<SubCategoryEntity> subCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDetailModel() when $default != null:
return $default(_that.category,_that.subCategories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategoryEntity category,  PaginatedResponse<SubCategoryEntity> subCategories)  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailModel():
return $default(_that.category,_that.subCategories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategoryEntity category,  PaginatedResponse<SubCategoryEntity> subCategories)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDetailModel() when $default != null:
return $default(_that.category,_that.subCategories);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryDetailModel extends CategoryDetailModel {
  const _CategoryDetailModel({required this.category, required this.subCategories}): super._();
  

@override final  CategoryEntity category;
@override final  PaginatedResponse<SubCategoryEntity> subCategories;

/// Create a copy of CategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDetailModelCopyWith<_CategoryDetailModel> get copyWith => __$CategoryDetailModelCopyWithImpl<_CategoryDetailModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDetailModel&&(identical(other.category, category) || other.category == category)&&(identical(other.subCategories, subCategories) || other.subCategories == subCategories));
}


@override
int get hashCode {
    return Object.hash(runtimeType,category,subCategories);
}

@override
String toString() {
    return 'CategoryDetailModel(category: $category, subCategories: $subCategories)';
}


}

/// @nodoc
abstract mixin class _$CategoryDetailModelCopyWith<$Res> implements $CategoryDetailModelCopyWith<$Res> {
  factory _$CategoryDetailModelCopyWith(_CategoryDetailModel value, $Res Function(_CategoryDetailModel) _then) = __$CategoryDetailModelCopyWithImpl;
@override @useResult
$Res call({
 CategoryEntity category, PaginatedResponse<SubCategoryEntity> subCategories
});


@override $CategoryEntityCopyWith<$Res> get category;@override $PaginatedResponseCopyWith<SubCategoryEntity, $Res> get subCategories;

}
/// @nodoc
class __$CategoryDetailModelCopyWithImpl<$Res>
    implements _$CategoryDetailModelCopyWith<$Res> {
  __$CategoryDetailModelCopyWithImpl(this._self, this._then);

  final _CategoryDetailModel _self;
  final $Res Function(_CategoryDetailModel) _then;

/// Create a copy of CategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? subCategories = null,}) {
  return _then(_CategoryDetailModel(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity,subCategories: null == subCategories ? _self.subCategories : subCategories // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<SubCategoryEntity>,
  ));
}

/// Create a copy of CategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<$Res> get category {
  
  return $CategoryEntityCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of CategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<SubCategoryEntity, $Res> get subCategories {
  
  return $PaginatedResponseCopyWith<SubCategoryEntity, $Res>(_self.subCategories, (value) {
    return _then(_self.copyWith(subCategories: value));
  });
}
}

// dart format on
