// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProviderDetailReviewEntity {

 int get rating; String get comment; int? get id; String? get createdAt;
/// Create a copy of ProviderDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderDetailReviewEntityCopyWith<ProviderDetailReviewEntity> get copyWith => _$ProviderDetailReviewEntityCopyWithImpl<ProviderDetailReviewEntity>(this as ProviderDetailReviewEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProviderDetailReviewEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProviderDetailReviewEntity&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as ProviderDetailReviewEntity;
  return Object.hash(runtimeType,_this.rating,_this.comment,_this.id,_this.createdAt);
}

@override
String toString() {
  final _this = this as ProviderDetailReviewEntity;
  return 'ProviderDetailReviewEntity(rating: ${_this.rating}, comment: ${_this.comment}, id: ${_this.id}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ProviderDetailReviewEntityCopyWith<$Res>  {
  factory $ProviderDetailReviewEntityCopyWith(ProviderDetailReviewEntity value, $Res Function(ProviderDetailReviewEntity) _then) = _$ProviderDetailReviewEntityCopyWithImpl;
@useResult
$Res call({
 int rating, String comment, int? id, String? createdAt
});




}
/// @nodoc
class _$ProviderDetailReviewEntityCopyWithImpl<$Res>
    implements $ProviderDetailReviewEntityCopyWith<$Res> {
  _$ProviderDetailReviewEntityCopyWithImpl(this._self, this._then);

  final ProviderDetailReviewEntity _self;
  final $Res Function(ProviderDetailReviewEntity) _then;

/// Create a copy of ProviderDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,Object? comment = null,Object? id = freezed,Object? createdAt = freezed,}) {
  return _then(ProviderDetailReviewEntity(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProviderDetailReviewEntity].
extension ProviderDetailReviewEntityPatterns on ProviderDetailReviewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProviderDetailReviewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProviderDetailReviewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProviderDetailReviewEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProviderDetailReviewEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProviderDetailReviewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProviderDetailReviewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rating,  String comment,  int? id,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProviderDetailReviewEntity() when $default != null:
return $default(_that.rating,_that.comment,_that.id,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rating,  String comment,  int? id,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ProviderDetailReviewEntity():
return $default(_that.rating,_that.comment,_that.id,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rating,  String comment,  int? id,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ProviderDetailReviewEntity() when $default != null:
return $default(_that.rating,_that.comment,_that.id,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _ProviderDetailReviewEntity implements ProviderDetailReviewEntity {
  const _ProviderDetailReviewEntity({required this.rating, required this.comment, this.id, this.createdAt});
  

@override final  int rating;
@override final  String comment;
@override final  int? id;
@override final  String? createdAt;

/// Create a copy of ProviderDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProviderDetailReviewEntityCopyWith<_ProviderDetailReviewEntity> get copyWith => __$ProviderDetailReviewEntityCopyWithImpl<_ProviderDetailReviewEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProviderDetailReviewEntity&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,rating,comment,id,createdAt);
}

@override
String toString() {
    return 'ProviderDetailReviewEntity(rating: $rating, comment: $comment, id: $id, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ProviderDetailReviewEntityCopyWith<$Res> implements $ProviderDetailReviewEntityCopyWith<$Res> {
  factory _$ProviderDetailReviewEntityCopyWith(_ProviderDetailReviewEntity value, $Res Function(_ProviderDetailReviewEntity) _then) = __$ProviderDetailReviewEntityCopyWithImpl;
@override @useResult
$Res call({
 int rating, String comment, int? id, String? createdAt
});




}
/// @nodoc
class __$ProviderDetailReviewEntityCopyWithImpl<$Res>
    implements _$ProviderDetailReviewEntityCopyWith<$Res> {
  __$ProviderDetailReviewEntityCopyWithImpl(this._self, this._then);

  final _ProviderDetailReviewEntity _self;
  final $Res Function(_ProviderDetailReviewEntity) _then;

/// Create a copy of ProviderDetailReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,Object? comment = null,Object? id = freezed,Object? createdAt = freezed,}) {
  return _then(_ProviderDetailReviewEntity(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ProviderDetailUserEntity {

 int get id; String get name; String get email; String get phone; String get type; int get isActive; String get createdAt; String? get avatar;
/// Create a copy of ProviderDetailUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderDetailUserEntityCopyWith<ProviderDetailUserEntity> get copyWith => _$ProviderDetailUserEntityCopyWithImpl<ProviderDetailUserEntity>(this as ProviderDetailUserEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProviderDetailUserEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProviderDetailUserEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}


@override
int get hashCode {
  final _this = this as ProviderDetailUserEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.email,_this.phone,_this.type,_this.isActive,_this.createdAt,_this.avatar);
}

@override
String toString() {
  final _this = this as ProviderDetailUserEntity;
  return 'ProviderDetailUserEntity(id: ${_this.id}, name: ${_this.name}, email: ${_this.email}, phone: ${_this.phone}, type: ${_this.type}, isActive: ${_this.isActive}, createdAt: ${_this.createdAt}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $ProviderDetailUserEntityCopyWith<$Res>  {
  factory $ProviderDetailUserEntityCopyWith(ProviderDetailUserEntity value, $Res Function(ProviderDetailUserEntity) _then) = _$ProviderDetailUserEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String email, String phone, String type, int isActive, String createdAt, String? avatar
});




}
/// @nodoc
class _$ProviderDetailUserEntityCopyWithImpl<$Res>
    implements $ProviderDetailUserEntityCopyWith<$Res> {
  _$ProviderDetailUserEntityCopyWithImpl(this._self, this._then);

  final ProviderDetailUserEntity _self;
  final $Res Function(ProviderDetailUserEntity) _then;

/// Create a copy of ProviderDetailUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = null,Object? type = null,Object? isActive = null,Object? createdAt = null,Object? avatar = freezed,}) {
  return _then(ProviderDetailUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProviderDetailUserEntity].
extension ProviderDetailUserEntityPatterns on ProviderDetailUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProviderDetailUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProviderDetailUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProviderDetailUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProviderDetailUserEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProviderDetailUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProviderDetailUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String phone,  String type,  int isActive,  String createdAt,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProviderDetailUserEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.type,_that.isActive,_that.createdAt,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String email,  String phone,  String type,  int isActive,  String createdAt,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _ProviderDetailUserEntity():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.type,_that.isActive,_that.createdAt,_that.avatar);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String email,  String phone,  String type,  int isActive,  String createdAt,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _ProviderDetailUserEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.type,_that.isActive,_that.createdAt,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _ProviderDetailUserEntity implements ProviderDetailUserEntity {
  const _ProviderDetailUserEntity({required this.id, required this.name, required this.email, required this.phone, required this.type, required this.isActive, required this.createdAt, this.avatar});
  

@override final  int id;
@override final  String name;
@override final  String email;
@override final  String phone;
@override final  String type;
@override final  int isActive;
@override final  String createdAt;
@override final  String? avatar;

/// Create a copy of ProviderDetailUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProviderDetailUserEntityCopyWith<_ProviderDetailUserEntity> get copyWith => __$ProviderDetailUserEntityCopyWithImpl<_ProviderDetailUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProviderDetailUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,email,phone,type,isActive,createdAt,avatar);
}

@override
String toString() {
    return 'ProviderDetailUserEntity(id: $id, name: $name, email: $email, phone: $phone, type: $type, isActive: $isActive, createdAt: $createdAt, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$ProviderDetailUserEntityCopyWith<$Res> implements $ProviderDetailUserEntityCopyWith<$Res> {
  factory _$ProviderDetailUserEntityCopyWith(_ProviderDetailUserEntity value, $Res Function(_ProviderDetailUserEntity) _then) = __$ProviderDetailUserEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String email, String phone, String type, int isActive, String createdAt, String? avatar
});




}
/// @nodoc
class __$ProviderDetailUserEntityCopyWithImpl<$Res>
    implements _$ProviderDetailUserEntityCopyWith<$Res> {
  __$ProviderDetailUserEntityCopyWithImpl(this._self, this._then);

  final _ProviderDetailUserEntity _self;
  final $Res Function(_ProviderDetailUserEntity) _then;

/// Create a copy of ProviderDetailUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phone = null,Object? type = null,Object? isActive = null,Object? createdAt = null,Object? avatar = freezed,}) {
  return _then(_ProviderDetailUserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ProviderDetailEntity {

 int get id; ProviderDetailUserEntity get user; String get title; String get serviceDescription; String get priceFrom; String get fromDay; String get toDay; String get startTime; String get endTime; String get status; String get cover; double get averageRating; int get reviewsCount; int get successfulOrdersCount; List<ProviderDetailReviewEntity> get reviews; List<ServiceEntity> get services; List<ProductEntity> get products;
/// Create a copy of ProviderDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderDetailEntityCopyWith<ProviderDetailEntity> get copyWith => _$ProviderDetailEntityCopyWithImpl<ProviderDetailEntity>(this as ProviderDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProviderDetailEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProviderDetailEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.serviceDescription, _this.serviceDescription) || other.serviceDescription == _this.serviceDescription)&&(identical(other.priceFrom, _this.priceFrom) || other.priceFrom == _this.priceFrom)&&(identical(other.fromDay, _this.fromDay) || other.fromDay == _this.fromDay)&&(identical(other.toDay, _this.toDay) || other.toDay == _this.toDay)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.cover, _this.cover) || other.cover == _this.cover)&&(identical(other.averageRating, _this.averageRating) || other.averageRating == _this.averageRating)&&(identical(other.reviewsCount, _this.reviewsCount) || other.reviewsCount == _this.reviewsCount)&&(identical(other.successfulOrdersCount, _this.successfulOrdersCount) || other.successfulOrdersCount == _this.successfulOrdersCount)&&const DeepCollectionEquality().equals(other.reviews, _this.reviews)&&const DeepCollectionEquality().equals(other.services, _this.services)&&const DeepCollectionEquality().equals(other.products, _this.products));
}


@override
int get hashCode {
  final _this = this as ProviderDetailEntity;
  return Object.hash(runtimeType,_this.id,_this.user,_this.title,_this.serviceDescription,_this.priceFrom,_this.fromDay,_this.toDay,_this.startTime,_this.endTime,_this.status,_this.cover,_this.averageRating,_this.reviewsCount,_this.successfulOrdersCount,const DeepCollectionEquality().hash(_this.reviews),const DeepCollectionEquality().hash(_this.services),const DeepCollectionEquality().hash(_this.products));
}

@override
String toString() {
  final _this = this as ProviderDetailEntity;
  return 'ProviderDetailEntity(id: ${_this.id}, user: ${_this.user}, title: ${_this.title}, serviceDescription: ${_this.serviceDescription}, priceFrom: ${_this.priceFrom}, fromDay: ${_this.fromDay}, toDay: ${_this.toDay}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, status: ${_this.status}, cover: ${_this.cover}, averageRating: ${_this.averageRating}, reviewsCount: ${_this.reviewsCount}, successfulOrdersCount: ${_this.successfulOrdersCount}, reviews: ${_this.reviews}, services: ${_this.services}, products: ${_this.products})';
}


}

/// @nodoc
abstract mixin class $ProviderDetailEntityCopyWith<$Res>  {
  factory $ProviderDetailEntityCopyWith(ProviderDetailEntity value, $Res Function(ProviderDetailEntity) _then) = _$ProviderDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id, ProviderDetailUserEntity user, String title, String serviceDescription, String priceFrom, String fromDay, String toDay, String startTime, String endTime, String status, String cover, double averageRating, int reviewsCount, int successfulOrdersCount, List<ProviderDetailReviewEntity> reviews, List<ServiceEntity> services, List<ProductEntity> products
});


$ProviderDetailUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$ProviderDetailEntityCopyWithImpl<$Res>
    implements $ProviderDetailEntityCopyWith<$Res> {
  _$ProviderDetailEntityCopyWithImpl(this._self, this._then);

  final ProviderDetailEntity _self;
  final $Res Function(ProviderDetailEntity) _then;

/// Create a copy of ProviderDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = null,Object? title = null,Object? serviceDescription = null,Object? priceFrom = null,Object? fromDay = null,Object? toDay = null,Object? startTime = null,Object? endTime = null,Object? status = null,Object? cover = null,Object? averageRating = null,Object? reviewsCount = null,Object? successfulOrdersCount = null,Object? reviews = null,Object? services = null,Object? products = null,}) {
  return _then(ProviderDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ProviderDetailUserEntity,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,serviceDescription: null == serviceDescription ? _self.serviceDescription : serviceDescription // ignore: cast_nullable_to_non_nullable
as String,priceFrom: null == priceFrom ? _self.priceFrom : priceFrom // ignore: cast_nullable_to_non_nullable
as String,fromDay: null == fromDay ? _self.fromDay : fromDay // ignore: cast_nullable_to_non_nullable
as String,toDay: null == toDay ? _self.toDay : toDay // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,successfulOrdersCount: null == successfulOrdersCount ? _self.successfulOrdersCount : successfulOrdersCount // ignore: cast_nullable_to_non_nullable
as int,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ProviderDetailReviewEntity>,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,
  ));
}
/// Create a copy of ProviderDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProviderDetailUserEntityCopyWith<$Res> get user {
  
  return $ProviderDetailUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProviderDetailEntity].
extension ProviderDetailEntityPatterns on ProviderDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProviderDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProviderDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProviderDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProviderDetailEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProviderDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProviderDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  ProviderDetailUserEntity user,  String title,  String serviceDescription,  String priceFrom,  String fromDay,  String toDay,  String startTime,  String endTime,  String status,  String cover,  double averageRating,  int reviewsCount,  int successfulOrdersCount,  List<ProviderDetailReviewEntity> reviews,  List<ServiceEntity> services,  List<ProductEntity> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProviderDetailEntity() when $default != null:
return $default(_that.id,_that.user,_that.title,_that.serviceDescription,_that.priceFrom,_that.fromDay,_that.toDay,_that.startTime,_that.endTime,_that.status,_that.cover,_that.averageRating,_that.reviewsCount,_that.successfulOrdersCount,_that.reviews,_that.services,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  ProviderDetailUserEntity user,  String title,  String serviceDescription,  String priceFrom,  String fromDay,  String toDay,  String startTime,  String endTime,  String status,  String cover,  double averageRating,  int reviewsCount,  int successfulOrdersCount,  List<ProviderDetailReviewEntity> reviews,  List<ServiceEntity> services,  List<ProductEntity> products)  $default,) {final _that = this;
switch (_that) {
case _ProviderDetailEntity():
return $default(_that.id,_that.user,_that.title,_that.serviceDescription,_that.priceFrom,_that.fromDay,_that.toDay,_that.startTime,_that.endTime,_that.status,_that.cover,_that.averageRating,_that.reviewsCount,_that.successfulOrdersCount,_that.reviews,_that.services,_that.products);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  ProviderDetailUserEntity user,  String title,  String serviceDescription,  String priceFrom,  String fromDay,  String toDay,  String startTime,  String endTime,  String status,  String cover,  double averageRating,  int reviewsCount,  int successfulOrdersCount,  List<ProviderDetailReviewEntity> reviews,  List<ServiceEntity> services,  List<ProductEntity> products)?  $default,) {final _that = this;
switch (_that) {
case _ProviderDetailEntity() when $default != null:
return $default(_that.id,_that.user,_that.title,_that.serviceDescription,_that.priceFrom,_that.fromDay,_that.toDay,_that.startTime,_that.endTime,_that.status,_that.cover,_that.averageRating,_that.reviewsCount,_that.successfulOrdersCount,_that.reviews,_that.services,_that.products);case _:
  return null;

}
}

}

