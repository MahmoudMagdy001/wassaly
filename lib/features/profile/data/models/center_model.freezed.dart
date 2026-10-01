// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'center_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CenterModel {

 String get id; String get name;@JsonKey(name: 'governorate_id') String get governorateId;
/// Create a copy of CenterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CenterModelCopyWith<CenterModel> get copyWith => _$CenterModelCopyWithImpl<CenterModel>(this as CenterModel, _$identity);

  /// Serializes this CenterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CenterModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CenterModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.governorateId, _this.governorateId) || other.governorateId == _this.governorateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CenterModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.governorateId);
}

@override
String toString() {
  final _this = this as CenterModel;
  return 'CenterModel(id: ${_this.id}, name: ${_this.name}, governorateId: ${_this.governorateId})';
}


}

/// @nodoc
abstract mixin class $CenterModelCopyWith<$Res>  {
  factory $CenterModelCopyWith(CenterModel value, $Res Function(CenterModel) _then) = _$CenterModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'governorate_id') String governorateId
});




}
/// @nodoc
class _$CenterModelCopyWithImpl<$Res>
    implements $CenterModelCopyWith<$Res> {
  _$CenterModelCopyWithImpl(this._self, this._then);

  final CenterModel _self;
  final $Res Function(CenterModel) _then;

/// Create a copy of CenterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? governorateId = null,}) {
  return _then(CenterModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CenterModel].
extension CenterModelPatterns on CenterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CenterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CenterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CenterModel value)  $default,){
final _that = this;
switch (_that) {
case _CenterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CenterModel value)?  $default,){
final _that = this;
switch (_that) {
case _CenterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'governorate_id')  String governorateId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CenterModel() when $default != null:
return $default(_that.id,_that.name,_that.governorateId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'governorate_id')  String governorateId)  $default,) {final _that = this;
switch (_that) {
case _CenterModel():
return $default(_that.id,_that.name,_that.governorateId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'governorate_id')  String governorateId)?  $default,) {final _that = this;
switch (_that) {
case _CenterModel() when $default != null:
return $default(_that.id,_that.name,_that.governorateId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CenterModel extends CenterModel {
  const _CenterModel({this.id = '', this.name = '', @JsonKey(name: 'governorate_id') this.governorateId = ''}): super._();
  factory _CenterModel.fromJson(Map<String, dynamic> json) => _$CenterModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'governorate_id') final  String governorateId;

/// Create a copy of CenterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CenterModelCopyWith<_CenterModel> get copyWith => __$CenterModelCopyWithImpl<_CenterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CenterModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CenterModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.governorateId, governorateId) || other.governorateId == governorateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,governorateId);
}

@override
String toString() {
    return 'CenterModel(id: $id, name: $name, governorateId: $governorateId)';
}


}

/// @nodoc
abstract mixin class _$CenterModelCopyWith<$Res> implements $CenterModelCopyWith<$Res> {
  factory _$CenterModelCopyWith(_CenterModel value, $Res Function(_CenterModel) _then) = __$CenterModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'governorate_id') String governorateId
});




}
/// @nodoc
class __$CenterModelCopyWithImpl<$Res>
    implements _$CenterModelCopyWith<$Res> {
  __$CenterModelCopyWithImpl(this._self, this._then);

  final _CenterModel _self;
  final $Res Function(_CenterModel) _then;

/// Create a copy of CenterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? governorateId = null,}) {
  return _then(_CenterModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
