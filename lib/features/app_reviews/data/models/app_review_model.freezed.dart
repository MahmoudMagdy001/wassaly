// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppReviewUserModel {

 int get id; String get name; String get type; String? get avatar;
/// Create a copy of AppReviewUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppReviewUserModelCopyWith<AppReviewUserModel> get copyWith => _$AppReviewUserModelCopyWithImpl<AppReviewUserModel>(this as AppReviewUserModel, _$identity);

  /// Serializes this AppReviewUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AppReviewUserModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppReviewUserModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AppReviewUserModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.type,_this.avatar);
}

@override
String toString() {
  final _this = this as AppReviewUserModel;
  return 'AppReviewUserModel(id: ${_this.id}, name: ${_this.name}, type: ${_this.type}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $AppReviewUserModelCopyWith<$Res>  {
  factory $AppReviewUserModelCopyWith(AppReviewUserModel value, $Res Function(AppReviewUserModel) _then) = _$AppReviewUserModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String type, String? avatar
});




}
/// @nodoc
class _$AppReviewUserModelCopyWithImpl<$Res>
    implements $AppReviewUserModelCopyWith<$Res> {
  _$AppReviewUserModelCopyWithImpl(this._self, this._then);

  final AppReviewUserModel _self;
  final $Res Function(AppReviewUserModel) _then;

/// Create a copy of AppReviewUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? avatar = freezed,}) {
  return _then(AppReviewUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppReviewUserModel].
extension AppReviewUserModelPatterns on AppReviewUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppReviewUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppReviewUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppReviewUserModel value)  $default,){
final _that = this;
switch (_that) {
case _AppReviewUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppReviewUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppReviewUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String type,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppReviewUserModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String type,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _AppReviewUserModel():
return $default(_that.id,_that.name,_that.type,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String type,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _AppReviewUserModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppReviewUserModel extends AppReviewUserModel {
  const _AppReviewUserModel({this.id = 0, this.name = '', this.type = '', this.avatar}): super._();
  factory _AppReviewUserModel.fromJson(Map<String, dynamic> json) => _$AppReviewUserModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String type;
@override final  String? avatar;

/// Create a copy of AppReviewUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppReviewUserModelCopyWith<_AppReviewUserModel> get copyWith => __$AppReviewUserModelCopyWithImpl<_AppReviewUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppReviewUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppReviewUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,type,avatar);
}

@override
String toString() {
    return 'AppReviewUserModel(id: $id, name: $name, type: $type, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$AppReviewUserModelCopyWith<$Res> implements $AppReviewUserModelCopyWith<$Res> {
  factory _$AppReviewUserModelCopyWith(_AppReviewUserModel value, $Res Function(_AppReviewUserModel) _then) = __$AppReviewUserModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String type, String? avatar
});




}
/// @nodoc
class __$AppReviewUserModelCopyWithImpl<$Res>
    implements _$AppReviewUserModelCopyWith<$Res> {
  __$AppReviewUserModelCopyWithImpl(this._self, this._then);

  final _AppReviewUserModel _self;
  final $Res Function(_AppReviewUserModel) _then;

/// Create a copy of AppReviewUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? avatar = freezed,}) {
  return _then(_AppReviewUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AppReviewModel {

 int get id; int get rating; String get comment; AppReviewUserModel get user;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of AppReviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppReviewModelCopyWith<AppReviewModel> get copyWith => _$AppReviewModelCopyWithImpl<AppReviewModel>(this as AppReviewModel, _$identity);

  /// Serializes this AppReviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AppReviewModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppReviewModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AppReviewModel;
  return Object.hash(runtimeType,_this.id,_this.rating,_this.comment,_this.user,_this.createdAt);
}

@override
String toString() {
  final _this = this as AppReviewModel;
  return 'AppReviewModel(id: ${_this.id}, rating: ${_this.rating}, comment: ${_this.comment}, user: ${_this.user}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $AppReviewModelCopyWith<$Res>  {
  factory $AppReviewModelCopyWith(AppReviewModel value, $Res Function(AppReviewModel) _then) = _$AppReviewModelCopyWithImpl;
@useResult
$Res call({
 int id, int rating, String comment, AppReviewUserModel user,@JsonKey(name: 'created_at') String createdAt
});


$AppReviewUserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$AppReviewModelCopyWithImpl<$Res>
    implements $AppReviewModelCopyWith<$Res> {
  _$AppReviewModelCopyWithImpl(this._self, this._then);

  final AppReviewModel _self;
  final $Res Function(AppReviewModel) _then;

/// Create a copy of AppReviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? user = null,Object? createdAt = null,}) {
  return _then(AppReviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppReviewUserModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AppReviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppReviewUserModelCopyWith<$Res> get user {
  
  return $AppReviewUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppReviewModel].
extension AppReviewModelPatterns on AppReviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppReviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppReviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppReviewModel value)  $default,){
final _that = this;
switch (_that) {
case _AppReviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppReviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppReviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int rating,  String comment,  AppReviewUserModel user, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppReviewModel() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int rating,  String comment,  AppReviewUserModel user, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _AppReviewModel():
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int rating,  String comment,  AppReviewUserModel user, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AppReviewModel() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppReviewModel extends AppReviewModel {
  const _AppReviewModel({this.id = 0, this.rating = 0, this.comment = '', this.user = const AppReviewUserModel(), @JsonKey(name: 'created_at') this.createdAt = ''}): super._();
  factory _AppReviewModel.fromJson(Map<String, dynamic> json) => _$AppReviewModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int rating;
@override@JsonKey() final  String comment;
@override@JsonKey() final  AppReviewUserModel user;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of AppReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppReviewModelCopyWith<_AppReviewModel> get copyWith => __$AppReviewModelCopyWithImpl<_AppReviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppReviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.user, user) || other.user == user)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,rating,comment,user,createdAt);
}

@override
String toString() {
    return 'AppReviewModel(id: $id, rating: $rating, comment: $comment, user: $user, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AppReviewModelCopyWith<$Res> implements $AppReviewModelCopyWith<$Res> {
  factory _$AppReviewModelCopyWith(_AppReviewModel value, $Res Function(_AppReviewModel) _then) = __$AppReviewModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int rating, String comment, AppReviewUserModel user,@JsonKey(name: 'created_at') String createdAt
});


@override $AppReviewUserModelCopyWith<$Res> get user;

}
/// @nodoc
class __$AppReviewModelCopyWithImpl<$Res>
    implements _$AppReviewModelCopyWith<$Res> {
  __$AppReviewModelCopyWithImpl(this._self, this._then);

  final _AppReviewModel _self;
  final $Res Function(_AppReviewModel) _then;

/// Create a copy of AppReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? user = null,Object? createdAt = null,}) {
  return _then(_AppReviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppReviewUserModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AppReviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppReviewUserModelCopyWith<$Res> get user {
  
  return $AppReviewUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
