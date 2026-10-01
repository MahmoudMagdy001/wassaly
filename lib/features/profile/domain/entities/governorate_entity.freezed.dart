// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'governorate_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GovernorateEntity {

 String get id; String get name; double get shippingCost;
/// Create a copy of GovernorateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GovernorateEntityCopyWith<GovernorateEntity> get copyWith => _$GovernorateEntityCopyWithImpl<GovernorateEntity>(this as GovernorateEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GovernorateEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GovernorateEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.shippingCost, _this.shippingCost) || other.shippingCost == _this.shippingCost));
}


@override
int get hashCode {
  final _this = this as GovernorateEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.shippingCost);
}

@override
String toString() {
  final _this = this as GovernorateEntity;
  return 'GovernorateEntity(id: ${_this.id}, name: ${_this.name}, shippingCost: ${_this.shippingCost})';
}


}

/// @nodoc
abstract mixin class $GovernorateEntityCopyWith<$Res>  {
  factory $GovernorateEntityCopyWith(GovernorateEntity value, $Res Function(GovernorateEntity) _then) = _$GovernorateEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, double shippingCost
});




}
/// @nodoc
class _$GovernorateEntityCopyWithImpl<$Res>
    implements $GovernorateEntityCopyWith<$Res> {
  _$GovernorateEntityCopyWithImpl(this._self, this._then);

  final GovernorateEntity _self;
  final $Res Function(GovernorateEntity) _then;

/// Create a copy of GovernorateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? shippingCost = null,}) {
  return _then(GovernorateEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [GovernorateEntity].
extension GovernorateEntityPatterns on GovernorateEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GovernorateEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GovernorateEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GovernorateEntity value)  $default,){
final _that = this;
switch (_that) {
case _GovernorateEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GovernorateEntity value)?  $default,){
final _that = this;
switch (_that) {
case _GovernorateEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double shippingCost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GovernorateEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double shippingCost)  $default,) {final _that = this;
switch (_that) {
case _GovernorateEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double shippingCost)?  $default,) {final _that = this;
switch (_that) {
case _GovernorateEntity() when $default != null:
return $default(_that.id,_that.name,_that.shippingCost);case _:
  return null;

}
}

}

/// @nodoc


class _GovernorateEntity implements GovernorateEntity {
  const _GovernorateEntity({required this.id, required this.name, required this.shippingCost});
  

@override final  String id;
@override final  String name;
@override final  double shippingCost;

/// Create a copy of GovernorateEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GovernorateEntityCopyWith<_GovernorateEntity> get copyWith => __$GovernorateEntityCopyWithImpl<_GovernorateEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GovernorateEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,shippingCost);
}

@override
String toString() {
    return 'GovernorateEntity(id: $id, name: $name, shippingCost: $shippingCost)';
}


}

/// @nodoc
abstract mixin class _$GovernorateEntityCopyWith<$Res> implements $GovernorateEntityCopyWith<$Res> {
  factory _$GovernorateEntityCopyWith(_GovernorateEntity value, $Res Function(_GovernorateEntity) _then) = __$GovernorateEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double shippingCost
});




}
/// @nodoc
class __$GovernorateEntityCopyWithImpl<$Res>
    implements _$GovernorateEntityCopyWith<$Res> {
  __$GovernorateEntityCopyWithImpl(this._self, this._then);

  final _GovernorateEntity _self;
  final $Res Function(_GovernorateEntity) _then;

/// Create a copy of GovernorateEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? shippingCost = null,}) {
  return _then(_GovernorateEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
