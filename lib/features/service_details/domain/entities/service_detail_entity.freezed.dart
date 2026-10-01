// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServiceReviewUserEntity {

 int get id; String get name; String? get avatar; String get type;
/// Create a copy of ServiceReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceReviewUserEntityCopyWith<ServiceReviewUserEntity> get copyWith => _$ServiceReviewUserEntityCopyWithImpl<ServiceReviewUserEntity>(this as ServiceReviewUserEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ServiceReviewUserEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceReviewUserEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.type, _this.type) || other.type == _this.type));
}


@override
int get hashCode {
  final _this = this as ServiceReviewUserEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.avatar,_this.type);
}

@override
String toString() {
  final _this = this as ServiceReviewUserEntity;
  return 'ServiceReviewUserEntity(id: ${_this.id}, name: ${_this.name}, avatar: ${_this.avatar}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $ServiceReviewUserEntityCopyWith<$Res>  {
  factory $ServiceReviewUserEntityCopyWith(ServiceReviewUserEntity value, $Res Function(ServiceReviewUserEntity) _then) = _$ServiceReviewUserEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? avatar, String type
});




}
/// @nodoc
class _$ServiceReviewUserEntityCopyWithImpl<$Res>
    implements $ServiceReviewUserEntityCopyWith<$Res> {
  _$ServiceReviewUserEntityCopyWithImpl(this._self, this._then);

  final ServiceReviewUserEntity _self;
  final $Res Function(ServiceReviewUserEntity) _then;

/// Create a copy of ServiceReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,Object? type = null,}) {
  return _then(ServiceReviewUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceReviewUserEntity].
extension ServiceReviewUserEntityPatterns on ServiceReviewUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceReviewUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceReviewUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceReviewUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceReviewUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceReviewUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceReviewUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? avatar,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceReviewUserEntity() when $default != null:
return $default(_that.id,_that.name,_that.avatar,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? avatar,  String type)  $default,) {final _that = this;
switch (_that) {
case _ServiceReviewUserEntity():
return $default(_that.id,_that.name,_that.avatar,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? avatar,  String type)?  $default,) {final _that = this;
switch (_that) {
case _ServiceReviewUserEntity() when $default != null:
return $default(_that.id,_that.name,_that.avatar,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceReviewUserEntity implements ServiceReviewUserEntity {
  const _ServiceReviewUserEntity({required this.id, required this.name, required this.avatar, required this.type});
  

@override final  int id;
@override final  String name;
@override final  String? avatar;
@override final  String type;

/// Create a copy of ServiceReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceReviewUserEntityCopyWith<_ServiceReviewUserEntity> get copyWith => __$ServiceReviewUserEntityCopyWithImpl<_ServiceReviewUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceReviewUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,avatar,type);
}

@override
String toString() {
    return 'ServiceReviewUserEntity(id: $id, name: $name, avatar: $avatar, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ServiceReviewUserEntityCopyWith<$Res> implements $ServiceReviewUserEntityCopyWith<$Res> {
  factory _$ServiceReviewUserEntityCopyWith(_ServiceReviewUserEntity value, $Res Function(_ServiceReviewUserEntity) _then) = __$ServiceReviewUserEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? avatar, String type
});




}
/// @nodoc
class __$ServiceReviewUserEntityCopyWithImpl<$Res>
    implements _$ServiceReviewUserEntityCopyWith<$Res> {
  __$ServiceReviewUserEntityCopyWithImpl(this._self, this._then);

  final _ServiceReviewUserEntity _self;
  final $Res Function(_ServiceReviewUserEntity) _then;

/// Create a copy of ServiceReviewUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,Object? type = null,}) {
  return _then(_ServiceReviewUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ServiceDetailReviewEntity {

 int get id; int get rating; String get comment; String get createdAt; ServiceReviewUserEntity get user;
/// Create a copy of ServiceDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceDetailReviewEntityCopyWith<ServiceDetailReviewEntity> get copyWith => _$ServiceDetailReviewEntityCopyWithImpl<ServiceDetailReviewEntity>(this as ServiceDetailReviewEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ServiceDetailReviewEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceDetailReviewEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as ServiceDetailReviewEntity;
  return Object.hash(runtimeType,_this.id,_this.rating,_this.comment,_this.createdAt,_this.user);
}

@override
String toString() {
  final _this = this as ServiceDetailReviewEntity;
  return 'ServiceDetailReviewEntity(id: ${_this.id}, rating: ${_this.rating}, comment: ${_this.comment}, createdAt: ${_this.createdAt}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $ServiceDetailReviewEntityCopyWith<$Res>  {
  factory $ServiceDetailReviewEntityCopyWith(ServiceDetailReviewEntity value, $Res Function(ServiceDetailReviewEntity) _then) = _$ServiceDetailReviewEntityCopyWithImpl;
@useResult
$Res call({
 int id, int rating, String comment, String createdAt, ServiceReviewUserEntity user
});


$ServiceReviewUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$ServiceDetailReviewEntityCopyWithImpl<$Res>
    implements $ServiceDetailReviewEntityCopyWith<$Res> {
  _$ServiceDetailReviewEntityCopyWithImpl(this._self, this._then);

  final ServiceDetailReviewEntity _self;
  final $Res Function(ServiceDetailReviewEntity) _then;

/// Create a copy of ServiceDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? createdAt = null,Object? user = null,}) {
  return _then(ServiceDetailReviewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ServiceReviewUserEntity,
  ));
}
/// Create a copy of ServiceDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceReviewUserEntityCopyWith<$Res> get user {
  
  return $ServiceReviewUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServiceDetailReviewEntity].
extension ServiceDetailReviewEntityPatterns on ServiceDetailReviewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceDetailReviewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceDetailReviewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceDetailReviewEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailReviewEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceDetailReviewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailReviewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int rating,  String comment,  String createdAt,  ServiceReviewUserEntity user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceDetailReviewEntity() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int rating,  String comment,  String createdAt,  ServiceReviewUserEntity user)  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailReviewEntity():
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int rating,  String comment,  String createdAt,  ServiceReviewUserEntity user)?  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailReviewEntity() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdAt,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceDetailReviewEntity implements ServiceDetailReviewEntity {
  const _ServiceDetailReviewEntity({required this.id, required this.rating, required this.comment, required this.createdAt, required this.user});
  

@override final  int id;
@override final  int rating;
@override final  String comment;
@override final  String createdAt;
@override final  ServiceReviewUserEntity user;

/// Create a copy of ServiceDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceDetailReviewEntityCopyWith<_ServiceDetailReviewEntity> get copyWith => __$ServiceDetailReviewEntityCopyWithImpl<_ServiceDetailReviewEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceDetailReviewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,rating,comment,createdAt,user);
}

@override
String toString() {
    return 'ServiceDetailReviewEntity(id: $id, rating: $rating, comment: $comment, createdAt: $createdAt, user: $user)';
}


}

