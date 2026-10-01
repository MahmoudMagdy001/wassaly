// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_review_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppReviewUserEntity {

 int get id; String get name; String get type; String? get avatar;
/// Create a copy of AppReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppReviewUserEntityCopyWith<AppReviewUserEntity> get copyWith => _$AppReviewUserEntityCopyWithImpl<AppReviewUserEntity>(this as AppReviewUserEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AppReviewUserEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppReviewUserEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}


@override
int get hashCode {
  final _this = this as AppReviewUserEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.type,_this.avatar);
}

@override
String toString() {
  final _this = this as AppReviewUserEntity;
  return 'AppReviewUserEntity(id: ${_this.id}, name: ${_this.name}, type: ${_this.type}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $AppReviewUserEntityCopyWith<$Res>  {
  factory $AppReviewUserEntityCopyWith(AppReviewUserEntity value, $Res Function(AppReviewUserEntity) _then) = _$AppReviewUserEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String type, String? avatar
});




}
/// @nodoc
class _$AppReviewUserEntityCopyWithImpl<$Res>
    implements $AppReviewUserEntityCopyWith<$Res> {
  _$AppReviewUserEntityCopyWithImpl(this._self, this._then);

  final AppReviewUserEntity _self;
  final $Res Function(AppReviewUserEntity) _then;

/// Create a copy of AppReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? avatar = freezed,}) {
  return _then(AppReviewUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppReviewUserEntity].
extension AppReviewUserEntityPatterns on AppReviewUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppReviewUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppReviewUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppReviewUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _AppReviewUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppReviewUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AppReviewUserEntity() when $default != null:
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
case _AppReviewUserEntity() when $default != null:
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
case _AppReviewUserEntity():
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
case _AppReviewUserEntity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _AppReviewUserEntity implements AppReviewUserEntity {
  const _AppReviewUserEntity({required this.id, required this.name, required this.type, this.avatar});
  

@override final  int id;
@override final  String name;
@override final  String type;
@override final  String? avatar;

/// Create a copy of AppReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppReviewUserEntityCopyWith<_AppReviewUserEntity> get copyWith => __$AppReviewUserEntityCopyWithImpl<_AppReviewUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppReviewUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,type,avatar);
}

@override
String toString() {
    return 'AppReviewUserEntity(id: $id, name: $name, type: $type, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$AppReviewUserEntityCopyWith<$Res> implements $AppReviewUserEntityCopyWith<$Res> {
  factory _$AppReviewUserEntityCopyWith(_AppReviewUserEntity value, $Res Function(_AppReviewUserEntity) _then) = __$AppReviewUserEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String type, String? avatar
});




}
/// @nodoc
class __$AppReviewUserEntityCopyWithImpl<$Res>
    implements _$AppReviewUserEntityCopyWith<$Res> {
  __$AppReviewUserEntityCopyWithImpl(this._self, this._then);

  final _AppReviewUserEntity _self;
  final $Res Function(_AppReviewUserEntity) _then;

/// Create a copy of AppReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? avatar = freezed,}) {
  return _then(_AppReviewUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$AppReviewEntity {

 int get id; int get rating; String get comment; AppReviewUserEntity get user; String get createdAt;
/// Create a copy of AppReviewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppReviewEntityCopyWith<AppReviewEntity> get copyWith => _$AppReviewEntityCopyWithImpl<AppReviewEntity>(this as AppReviewEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AppReviewEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppReviewEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as AppReviewEntity;
  return Object.hash(runtimeType,_this.id,_this.rating,_this.comment,_this.user,_this.createdAt);
}

@override
String toString() {
  final _this = this as AppReviewEntity;
  return 'AppReviewEntity(id: ${_this.id}, rating: ${_this.rating}, comment: ${_this.comment}, user: ${_this.user}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $AppReviewEntityCopyWith<$Res>  {
  factory $AppReviewEntityCopyWith(AppReviewEntity value, $Res Function(AppReviewEntity) _then) = _$AppReviewEntityCopyWithImpl;
@useResult
$Res call({
 int id, int rating, String comment, AppReviewUserEntity user, String createdAt
});


$AppReviewUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$AppReviewEntityCopyWithImpl<$Res>
    implements $AppReviewEntityCopyWith<$Res> {
  _$AppReviewEntityCopyWithImpl(this._self, this._then);

  final AppReviewEntity _self;
  final $Res Function(AppReviewEntity) _then;

/// Create a copy of AppReviewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? user = null,Object? createdAt = null,}) {
  return _then(AppReviewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppReviewUserEntity,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AppReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppReviewUserEntityCopyWith<$Res> get user {
  
  return $AppReviewUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppReviewEntity].
extension AppReviewEntityPatterns on AppReviewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppReviewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppReviewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppReviewEntity value)  $default,){
final _that = this;
switch (_that) {
case _AppReviewEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppReviewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AppReviewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int rating,  String comment,  AppReviewUserEntity user,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppReviewEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int rating,  String comment,  AppReviewUserEntity user,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _AppReviewEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int rating,  String comment,  AppReviewUserEntity user,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AppReviewEntity() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _AppReviewEntity implements AppReviewEntity {
  const _AppReviewEntity({required this.id, required this.rating, required this.comment, required this.user, required this.createdAt});
  

@override final  int id;
@override final  int rating;
@override final  String comment;
@override final  AppReviewUserEntity user;
@override final  String createdAt;

/// Create a copy of AppReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppReviewEntityCopyWith<_AppReviewEntity> get copyWith => __$AppReviewEntityCopyWithImpl<_AppReviewEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppReviewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.user, user) || other.user == user)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,rating,comment,user,createdAt);
}

@override
String toString() {
    return 'AppReviewEntity(id: $id, rating: $rating, comment: $comment, user: $user, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AppReviewEntityCopyWith<$Res> implements $AppReviewEntityCopyWith<$Res> {
  factory _$AppReviewEntityCopyWith(_AppReviewEntity value, $Res Function(_AppReviewEntity) _then) = __$AppReviewEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int rating, String comment, AppReviewUserEntity user, String createdAt
});


@override $AppReviewUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$AppReviewEntityCopyWithImpl<$Res>
    implements _$AppReviewEntityCopyWith<$Res> {
  __$AppReviewEntityCopyWithImpl(this._self, this._then);

  final _AppReviewEntity _self;
  final $Res Function(_AppReviewEntity) _then;

/// Create a copy of AppReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? user = null,Object? createdAt = null,}) {
  return _then(_AppReviewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AppReviewUserEntity,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AppReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppReviewUserEntityCopyWith<$Res> get user {
  
  return $AppReviewUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
