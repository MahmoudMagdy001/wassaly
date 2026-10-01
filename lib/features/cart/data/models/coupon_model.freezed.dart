// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CouponModel {

 int get id; String get code; String get title; String get description; dynamic get value; String get type;@JsonKey(name: 'user_usage_limit') int? get userUsageLimit;@JsonKey(name: 'is_valid') bool get isValid;
/// Create a copy of CouponModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CouponModelCopyWith<CouponModel> get copyWith => _$CouponModelCopyWithImpl<CouponModel>(this as CouponModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CouponModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.value, _this.value)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.userUsageLimit, _this.userUsageLimit) || other.userUsageLimit == _this.userUsageLimit)&&(identical(other.isValid, _this.isValid) || other.isValid == _this.isValid));
}


@override
int get hashCode {
  final _this = this as CouponModel;
  return Object.hash(runtimeType,_this.id,_this.code,_this.title,_this.description,const DeepCollectionEquality().hash(_this.value),_this.type,_this.userUsageLimit,_this.isValid);
}

@override
String toString() {
  final _this = this as CouponModel;
  return 'CouponModel(id: ${_this.id}, code: ${_this.code}, title: ${_this.title}, description: ${_this.description}, value: ${_this.value}, type: ${_this.type}, userUsageLimit: ${_this.userUsageLimit}, isValid: ${_this.isValid})';
}


}

/// @nodoc
abstract mixin class $CouponModelCopyWith<$Res>  {
  factory $CouponModelCopyWith(CouponModel value, $Res Function(CouponModel) _then) = _$CouponModelCopyWithImpl;
@useResult
$Res call({
 int id, String code, String title, String description, dynamic value, String type,@JsonKey(name: 'user_usage_limit') int? userUsageLimit,@JsonKey(name: 'is_valid') bool isValid
});




}
/// @nodoc
class _$CouponModelCopyWithImpl<$Res>
    implements $CouponModelCopyWith<$Res> {
  _$CouponModelCopyWithImpl(this._self, this._then);

  final CouponModel _self;
  final $Res Function(CouponModel) _then;

/// Create a copy of CouponModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? title = null,Object? description = null,Object? value = freezed,Object? type = null,Object? userUsageLimit = freezed,Object? isValid = null,}) {
  return _then(CouponModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,userUsageLimit: freezed == userUsageLimit ? _self.userUsageLimit : userUsageLimit // ignore: cast_nullable_to_non_nullable
as int?,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CouponModel].
extension CouponModelPatterns on CouponModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CouponModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CouponModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CouponModel value)  $default,){
final _that = this;
switch (_that) {
case _CouponModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CouponModel value)?  $default,){
final _that = this;
switch (_that) {
case _CouponModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code,  String title,  String description,  dynamic value,  String type, @JsonKey(name: 'user_usage_limit')  int? userUsageLimit, @JsonKey(name: 'is_valid')  bool isValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CouponModel() when $default != null:
return $default(_that.id,_that.code,_that.title,_that.description,_that.value,_that.type,_that.userUsageLimit,_that.isValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code,  String title,  String description,  dynamic value,  String type, @JsonKey(name: 'user_usage_limit')  int? userUsageLimit, @JsonKey(name: 'is_valid')  bool isValid)  $default,) {final _that = this;
switch (_that) {
case _CouponModel():
return $default(_that.id,_that.code,_that.title,_that.description,_that.value,_that.type,_that.userUsageLimit,_that.isValid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code,  String title,  String description,  dynamic value,  String type, @JsonKey(name: 'user_usage_limit')  int? userUsageLimit, @JsonKey(name: 'is_valid')  bool isValid)?  $default,) {final _that = this;
switch (_that) {
case _CouponModel() when $default != null:
return $default(_that.id,_that.code,_that.title,_that.description,_that.value,_that.type,_that.userUsageLimit,_that.isValid);case _:
  return null;

}
}

}

/// @nodoc


class _CouponModel extends CouponModel {
  const _CouponModel({this.id = 0, this.code = '', this.title = '', this.description = '', this.value, this.type = '', @JsonKey(name: 'user_usage_limit') this.userUsageLimit, @JsonKey(name: 'is_valid') this.isValid = true}): super._();
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String code;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override final  dynamic value;
@override@JsonKey() final  String type;
@override@JsonKey(name: 'user_usage_limit') final  int? userUsageLimit;
@override@JsonKey(name: 'is_valid') final  bool isValid;

/// Create a copy of CouponModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponModelCopyWith<_CouponModel> get copyWith => __$CouponModelCopyWithImpl<_CouponModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.type, type) || other.type == type)&&(identical(other.userUsageLimit, userUsageLimit) || other.userUsageLimit == userUsageLimit)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,code,title,description,const DeepCollectionEquality().hash(value),type,userUsageLimit,isValid);
}

@override
String toString() {
    return 'CouponModel(id: $id, code: $code, title: $title, description: $description, value: $value, type: $type, userUsageLimit: $userUsageLimit, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class _$CouponModelCopyWith<$Res> implements $CouponModelCopyWith<$Res> {
  factory _$CouponModelCopyWith(_CouponModel value, $Res Function(_CouponModel) _then) = __$CouponModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String title, String description, dynamic value, String type,@JsonKey(name: 'user_usage_limit') int? userUsageLimit,@JsonKey(name: 'is_valid') bool isValid
});




}
/// @nodoc
class __$CouponModelCopyWithImpl<$Res>
    implements _$CouponModelCopyWith<$Res> {
  __$CouponModelCopyWithImpl(this._self, this._then);

  final _CouponModel _self;
  final $Res Function(_CouponModel) _then;

/// Create a copy of CouponModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? title = null,Object? description = null,Object? value = freezed,Object? type = null,Object? userUsageLimit = freezed,Object? isValid = null,}) {
  return _then(_CouponModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,userUsageLimit: freezed == userUsageLimit ? _self.userUsageLimit : userUsageLimit // ignore: cast_nullable_to_non_nullable
as int?,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