/// @nodoc
abstract mixin class _$ServiceDetailReviewEntityCopyWith<$Res> implements $ServiceDetailReviewEntityCopyWith<$Res> {
  factory _$ServiceDetailReviewEntityCopyWith(_ServiceDetailReviewEntity value, $Res Function(_ServiceDetailReviewEntity) _then) = __$ServiceDetailReviewEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int rating, String comment, String createdAt, ServiceReviewUserEntity user
});


@override $ServiceReviewUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$ServiceDetailReviewEntityCopyWithImpl<$Res>
    implements _$ServiceDetailReviewEntityCopyWith<$Res> {
  __$ServiceDetailReviewEntityCopyWithImpl(this._self, this._then);

  final _ServiceDetailReviewEntity _self;
  final $Res Function(_ServiceDetailReviewEntity) _then;

/// Create a copy of ServiceDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? createdAt = null,Object? user = null,}) {
  return _then(_ServiceDetailReviewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ServiceReviewUserEntity,
  ));
}

/// Create a copy of ServiceDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceReviewUserEntityCopyWith<$Res> get user {
  
  return $ServiceReviewUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
mixin _$ServiceAvailableTimeEntity {

 int get id; String get time;
/// Create a copy of ServiceAvailableTimeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceAvailableTimeEntityCopyWith<ServiceAvailableTimeEntity> get copyWith => _$ServiceAvailableTimeEntityCopyWithImpl<ServiceAvailableTimeEntity>(this as ServiceAvailableTimeEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ServiceAvailableTimeEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceAvailableTimeEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.time, _this.time) || other.time == _this.time));
}


@override
int get hashCode {
  final _this = this as ServiceAvailableTimeEntity;
  return Object.hash(runtimeType,_this.id,_this.time);
}

@override
String toString() {
  final _this = this as ServiceAvailableTimeEntity;
  return 'ServiceAvailableTimeEntity(id: ${_this.id}, time: ${_this.time})';
}


}

