// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubCategoryModel {

 int get id; String get name; String get image; List<ServiceModel>? get services;
/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryModelCopyWith<SubCategoryModel> get copyWith => _$SubCategoryModelCopyWithImpl<SubCategoryModel>(this as SubCategoryModel, _$identity);

  /// Serializes this SubCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubCategoryModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.image, _this.image) || other.image == _this.image)&&const DeepCollectionEquality().equals(other.services, _this.services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubCategoryModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.image,const DeepCollectionEquality().hash(_this.services));
}

@override
String toString() {
  final _this = this as SubCategoryModel;
  return 'SubCategoryModel(id: ${_this.id}, name: ${_this.name}, image: ${_this.image}, services: ${_this.services})';
}


}

/// @nodoc
abstract mixin class $SubCategoryModelCopyWith<$Res>  {
  factory $SubCategoryModelCopyWith(SubCategoryModel value, $Res Function(SubCategoryModel) _then) = _$SubCategoryModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String image, List<ServiceModel>? services
});




}
/// @nodoc
class _$SubCategoryModelCopyWithImpl<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  _$SubCategoryModelCopyWithImpl(this._self, this._then);

  final SubCategoryModel _self;
  final $Res Function(SubCategoryModel) _then;

/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,Object? services = freezed,}) {
  return _then(SubCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,services: freezed == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubCategoryModel].
extension SubCategoryModelPatterns on SubCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String image,  List<ServiceModel>? services)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.services);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String image,  List<ServiceModel>? services)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryModel():
return $default(_that.id,_that.name,_that.image,_that.services);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String image,  List<ServiceModel>? services)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryModel() when $default != null:
return $default(_that.id,_that.name,_that.image,_that.services);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubCategoryModel extends SubCategoryModel {
  const _SubCategoryModel({this.id = 0, this.name = '', this.image = '',  List<ServiceModel>? services}): _services = services,super._();
  factory _SubCategoryModel.fromJson(Map<String, dynamic> json) => _$SubCategoryModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String image;
 final  List<ServiceModel>? _services;
@override List<ServiceModel>? get services {
  final value = _services;
  if (value == null) return null;
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryModelCopyWith<_SubCategoryModel> get copyWith => __$SubCategoryModelCopyWithImpl<_SubCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.services, _services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,image,const DeepCollectionEquality().hash(_services));
}

@override
String toString() {
    return 'SubCategoryModel(id: $id, name: $name, image: $image, services: $services)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryModelCopyWith<$Res> implements $SubCategoryModelCopyWith<$Res> {
  factory _$SubCategoryModelCopyWith(_SubCategoryModel value, $Res Function(_SubCategoryModel) _then) = __$SubCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String image, List<ServiceModel>? services
});




}
/// @nodoc
class __$SubCategoryModelCopyWithImpl<$Res>
    implements _$SubCategoryModelCopyWith<$Res> {
  __$SubCategoryModelCopyWithImpl(this._self, this._then);

  final _SubCategoryModel _self;
  final $Res Function(_SubCategoryModel) _then;

/// Create a copy of SubCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,Object? services = freezed,}) {
  return _then(_SubCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,services: freezed == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceModel>?,
  ));
}


}

// dart format on