/// @nodoc


class _ProviderDetailEntity implements ProviderDetailEntity {
  const _ProviderDetailEntity({required this.id, required this.user, required this.title, required this.serviceDescription, required this.priceFrom, required this.fromDay, required this.toDay, required this.startTime, required this.endTime, required this.status, required this.cover, required this.averageRating, required this.reviewsCount, required this.successfulOrdersCount, required  List<ProviderDetailReviewEntity> reviews, required  List<ServiceEntity> services, required  List<ProductEntity> products}): _reviews = reviews,_services = services,_products = products;
  

@override final  int id;
@override final  ProviderDetailUserEntity user;
@override final  String title;
@override final  String serviceDescription;
@override final  String priceFrom;
@override final  String fromDay;
@override final  String toDay;
@override final  String startTime;
@override final  String endTime;
@override final  String status;
@override final  String cover;
@override final  double averageRating;
@override final  int reviewsCount;
@override final  int successfulOrdersCount;
 final  List<ProviderDetailReviewEntity> _reviews;
@override List<ProviderDetailReviewEntity> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

 final  List<ServiceEntity> _services;
@override List<ServiceEntity> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

 final  List<ProductEntity> _products;
@override List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProviderDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProviderDetailEntityCopyWith<_ProviderDetailEntity> get copyWith => __$ProviderDetailEntityCopyWithImpl<_ProviderDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProviderDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.title, title) || other.title == title)&&(identical(other.serviceDescription, serviceDescription) || other.serviceDescription == serviceDescription)&&(identical(other.priceFrom, priceFrom) || other.priceFrom == priceFrom)&&(identical(other.fromDay, fromDay) || other.fromDay == fromDay)&&(identical(other.toDay, toDay) || other.toDay == toDay)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&(identical(other.successfulOrdersCount, successfulOrdersCount) || other.successfulOrdersCount == successfulOrdersCount)&&const DeepCollectionEquality().equals(other.reviews, _reviews)&&const DeepCollectionEquality().equals(other.services, _services)&&const DeepCollectionEquality().equals(other.products, _products));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,user,title,serviceDescription,priceFrom,fromDay,toDay,startTime,endTime,status,cover,averageRating,reviewsCount,successfulOrdersCount,const DeepCollectionEquality().hash(_reviews),const DeepCollectionEquality().hash(_services),const DeepCollectionEquality().hash(_products));
}