/// @nodoc
abstract mixin class $ServiceAvailableTimeEntityCopyWith<$Res>  {
  factory $ServiceAvailableTimeEntityCopyWith(ServiceAvailableTimeEntity value, $Res Function(ServiceAvailableTimeEntity) _then) = _$ServiceAvailableTimeEntityCopyWithImpl;
@useResult
$Res call({
 int id, String time
});




}
/// @nodoc
class _$ServiceAvailableTimeEntityCopyWithImpl<$Res>
    implements $ServiceAvailableTimeEntityCopyWith<$Res> {
  _$ServiceAvailableTimeEntityCopyWithImpl(this._self, this._then);

  final ServiceAvailableTimeEntity _self;
  final $Res Function(ServiceAvailableTimeEntity) _then;

/// Create a copy of ServiceAvailableTimeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? time = null,}) {
  return _then(ServiceAvailableTimeEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceAvailableTimeEntity].
extension ServiceAvailableTimeEntityPatterns on ServiceAvailableTimeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceAvailableTimeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceAvailableTimeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceAvailableTimeEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceAvailableTimeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceAvailableTimeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceAvailableTimeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceAvailableTimeEntity() when $default != null:
return $default(_that.id,_that.time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String time)  $default,) {final _that = this;
switch (_that) {
case _ServiceAvailableTimeEntity():
return $default(_that.id,_that.time);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String time)?  $default,) {final _that = this;
switch (_that) {
case _ServiceAvailableTimeEntity() when $default != null:
return $default(_that.id,_that.time);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceAvailableTimeEntity extends ServiceAvailableTimeEntity {
  const _ServiceAvailableTimeEntity({required this.id, required this.time}): super._();
  

@override final  int id;
@override final  String time;

/// Create a copy of ServiceAvailableTimeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceAvailableTimeEntityCopyWith<_ServiceAvailableTimeEntity> get copyWith => __$ServiceAvailableTimeEntityCopyWithImpl<_ServiceAvailableTimeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceAvailableTimeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,time);
}

@override
String toString() {
    return 'ServiceAvailableTimeEntity(id: $id, time: $time)';
}


}

/// @nodoc
abstract mixin class _$ServiceAvailableTimeEntityCopyWith<$Res> implements $ServiceAvailableTimeEntityCopyWith<$Res> {
  factory _$ServiceAvailableTimeEntityCopyWith(_ServiceAvailableTimeEntity value, $Res Function(_ServiceAvailableTimeEntity) _then) = __$ServiceAvailableTimeEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String time
});




}
/// @nodoc
class __$ServiceAvailableTimeEntityCopyWithImpl<$Res>
    implements _$ServiceAvailableTimeEntityCopyWith<$Res> {
  __$ServiceAvailableTimeEntityCopyWithImpl(this._self, this._then);

  final _ServiceAvailableTimeEntity _self;
  final $Res Function(_ServiceAvailableTimeEntity) _then;

/// Create a copy of ServiceAvailableTimeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? time = null,}) {
  return _then(_ServiceAvailableTimeEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ServiceAvailableDayEntity {

 int get id; String get nameAr; String get nameEn; List<ServiceAvailableTimeEntity> get availableTimes;
/// Create a copy of ServiceAvailableDayEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceAvailableDayEntityCopyWith<ServiceAvailableDayEntity> get copyWith => _$ServiceAvailableDayEntityCopyWithImpl<ServiceAvailableDayEntity>(this as ServiceAvailableDayEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ServiceAvailableDayEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceAvailableDayEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.nameAr, _this.nameAr) || other.nameAr == _this.nameAr)&&(identical(other.nameEn, _this.nameEn) || other.nameEn == _this.nameEn)&&const DeepCollectionEquality().equals(other.availableTimes, _this.availableTimes));
}


@override
int get hashCode {
  final _this = this as ServiceAvailableDayEntity;
  return Object.hash(runtimeType,_this.id,_this.nameAr,_this.nameEn,const DeepCollectionEquality().hash(_this.availableTimes));
}

@override
String toString() {
  final _this = this as ServiceAvailableDayEntity;
  return 'ServiceAvailableDayEntity(id: ${_this.id}, nameAr: ${_this.nameAr}, nameEn: ${_this.nameEn}, availableTimes: ${_this.availableTimes})';
}


}

/// @nodoc
abstract mixin class $ServiceAvailableDayEntityCopyWith<$Res>  {
  factory $ServiceAvailableDayEntityCopyWith(ServiceAvailableDayEntity value, $Res Function(ServiceAvailableDayEntity) _then) = _$ServiceAvailableDayEntityCopyWithImpl;
@useResult
$Res call({
 int id, String nameAr, String nameEn, List<ServiceAvailableTimeEntity> availableTimes
});




}
/// @nodoc
class _$ServiceAvailableDayEntityCopyWithImpl<$Res>
    implements $ServiceAvailableDayEntityCopyWith<$Res> {
  _$ServiceAvailableDayEntityCopyWithImpl(this._self, this._then);

  final ServiceAvailableDayEntity _self;
  final $Res Function(ServiceAvailableDayEntity) _then;

/// Create a copy of ServiceAvailableDayEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameAr = null,Object? nameEn = null,Object? availableTimes = null,}) {
  return _then(ServiceAvailableDayEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,availableTimes: null == availableTimes ? _self.availableTimes : availableTimes // ignore: cast_nullable_to_non_nullable
as List<ServiceAvailableTimeEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceAvailableDayEntity].
extension ServiceAvailableDayEntityPatterns on ServiceAvailableDayEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceAvailableDayEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceAvailableDayEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceAvailableDayEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceAvailableDayEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceAvailableDayEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceAvailableDayEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String nameAr,  String nameEn,  List<ServiceAvailableTimeEntity> availableTimes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceAvailableDayEntity() when $default != null:
return $default(_that.id,_that.nameAr,_that.nameEn,_that.availableTimes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String nameAr,  String nameEn,  List<ServiceAvailableTimeEntity> availableTimes)  $default,) {final _that = this;
switch (_that) {
case _ServiceAvailableDayEntity():
return $default(_that.id,_that.nameAr,_that.nameEn,_that.availableTimes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String nameAr,  String nameEn,  List<ServiceAvailableTimeEntity> availableTimes)?  $default,) {final _that = this;
switch (_that) {
case _ServiceAvailableDayEntity() when $default != null:
return $default(_that.id,_that.nameAr,_that.nameEn,_that.availableTimes);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceAvailableDayEntity implements ServiceAvailableDayEntity {
  const _ServiceAvailableDayEntity({required this.id, required this.nameAr, required this.nameEn, required  List<ServiceAvailableTimeEntity> availableTimes}): _availableTimes = availableTimes;
  

@override final  int id;
@override final  String nameAr;
@override final  String nameEn;
 final  List<ServiceAvailableTimeEntity> _availableTimes;
@override List<ServiceAvailableTimeEntity> get availableTimes {
  if (_availableTimes is EqualUnmodifiableListView) return _availableTimes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableTimes);
}


/// Create a copy of ServiceAvailableDayEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceAvailableDayEntityCopyWith<_ServiceAvailableDayEntity> get copyWith => __$ServiceAvailableDayEntityCopyWithImpl<_ServiceAvailableDayEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceAvailableDayEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&const DeepCollectionEquality().equals(other.availableTimes, _availableTimes));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,nameAr,nameEn,const DeepCollectionEquality().hash(_availableTimes));
}

@override
String toString() {
    return 'ServiceAvailableDayEntity(id: $id, nameAr: $nameAr, nameEn: $nameEn, availableTimes: $availableTimes)';
}


}

/// @nodoc
abstract mixin class _$ServiceAvailableDayEntityCopyWith<$Res> implements $ServiceAvailableDayEntityCopyWith<$Res> {
  factory _$ServiceAvailableDayEntityCopyWith(_ServiceAvailableDayEntity value, $Res Function(_ServiceAvailableDayEntity) _then) = __$ServiceAvailableDayEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String nameAr, String nameEn, List<ServiceAvailableTimeEntity> availableTimes
});




}
/// @nodoc
class __$ServiceAvailableDayEntityCopyWithImpl<$Res>
    implements _$ServiceAvailableDayEntityCopyWith<$Res> {
  __$ServiceAvailableDayEntityCopyWithImpl(this._self, this._then);

  final _ServiceAvailableDayEntity _self;
  final $Res Function(_ServiceAvailableDayEntity) _then;

/// Create a copy of ServiceAvailableDayEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameAr = null,Object? nameEn = null,Object? availableTimes = null,}) {
  return _then(_ServiceAvailableDayEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,availableTimes: null == availableTimes ? _self._availableTimes : availableTimes // ignore: cast_nullable_to_non_nullable
as List<ServiceAvailableTimeEntity>,
  ));
}


}

