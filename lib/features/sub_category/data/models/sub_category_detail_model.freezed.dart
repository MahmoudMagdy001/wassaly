// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubCategoryDetailModel {

 int get id; String get name; String get image; List<ServiceModel> get services; PaginatedResponse<ProductModel> get products;
/// Create a copy of SubCategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryDetailModelCopyWith<SubCategoryDetailModel> get copyWith => _$SubCategoryDetailModelCopyWithImpl<SubCategoryDetailModel>(this as SubCategoryDetailModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubCategoryDetailModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryDetailModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&const DeepCollectionEquality().equals(other.services, _this.services)&&(identical(other.products, _this.products) || other.products == _this.products));
}


@override
int get hashCode {
  final _this = this as SubCategoryDetailModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.image,const DeepCollectionEquality().hash(_this.services),_this.products);
}

@override
String toString() {
  final _this = this as SubCategoryDetailModel;
  return 'SubCategoryDetailModel(id: ${_this.id}, name: ${_this.name}, image: ${_this.image}, services: ${_this.services}, products: ${_this.products})';
}


}

/// @nodoc
abstract mixin class $SubCategoryDetailModelCopyWith<$Res>  {
  factory $SubCategoryDetailModelCopyWith(SubCategoryDetailModel value, $Res Function(SubCategoryDetailModel) _then) = _$SubCategoryDetailModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image, List<ServiceModel> services, PaginatedResponse<ProductModel> products
});


$PaginatedResponseCopyWith<ProductModel, $Res> get products;

}
/// @nodoc
class _$SubCategoryDetailModelCopyWithImpl<$Res>
    implements $SubCategoryDetailModelCopyWith<$Res> {
  _$SubCategoryDetailModelCopyWithImpl(this._self, this._then);

  final SubCategoryDetailModel _self;
  final $Res Function(SubCategoryDetailModel) _then;

/// Create a copy of SubCategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? services = null,Object? products = null,}) {
  return _then(SubCategoryDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceModel>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductModel>,
  ));
}
/// Create a copy of SubCategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductModel, $Res> get products {
  
  return $PaginatedResponseCopyWith<ProductModel, $Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubCategoryDetailModel].
extension SubCategoryDetailModelPatterns on SubCategoryDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image,  List<ServiceModel> services,  PaginatedResponse<ProductModel> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.services,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image,  List<ServiceModel> services,  PaginatedResponse<ProductModel> products)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryDetailModel():
return $default(_that.id,_that.name,_that.image,_that.services,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image,  List<ServiceModel> services,  PaginatedResponse<ProductModel> products)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.services,_that.products);case _:
  return null;

}
}

}

/// @nodoc


class _SubCategoryDetailModel extends SubCategoryDetailModel {
  const _SubCategoryDetailModel({this.id = 0, this.name = '', this.image = '',  List<ServiceModel> services = const [], this.products = const PaginatedResponse(data: [])}): _services = services,super._();
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String image;
 final  List<ServiceModel> _services;
@override@JsonKey() List<ServiceModel> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

@override@JsonKey() final  PaginatedResponse<ProductModel> products;

/// Create a copy of SubCategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryDetailModelCopyWith<_SubCategoryDetailModel> get copyWith => __$SubCategoryDetailModelCopyWithImpl<_SubCategoryDetailModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.services, _services)&&(identical(other.products, products) || other.products == products));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,image,const DeepCollectionEquality().hash(_services),products);
}

@override
String toString() {
    return 'SubCategoryDetailModel(id: $id, name: $name, image: $image, services: $services, products: $products)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryDetailModelCopyWith<$Res> implements $SubCategoryDetailModelCopyWith<$Res> {
  factory _$SubCategoryDetailModelCopyWith(_SubCategoryDetailModel value, $Res Function(_SubCategoryDetailModel) _then) = __$SubCategoryDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image, List<ServiceModel> services, PaginatedResponse<ProductModel> products
});


@override $PaginatedResponseCopyWith<ProductModel, $Res> get products;

}
/// @nodoc
class __$SubCategoryDetailModelCopyWithImpl<$Res>
    implements _$SubCategoryDetailModelCopyWith<$Res> {
  __$SubCategoryDetailModelCopyWithImpl(this._self, this._then);

  final _SubCategoryDetailModel _self;
  final $Res Function(_SubCategoryDetailModel) _then;

/// Create a copy of SubCategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? services = null,Object? products = null,}) {
  return _then(_SubCategoryDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceModel>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as PaginatedResponse<ProductModel>,
  ));
}

/// Create a copy of SubCategoryDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<ProductModel, $Res> get products {
  
  return $PaginatedResponseCopyWith<ProductModel, $Res>(_self.products, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}

// dart format on
