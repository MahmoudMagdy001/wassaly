// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'governorate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GovernorateModel {

 String get id; String get name;@JsonKey(name: 'shipping_cost') double get shippingCost;
/// Create a copy of GovernorateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovernorateModelCopyWith<GovernorateModel> get copyWith => _$GovernorateModelCopyWithImpl<GovernorateModel>(this as GovernorateModel, _$identity);

  /// Serializes this GovernorateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GovernorateModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovernorateModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.shippingCost, _this.shippingCost) || other.shippingCost == _this.shippingCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GovernorateModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.shippingCost);
}

@override
String toString() {
  final _this = this as GovernorateModel;
  return 'GovernorateModel(id: ${_this.id}, name: ${_this.name}, shippingCost: ${_this.shippingCost})';
}


}

/// @nodoc
abstract mixin class $GovernorateModelCopyWith<$Res>  {
  factory $GovernorateModelCopyWith(GovernorateModel value, $Res Function(GovernorateModel) _then) = _$GovernorateModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'shipping_cost') double shippingCost
});




}
/// @nodoc
class _$GovernorateModelCopyWithImpl<$Res>
    implements $GovernorateModelCopyWith<$Res> {
  _$GovernorateModelCopyWithImpl(this._self, this._then);

  final GovernorateModel _self;
  final $Res Function(GovernorateModel) _then;

/// Create a copy of GovernorateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? shippingCost = null,}) {
  return _then(GovernorateModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [GovernorateModel].
extension GovernorateModelPatterns on GovernorateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GovernorateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GovernorateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GovernorateModel value)  $default,){
final _that = this;
switch (_that) {
case _GovernorateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GovernorateModel value)?  $default,){
final _that = this;
switch (_that) {
case _GovernorateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'shipping_cost')  double shippingCost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GovernorateModel() when $default != null:
return $default(_that.id,_that.name,_that.shippingCost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'shipping_cost')  double shippingCost)  $default,) {final _that = this;
switch (_that) {
case _GovernorateModel():
return $default(_that.id,_that.name,_that.shippingCost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'shipping_cost')  double shippingCost)?  $default,) {final _that = this;
switch (_that) {
case _GovernorateModel() when $default != null:
return $default(_that.id,_that.name,_that.shippingCost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GovernorateModel extends GovernorateModel {
  const _GovernorateModel({this.id = '', this.name = '', @JsonKey(name: 'shipping_cost') this.shippingCost = 0.0}): super._();
  factory _GovernorateModel.fromJson(Map<String, dynamic> json) => _$GovernorateModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'shipping_cost') final  double shippingCost;

/// Create a copy of GovernorateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GovernorateModelCopyWith<_GovernorateModel> get copyWith => __$GovernorateModelCopyWithImpl<_GovernorateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GovernorateModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GovernorateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,shippingCost);
}

@override
String toString() {
    return 'GovernorateModel(id: $id, name: $name, shippingCost: $shippingCost)';
}


}

/// @nodoc
abstract mixin class _$GovernorateModelCopyWith<$Res> implements $GovernorateModelCopyWith<$Res> {
  factory _$GovernorateModelCopyWith(_GovernorateModel value, $Res Function(_GovernorateModel) _then) = __$GovernorateModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'shipping_cost') double shippingCost
});




}
/// @nodoc
class __$GovernorateModelCopyWithImpl<$Res>
    implements _$GovernorateModelCopyWith<$Res> {
  __$GovernorateModelCopyWithImpl(this._self, this._then);

  final _GovernorateModel _self;
  final $Res Function(_GovernorateModel) _then;

/// Create a copy of GovernorateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? shippingCost = null,}) {
  return _then(_GovernorateModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