/// @nodoc
mixin _$ServiceProviderUserEntity {

 int get id; String get name; String get email; String get phone; String? get avatar; String get type; int get isActive;
/// Create a copy of ServiceProviderUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceProviderUserEntityCopyWith<ServiceProviderUserEntity> get copyWith => _$ServiceProviderUserEntityCopyWithImpl<ServiceProviderUserEntity>(this as ServiceProviderUserEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ServiceProviderUserEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceProviderUserEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive));
}


@override
int get hashCode {
  final _this = this as ServiceProviderUserEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.email,_this.phone,_this.avatar,_this.type,_this.isActive);
}

@override
String toString() {
  final _this = this as ServiceProviderUserEntity;
  return 'ServiceProviderUserEntity(id: ${_this.id}, name: ${_this.name}, email: ${_this.email}, phone: ${_this.phone}, avatar: ${_this.avatar}, type: ${_this.type}, isActive: ${_this.isActive})';
}


}

/// @nodoc
abstract mixin class $ServiceProviderUserEntityCopyWith<$Res>  {
  factory $ServiceProviderUserEntityCopyWith(ServiceProviderUserEntity value, $Res Function(ServiceProviderUserEntity) _then) = _$ServiceProviderUserEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email, String phone, String? avatar, String type, int isActive
});




}
/// @nodoc
class _$ServiceProviderUserEntityCopyWithImpl<$Res>
    implements $ServiceProviderUserEntityCopyWith<$Res> {
  _$ServiceProviderUserEntityCopyWithImpl(this._self, this._then);

  final ServiceProviderUserEntity _self;
  final $Res Function(ServiceProviderUserEntity) _then;

/// Create a copy of ServiceProviderUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = null,Object? avatar = freezed,Object? type = null,Object? isActive = null,}) {
  return _then(ServiceProviderUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceProviderUserEntity].
extension ServiceProviderUserEntityPatterns on ServiceProviderUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceProviderUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceProviderUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceProviderUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceProviderUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceProviderUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceProviderUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String phone,  String? avatar,  String type,  int isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceProviderUserEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String phone,  String? avatar,  String type,  int isActive)  $default,) {final _that = this;
switch (_that) {
case _ServiceProviderUserEntity():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String email,  String phone,  String? avatar,  String type,  int isActive)?  $default,) {final _that = this;
switch (_that) {
case _ServiceProviderUserEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceProviderUserEntity implements ServiceProviderUserEntity {
  const _ServiceProviderUserEntity({required this.id, required this.name, required this.email, required this.phone, required this.avatar, required this.type, required this.isActive});
  

@override final  int id;
@override final  String name;
@override final  String email;
@override final  String phone;
@override final  String? avatar;
@override final  String type;
@override final  int isActive;

/// Create a copy of ServiceProviderUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceProviderUserEntityCopyWith<_ServiceProviderUserEntity> get copyWith => __$ServiceProviderUserEntityCopyWithImpl<_ServiceProviderUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceProviderUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,email,phone,avatar,type,isActive);
}

@override
String toString() {
    return 'ServiceProviderUserEntity(id: $id, name: $name, email: $email, phone: $phone, avatar: $avatar, type: $type, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$ServiceProviderUserEntityCopyWith<$Res> implements $ServiceProviderUserEntityCopyWith<$Res> {
  factory _$ServiceProviderUserEntityCopyWith(_ServiceProviderUserEntity value, $Res Function(_ServiceProviderUserEntity) _then) = __$ServiceProviderUserEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String email, String phone, String? avatar, String type, int isActive
});




}
/// @nodoc
class __$ServiceProviderUserEntityCopyWithImpl<$Res>
    implements _$ServiceProviderUserEntityCopyWith<$Res> {
  __$ServiceProviderUserEntityCopyWithImpl(this._self, this._then);

  final _ServiceProviderUserEntity _self;
  final $Res Function(_ServiceProviderUserEntity) _then;

/// Create a copy of ServiceProviderUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = null,Object? avatar = freezed,Object? type = null,Object? isActive = null,}) {
  return _then(_ServiceProviderUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ServiceProviderEntity {

 int get id; ServiceProviderUserEntity get user; String get title; String get serviceDescription; String get cover; double get averageRating; int get reviewsCount; int get successfulOrdersCount;
/// Create a copy of ServiceProviderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceProviderEntityCopyWith<ServiceProviderEntity> get copyWith => _$ServiceProviderEntityCopyWithImpl<ServiceProviderEntity>(this as ServiceProviderEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ServiceProviderEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceProviderEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.serviceDescription, _this.serviceDescription) || other.serviceDescription == _this.serviceDescription)&&(identical(other.cover, _this.cover) || other.cover == _this.cover)&&(identical(other.averageRating, _this.averageRating) || other.averageRating == _this.averageRating)&&(identical(other.reviewsCount, _this.reviewsCount) || other.reviewsCount == _this.reviewsCount)&&(identical(other.successfulOrdersCount, _this.successfulOrdersCount) || other.successfulOrdersCount == _this.successfulOrdersCount));
}


@override
int get hashCode {
  final _this = this as ServiceProviderEntity;
  return Object.hash(runtimeType,_this.id,_this.user,_this.title,_this.serviceDescription,_this.cover,_this.averageRating,_this.reviewsCount,_this.successfulOrdersCount);
}

@override
String toString() {
  final _this = this as ServiceProviderEntity;
  return 'ServiceProviderEntity(id: ${_this.id}, user: ${_this.user}, title: ${_this.title}, serviceDescription: ${_this.serviceDescription}, cover: ${_this.cover}, averageRating: ${_this.averageRating}, reviewsCount: ${_this.reviewsCount}, successfulOrdersCount: ${_this.successfulOrdersCount})';
}


}

/// @nodoc
abstract mixin class $ServiceProviderEntityCopyWith<$Res>  {
  factory $ServiceProviderEntityCopyWith(ServiceProviderEntity value, $Res Function(ServiceProviderEntity) _then) = _$ServiceProviderEntityCopyWithImpl;
@useResult
$Res call({
 int id, ServiceProviderUserEntity user, String title, String serviceDescription, String cover, double averageRating, int reviewsCount, int successfulOrdersCount
});


$ServiceProviderUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$ServiceProviderEntityCopyWithImpl<$Res>
    implements $ServiceProviderEntityCopyWith<$Res> {
  _$ServiceProviderEntityCopyWithImpl(this._self, this._then);

  final ServiceProviderEntity _self;
  final $Res Function(ServiceProviderEntity) _then;

/// Create a copy of ServiceProviderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = null,Object? title = null,Object? serviceDescription = null,Object? cover = null,Object? averageRating = null,Object? reviewsCount = null,Object? successfulOrdersCount = null,}) {
  return _then(ServiceProviderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ServiceProviderUserEntity,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,serviceDescription: null == serviceDescription ? _self.serviceDescription : serviceDescription // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,successfulOrdersCount: null == successfulOrdersCount ? _self.successfulOrdersCount : successfulOrdersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ServiceProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceProviderUserEntityCopyWith<$Res> get user {
  
  return $ServiceProviderUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServiceProviderEntity].
extension ServiceProviderEntityPatterns on ServiceProviderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceProviderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceProviderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceProviderEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceProviderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceProviderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceProviderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  ServiceProviderUserEntity user,  String title,  String serviceDescription,  String cover,  double averageRating,  int reviewsCount,  int successfulOrdersCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceProviderEntity() when $default != null:
return $default(_that.id,_that.user,_that.title,_that.serviceDescription,_that.cover,_that.averageRating,_that.reviewsCount,_that.successfulOrdersCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  ServiceProviderUserEntity user,  String title,  String serviceDescription,  String cover,  double averageRating,  int reviewsCount,  int successfulOrdersCount)  $default,) {final _that = this;
switch (_that) {
case _ServiceProviderEntity():
return $default(_that.id,_that.user,_that.title,_that.serviceDescription,_that.cover,_that.averageRating,_that.reviewsCount,_that.successfulOrdersCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  ServiceProviderUserEntity user,  String title,  String serviceDescription,  String cover,  double averageRating,  int reviewsCount,  int successfulOrdersCount)?  $default,) {final _that = this;
switch (_that) {
case _ServiceProviderEntity() when $default != null:
return $default(_that.id,_that.user,_that.title,_that.serviceDescription,_that.cover,_that.averageRating,_that.reviewsCount,_that.successfulOrdersCount);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceProviderEntity implements ServiceProviderEntity {
  const _ServiceProviderEntity({required this.id, required this.user, required this.title, required this.serviceDescription, required this.cover, required this.averageRating, required this.reviewsCount, required this.successfulOrdersCount});
  

@override final  int id;
@override final  ServiceProviderUserEntity user;
@override final  String title;
@override final  String serviceDescription;
@override final  String cover;
@override final  double averageRating;
@override final  int reviewsCount;
@override final  int successfulOrdersCount;

/// Create a copy of ServiceProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceProviderEntityCopyWith<_ServiceProviderEntity> get copyWith => __$ServiceProviderEntityCopyWithImpl<_ServiceProviderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceProviderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.title, title) || other.title == title)&&(identical(other.serviceDescription, serviceDescription) || other.serviceDescription == serviceDescription)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&(identical(other.successfulOrdersCount, successfulOrdersCount) || other.successfulOrdersCount == successfulOrdersCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,user,title,serviceDescription,cover,averageRating,reviewsCount,successfulOrdersCount);
}

@override
String toString() {
    return 'ServiceProviderEntity(id: $id, user: $user, title: $title, serviceDescription: $serviceDescription, cover: $cover, averageRating: $averageRating, reviewsCount: $reviewsCount, successfulOrdersCount: $successfulOrdersCount)';
}


}

/// @nodoc
abstract mixin class _$ServiceProviderEntityCopyWith<$Res> implements $ServiceProviderEntityCopyWith<$Res> {
  factory _$ServiceProviderEntityCopyWith(_ServiceProviderEntity value, $Res Function(_ServiceProviderEntity) _then) = __$ServiceProviderEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, ServiceProviderUserEntity user, String title, String serviceDescription, String cover, double averageRating, int reviewsCount, int successfulOrdersCount
});


@override $ServiceProviderUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$ServiceProviderEntityCopyWithImpl<$Res>
    implements _$ServiceProviderEntityCopyWith<$Res> {
  __$ServiceProviderEntityCopyWithImpl(this._self, this._then);

  final _ServiceProviderEntity _self;
  final $Res Function(_ServiceProviderEntity) _then;

/// Create a copy of ServiceProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = null,Object? title = null,Object? serviceDescription = null,Object? cover = null,Object? averageRating = null,Object? reviewsCount = null,Object? successfulOrdersCount = null,}) {
  return _then(_ServiceProviderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ServiceProviderUserEntity,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,serviceDescription: null == serviceDescription ? _self.serviceDescription : serviceDescription // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,successfulOrdersCount: null == successfulOrdersCount ? _self.successfulOrdersCount : successfulOrdersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ServiceProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceProviderUserEntityCopyWith<$Res> get user {
  
  return $ServiceProviderUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
mixin _$ServiceDetailEntity {

 int get id; String get service; String get description; String? get category; String get image; List<String> get images; num get price; ServiceProviderEntity get provider; List<ServiceAvailableDayEntity> get availableDays; List<ServiceDetailReviewEntity> get reviews; bool get isFavorite;
/// Create a copy of ServiceDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceDetailEntityCopyWith<ServiceDetailEntity> get copyWith => _$ServiceDetailEntityCopyWithImpl<ServiceDetailEntity>(this as ServiceDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ServiceDetailEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceDetailEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.service, _this.service) || other.service == _this.service)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.image, _this.image) || other.image == _this.image)&&const DeepCollectionEquality().equals(other.images, _this.images)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.provider, _this.provider) || other.provider == _this.provider)&&const DeepCollectionEquality().equals(other.availableDays, _this.availableDays)&&const DeepCollectionEquality().equals(other.reviews, _this.reviews)&&(identical(other.isFavorite, _this.isFavorite) || other.isFavorite == _this.isFavorite));
}


@override
int get hashCode {
  final _this = this as ServiceDetailEntity;
  return Object.hash(runtimeType,_this.id,_this.service,_this.description,_this.category,_this.image,const DeepCollectionEquality().hash(_this.images),_this.price,_this.provider,const DeepCollectionEquality().hash(_this.availableDays),const DeepCollectionEquality().hash(_this.reviews),_this.isFavorite);
}

@override
String toString() {
  final _this = this as ServiceDetailEntity;
  return 'ServiceDetailEntity(id: ${_this.id}, service: ${_this.service}, description: ${_this.description}, category: ${_this.category}, image: ${_this.image}, images: ${_this.images}, price: ${_this.price}, provider: ${_this.provider}, availableDays: ${_this.availableDays}, reviews: ${_this.reviews}, isFavorite: ${_this.isFavorite})';
}


}

/// @nodoc
abstract mixin class $ServiceDetailEntityCopyWith<$Res>  {
  factory $ServiceDetailEntityCopyWith(ServiceDetailEntity value, $Res Function(ServiceDetailEntity) _then) = _$ServiceDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id, String service, String description, String? category, String image, List<String> images, num price, ServiceProviderEntity provider, List<ServiceAvailableDayEntity> availableDays, List<ServiceDetailReviewEntity> reviews, bool isFavorite
});


$ServiceProviderEntityCopyWith<$Res> get provider;

}
/// @nodoc
class _$ServiceDetailEntityCopyWithImpl<$Res>
    implements $ServiceDetailEntityCopyWith<$Res> {
  _$ServiceDetailEntityCopyWithImpl(this._self, this._then);

  final ServiceDetailEntity _self;
  final $Res Function(ServiceDetailEntity) _then;

/// Create a copy of ServiceDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? service = null,Object? description = null,Object? category = freezed,Object? image = null,Object? images = null,Object? price = null,Object? provider = null,Object? availableDays = null,Object? reviews = null,Object? isFavorite = null,}) {
  return _then(ServiceDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ServiceProviderEntity,availableDays: null == availableDays ? _self.availableDays : availableDays // ignore: cast_nullable_to_non_nullable
as List<ServiceAvailableDayEntity>,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ServiceDetailReviewEntity>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ServiceDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceProviderEntityCopyWith<$Res> get provider {
  
  return $ServiceProviderEntityCopyWith<$Res>(_self.provider, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServiceDetailEntity].
extension ServiceDetailEntityPatterns on ServiceDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String service,  String description,  String? category,  String image,  List<String> images,  num price,  ServiceProviderEntity provider,  List<ServiceAvailableDayEntity> availableDays,  List<ServiceDetailReviewEntity> reviews,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceDetailEntity() when $default != null:
return $default(_that.id,_that.service,_that.description,_that.category,_that.image,_that.images,_that.price,_that.provider,_that.availableDays,_that.reviews,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String service,  String description,  String? category,  String image,  List<String> images,  num price,  ServiceProviderEntity provider,  List<ServiceAvailableDayEntity> availableDays,  List<ServiceDetailReviewEntity> reviews,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailEntity():
return $default(_that.id,_that.service,_that.description,_that.category,_that.image,_that.images,_that.price,_that.provider,_that.availableDays,_that.reviews,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String service,  String description,  String? category,  String image,  List<String> images,  num price,  ServiceProviderEntity provider,  List<ServiceAvailableDayEntity> availableDays,  List<ServiceDetailReviewEntity> reviews,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailEntity() when $default != null:
return $default(_that.id,_that.service,_that.description,_that.category,_that.image,_that.images,_that.price,_that.provider,_that.availableDays,_that.reviews,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceDetailEntity extends ServiceDetailEntity {
  const _ServiceDetailEntity({required this.id, required this.service, required this.description, required this.category, required this.image, required  List<String> images, required this.price, required this.provider, required  List<ServiceAvailableDayEntity> availableDays, required  List<ServiceDetailReviewEntity> reviews, required this.isFavorite}): _images = images,_availableDays = availableDays,_reviews = reviews,super._();
  

@override final  int id;
@override final  String service;
@override final  String description;
@override final  String? category;
@override final  String image;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  num price;
@override final  ServiceProviderEntity provider;
 final  List<ServiceAvailableDayEntity> _availableDays;
@override List<ServiceAvailableDayEntity> get availableDays {
  if (_availableDays is EqualUnmodifiableListView) return _availableDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableDays);
}

 final  List<ServiceDetailReviewEntity> _reviews;
@override List<ServiceDetailReviewEntity> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override final  bool isFavorite;

/// Create a copy of ServiceDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceDetailEntityCopyWith<_ServiceDetailEntity> get copyWith => __$ServiceDetailEntityCopyWithImpl<_ServiceDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.service, service) || other.service == service)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.images, _images)&&(identical(other.price, price) || other.price == price)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other.availableDays, _availableDays)&&const DeepCollectionEquality().equals(other.reviews, _reviews)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,service,description,category,image,const DeepCollectionEquality().hash(_images),price,provider,const DeepCollectionEquality().hash(_availableDays),const DeepCollectionEquality().hash(_reviews),isFavorite);
}

@override
String toString() {
    return 'ServiceDetailEntity(id: $id, service: $service, description: $description, category: $category, image: $image, images: $images, price: $price, provider: $provider, availableDays: $availableDays, reviews: $reviews, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$ServiceDetailEntityCopyWith<$Res> implements $ServiceDetailEntityCopyWith<$Res> {
  factory _$ServiceDetailEntityCopyWith(_ServiceDetailEntity value, $Res Function(_ServiceDetailEntity) _then) = __$ServiceDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String service, String description, String? category, String image, List<String> images, num price, ServiceProviderEntity provider, List<ServiceAvailableDayEntity> availableDays, List<ServiceDetailReviewEntity> reviews, bool isFavorite
});


@override $ServiceProviderEntityCopyWith<$Res> get provider;

}
/// @nodoc
class __$ServiceDetailEntityCopyWithImpl<$Res>
    implements _$ServiceDetailEntityCopyWith<$Res> {
  __$ServiceDetailEntityCopyWithImpl(this._self, this._then);

  final _ServiceDetailEntity _self;
  final $Res Function(_ServiceDetailEntity) _then;

/// Create a copy of ServiceDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? service = null,Object? description = null,Object? category = freezed,Object? image = null,Object? images = null,Object? price = null,Object? provider = null,Object? availableDays = null,Object? reviews = null,Object? isFavorite = null,}) {
  return _then(_ServiceDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ServiceProviderEntity,availableDays: null == availableDays ? _self._availableDays : availableDays // ignore: cast_nullable_to_non_nullable
as List<ServiceAvailableDayEntity>,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ServiceDetailReviewEntity>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ServiceDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceProviderEntityCopyWith<$Res> get provider {
  
  return $ServiceProviderEntityCopyWith<$Res>(_self.provider, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}

// dart format on