@override
String toString() {
    return 'ProviderDetailEntity(id: $id, user: $user, title: $title, serviceDescription: $serviceDescription, priceFrom: $priceFrom, fromDay: $fromDay, toDay: $toDay, startTime: $startTime, endTime: $endTime, status: $status, cover: $cover, averageRating: $averageRating, reviewsCount: $reviewsCount, successfulOrdersCount: $successfulOrdersCount, reviews: $reviews, services: $services, products: $products)';
}


}

/// @nodoc
abstract mixin class _$ProviderDetailEntityCopyWith<$Res> implements $ProviderDetailEntityCopyWith<$Res> {
  factory _$ProviderDetailEntityCopyWith(_ProviderDetailEntity value, $Res Function(_ProviderDetailEntity) _then) = __$ProviderDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, ProviderDetailUserEntity user, String title, String serviceDescription, String priceFrom, String fromDay, String toDay, String startTime, String endTime, String status, String cover, double averageRating, int reviewsCount, int successfulOrdersCount, List<ProviderDetailReviewEntity> reviews, List<ServiceEntity> services, List<ProductEntity> products
});


@override $ProviderDetailUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$ProviderDetailEntityCopyWithImpl<$Res>
    implements _$ProviderDetailEntityCopyWith<$Res> {
  __$ProviderDetailEntityCopyWithImpl(this._self, this._then);

  final _ProviderDetailEntity _self;
  final $Res Function(_ProviderDetailEntity) _then;

/// Create a copy of ProviderDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = null,Object? title = null,Object? serviceDescription = null,Object? priceFrom = null,Object? fromDay = null,Object? toDay = null,Object? startTime = null,Object? endTime = null,Object? status = null,Object? cover = null,Object? averageRating = null,Object? reviewsCount = null,Object? successfulOrdersCount = null,Object? reviews = null,Object? services = null,Object? products = null,}) {
  return _then(_ProviderDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ProviderDetailUserEntity,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,serviceDescription: null == serviceDescription ? _self.serviceDescription : serviceDescription // ignore: cast_nullable_to_non_nullable
as String,priceFrom: null == priceFrom ? _self.priceFrom : priceFrom // ignore: cast_nullable_to_non_nullable
as String,fromDay: null == fromDay ? _self.fromDay : fromDay // ignore: cast_nullable_to_non_nullable
as String,toDay: null == toDay ? _self.toDay : toDay // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,successfulOrdersCount: null == successfulOrdersCount ? _self.successfulOrdersCount : successfulOrdersCount // ignore: cast_nullable_to_non_nullable
as int,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ProviderDetailReviewEntity>,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,
  ));
}

/// Create a copy of ProviderDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProviderDetailUserEntityCopyWith<$Res> get user {
  
  return $ProviderDetailUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
