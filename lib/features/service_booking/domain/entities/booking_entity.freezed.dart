// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RescheduleDetailsEntity {

 int? get suggestedDayId; String? get suggestedDayAr; String? get suggestedDayEn; int? get suggestedTimeId; String? get suggestedTime; String? get rescheduleNote;
/// Create a copy of RescheduleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RescheduleDetailsEntityCopyWith<RescheduleDetailsEntity> get copyWith => _$RescheduleDetailsEntityCopyWithImpl<RescheduleDetailsEntity>(this as RescheduleDetailsEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RescheduleDetailsEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RescheduleDetailsEntity&&(identical(other.suggestedDayId, _this.suggestedDayId) || other.suggestedDayId == _this.suggestedDayId)&&(identical(other.suggestedDayAr, _this.suggestedDayAr) || other.suggestedDayAr == _this.suggestedDayAr)&&(identical(other.suggestedDayEn, _this.suggestedDayEn) || other.suggestedDayEn == _this.suggestedDayEn)&&(identical(other.suggestedTimeId, _this.suggestedTimeId) || other.suggestedTimeId == _this.suggestedTimeId)&&(identical(other.suggestedTime, _this.suggestedTime) || other.suggestedTime == _this.suggestedTime)&&(identical(other.rescheduleNote, _this.rescheduleNote) || other.rescheduleNote == _this.rescheduleNote));
}


@override
int get hashCode {
  final _this = this as RescheduleDetailsEntity;
  return Object.hash(runtimeType,_this.suggestedDayId,_this.suggestedDayAr,_this.suggestedDayEn,_this.suggestedTimeId,_this.suggestedTime,_this.rescheduleNote);
}

@override
String toString() {
  final _this = this as RescheduleDetailsEntity;
  return 'RescheduleDetailsEntity(suggestedDayId: ${_this.suggestedDayId}, suggestedDayAr: ${_this.suggestedDayAr}, suggestedDayEn: ${_this.suggestedDayEn}, suggestedTimeId: ${_this.suggestedTimeId}, suggestedTime: ${_this.suggestedTime}, rescheduleNote: ${_this.rescheduleNote})';
}


}

/// @nodoc
abstract mixin class $RescheduleDetailsEntityCopyWith<$Res>  {
  factory $RescheduleDetailsEntityCopyWith(RescheduleDetailsEntity value, $Res Function(RescheduleDetailsEntity) _then) = _$RescheduleDetailsEntityCopyWithImpl;
@useResult
$Res call({
 int? suggestedDayId, String? suggestedDayAr, String? suggestedDayEn, int? suggestedTimeId, String? suggestedTime, String? rescheduleNote
});




}
/// @nodoc
class _$RescheduleDetailsEntityCopyWithImpl<$Res>
    implements $RescheduleDetailsEntityCopyWith<$Res> {
  _$RescheduleDetailsEntityCopyWithImpl(this._self, this._then);

  final RescheduleDetailsEntity _self;
  final $Res Function(RescheduleDetailsEntity) _then;

/// Create a copy of RescheduleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestedDayId = freezed,Object? suggestedDayAr = freezed,Object? suggestedDayEn = freezed,Object? suggestedTimeId = freezed,Object? suggestedTime = freezed,Object? rescheduleNote = freezed,}) {
  return _then(RescheduleDetailsEntity(
suggestedDayId: freezed == suggestedDayId ? _self.suggestedDayId : suggestedDayId // ignore: cast_nullable_to_non_nullable
as int?,suggestedDayAr: freezed == suggestedDayAr ? _self.suggestedDayAr : suggestedDayAr // ignore: cast_nullable_to_non_nullable
as String?,suggestedDayEn: freezed == suggestedDayEn ? _self.suggestedDayEn : suggestedDayEn // ignore: cast_nullable_to_non_nullable
as String?,suggestedTimeId: freezed == suggestedTimeId ? _self.suggestedTimeId : suggestedTimeId // ignore: cast_nullable_to_non_nullable
as int?,suggestedTime: freezed == suggestedTime ? _self.suggestedTime : suggestedTime // ignore: cast_nullable_to_non_nullable
as String?,rescheduleNote: freezed == rescheduleNote ? _self.rescheduleNote : rescheduleNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RescheduleDetailsEntity].
extension RescheduleDetailsEntityPatterns on RescheduleDetailsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RescheduleDetailsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RescheduleDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RescheduleDetailsEntity value)  $default,){
final _that = this;
switch (_that) {
case _RescheduleDetailsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RescheduleDetailsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RescheduleDetailsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? suggestedDayId,  String? suggestedDayAr,  String? suggestedDayEn,  int? suggestedTimeId,  String? suggestedTime,  String? rescheduleNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RescheduleDetailsEntity() when $default != null:
return $default(_that.suggestedDayId,_that.suggestedDayAr,_that.suggestedDayEn,_that.suggestedTimeId,_that.suggestedTime,_that.rescheduleNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? suggestedDayId,  String? suggestedDayAr,  String? suggestedDayEn,  int? suggestedTimeId,  String? suggestedTime,  String? rescheduleNote)  $default,) {final _that = this;
switch (_that) {
case _RescheduleDetailsEntity():
return $default(_that.suggestedDayId,_that.suggestedDayAr,_that.suggestedDayEn,_that.suggestedTimeId,_that.suggestedTime,_that.rescheduleNote);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? suggestedDayId,  String? suggestedDayAr,  String? suggestedDayEn,  int? suggestedTimeId,  String? suggestedTime,  String? rescheduleNote)?  $default,) {final _that = this;
switch (_that) {
case _RescheduleDetailsEntity() when $default != null:
return $default(_that.suggestedDayId,_that.suggestedDayAr,_that.suggestedDayEn,_that.suggestedTimeId,_that.suggestedTime,_that.rescheduleNote);case _:
  return null;

}
}

}

/// @nodoc


class _RescheduleDetailsEntity extends RescheduleDetailsEntity {
  const _RescheduleDetailsEntity({this.suggestedDayId, this.suggestedDayAr, this.suggestedDayEn, this.suggestedTimeId, this.suggestedTime, this.rescheduleNote}): super._();
  

@override final  int? suggestedDayId;
@override final  String? suggestedDayAr;
@override final  String? suggestedDayEn;
@override final  int? suggestedTimeId;
@override final  String? suggestedTime;
@override final  String? rescheduleNote;

/// Create a copy of RescheduleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RescheduleDetailsEntityCopyWith<_RescheduleDetailsEntity> get copyWith => __$RescheduleDetailsEntityCopyWithImpl<_RescheduleDetailsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RescheduleDetailsEntity&&(identical(other.suggestedDayId, suggestedDayId) || other.suggestedDayId == suggestedDayId)&&(identical(other.suggestedDayAr, suggestedDayAr) || other.suggestedDayAr == suggestedDayAr)&&(identical(other.suggestedDayEn, suggestedDayEn) || other.suggestedDayEn == suggestedDayEn)&&(identical(other.suggestedTimeId, suggestedTimeId) || other.suggestedTimeId == suggestedTimeId)&&(identical(other.suggestedTime, suggestedTime) || other.suggestedTime == suggestedTime)&&(identical(other.rescheduleNote, rescheduleNote) || other.rescheduleNote == rescheduleNote));
}


@override
int get hashCode {
    return Object.hash(runtimeType,suggestedDayId,suggestedDayAr,suggestedDayEn,suggestedTimeId,suggestedTime,rescheduleNote);
}

@override
String toString() {
    return 'RescheduleDetailsEntity(suggestedDayId: $suggestedDayId, suggestedDayAr: $suggestedDayAr, suggestedDayEn: $suggestedDayEn, suggestedTimeId: $suggestedTimeId, suggestedTime: $suggestedTime, rescheduleNote: $rescheduleNote)';
}


}

/// @nodoc
abstract mixin class _$RescheduleDetailsEntityCopyWith<$Res> implements $RescheduleDetailsEntityCopyWith<$Res> {
  factory _$RescheduleDetailsEntityCopyWith(_RescheduleDetailsEntity value, $Res Function(_RescheduleDetailsEntity) _then) = __$RescheduleDetailsEntityCopyWithImpl;
@override @useResult
$Res call({
 int? suggestedDayId, String? suggestedDayAr, String? suggestedDayEn, int? suggestedTimeId, String? suggestedTime, String? rescheduleNote
});




}
/// @nodoc
class __$RescheduleDetailsEntityCopyWithImpl<$Res>
    implements _$RescheduleDetailsEntityCopyWith<$Res> {
  __$RescheduleDetailsEntityCopyWithImpl(this._self, this._then);

  final _RescheduleDetailsEntity _self;
  final $Res Function(_RescheduleDetailsEntity) _then;

/// Create a copy of RescheduleDetailsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestedDayId = freezed,Object? suggestedDayAr = freezed,Object? suggestedDayEn = freezed,Object? suggestedTimeId = freezed,Object? suggestedTime = freezed,Object? rescheduleNote = freezed,}) {
  return _then(_RescheduleDetailsEntity(
suggestedDayId: freezed == suggestedDayId ? _self.suggestedDayId : suggestedDayId // ignore: cast_nullable_to_non_nullable
as int?,suggestedDayAr: freezed == suggestedDayAr ? _self.suggestedDayAr : suggestedDayAr // ignore: cast_nullable_to_non_nullable
as String?,suggestedDayEn: freezed == suggestedDayEn ? _self.suggestedDayEn : suggestedDayEn // ignore: cast_nullable_to_non_nullable
as String?,suggestedTimeId: freezed == suggestedTimeId ? _self.suggestedTimeId : suggestedTimeId // ignore: cast_nullable_to_non_nullable
as int?,suggestedTime: freezed == suggestedTime ? _self.suggestedTime : suggestedTime // ignore: cast_nullable_to_non_nullable
as String?,rescheduleNote: freezed == rescheduleNote ? _self.rescheduleNote : rescheduleNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$BookingProviderEntity {

 int get id; String get name; String? get avatar; String? get description; double? get rating; int? get reviewsCount;
/// Create a copy of BookingProviderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingProviderEntityCopyWith<BookingProviderEntity> get copyWith => _$BookingProviderEntityCopyWithImpl<BookingProviderEntity>(this as BookingProviderEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BookingProviderEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingProviderEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.reviewsCount, _this.reviewsCount) || other.reviewsCount == _this.reviewsCount));
}


@override
int get hashCode {
  final _this = this as BookingProviderEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.avatar,_this.description,_this.rating,_this.reviewsCount);
}

@override
String toString() {
  final _this = this as BookingProviderEntity;
  return 'BookingProviderEntity(id: ${_this.id}, name: ${_this.name}, avatar: ${_this.avatar}, description: ${_this.description}, rating: ${_this.rating}, reviewsCount: ${_this.reviewsCount})';
}


}

/// @nodoc
abstract mixin class $BookingProviderEntityCopyWith<$Res>  {
  factory $BookingProviderEntityCopyWith(BookingProviderEntity value, $Res Function(BookingProviderEntity) _then) = _$BookingProviderEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? avatar, String? description, double? rating, int? reviewsCount
});




}
/// @nodoc
class _$BookingProviderEntityCopyWithImpl<$Res>
    implements $BookingProviderEntityCopyWith<$Res> {
  _$BookingProviderEntityCopyWithImpl(this._self, this._then);

  final BookingProviderEntity _self;
  final $Res Function(BookingProviderEntity) _then;

/// Create a copy of BookingProviderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,Object? description = freezed,Object? rating = freezed,Object? reviewsCount = freezed,}) {
  return _then(BookingProviderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewsCount: freezed == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingProviderEntity].
extension BookingProviderEntityPatterns on BookingProviderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingProviderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingProviderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingProviderEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingProviderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingProviderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingProviderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? avatar,  String? description,  double? rating,  int? reviewsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingProviderEntity() when $default != null:
return $default(_that.id,_that.name,_that.avatar,_that.description,_that.rating,_that.reviewsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? avatar,  String? description,  double? rating,  int? reviewsCount)  $default,) {final _that = this;
switch (_that) {
case _BookingProviderEntity():
return $default(_that.id,_that.name,_that.avatar,_that.description,_that.rating,_that.reviewsCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? avatar,  String? description,  double? rating,  int? reviewsCount)?  $default,) {final _that = this;
switch (_that) {
case _BookingProviderEntity() when $default != null:
return $default(_that.id,_that.name,_that.avatar,_that.description,_that.rating,_that.reviewsCount);case _:
  return null;

}
}

}

/// @nodoc


class _BookingProviderEntity implements BookingProviderEntity {
  const _BookingProviderEntity({required this.id, required this.name, this.avatar, this.description, this.rating, this.reviewsCount});
  

@override final  int id;
@override final  String name;
@override final  String? avatar;
@override final  String? description;
@override final  double? rating;
@override final  int? reviewsCount;

/// Create a copy of BookingProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingProviderEntityCopyWith<_BookingProviderEntity> get copyWith => __$BookingProviderEntityCopyWithImpl<_BookingProviderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingProviderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.description, description) || other.description == description)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,avatar,description,rating,reviewsCount);
}

@override
String toString() {
    return 'BookingProviderEntity(id: $id, name: $name, avatar: $avatar, description: $description, rating: $rating, reviewsCount: $reviewsCount)';
}


}

/// @nodoc
abstract mixin class _$BookingProviderEntityCopyWith<$Res> implements $BookingProviderEntityCopyWith<$Res> {
  factory _$BookingProviderEntityCopyWith(_BookingProviderEntity value, $Res Function(_BookingProviderEntity) _then) = __$BookingProviderEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? avatar, String? description, double? rating, int? reviewsCount
});




}
/// @nodoc
class __$BookingProviderEntityCopyWithImpl<$Res>
    implements _$BookingProviderEntityCopyWith<$Res> {
  __$BookingProviderEntityCopyWithImpl(this._self, this._then);

  final _BookingProviderEntity _self;
  final $Res Function(_BookingProviderEntity) _then;

/// Create a copy of BookingProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,Object? description = freezed,Object? rating = freezed,Object? reviewsCount = freezed,}) {
  return _then(_BookingProviderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,reviewsCount: freezed == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$BookingServiceEntity {

 int get id; String get name; num get price; String? get image; String? get description;
/// Create a copy of BookingServiceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingServiceEntityCopyWith<BookingServiceEntity> get copyWith => _$BookingServiceEntityCopyWithImpl<BookingServiceEntity>(this as BookingServiceEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BookingServiceEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingServiceEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.description, _this.description) || other.description == _this.description));
}


@override
int get hashCode {
  final _this = this as BookingServiceEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.price,_this.image,_this.description);
}

@override
String toString() {
  final _this = this as BookingServiceEntity;
  return 'BookingServiceEntity(id: ${_this.id}, name: ${_this.name}, price: ${_this.price}, image: ${_this.image}, description: ${_this.description})';
}


}

/// @nodoc
abstract mixin class $BookingServiceEntityCopyWith<$Res>  {
  factory $BookingServiceEntityCopyWith(BookingServiceEntity value, $Res Function(BookingServiceEntity) _then) = _$BookingServiceEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, num price, String? image, String? description
});




}
/// @nodoc
class _$BookingServiceEntityCopyWithImpl<$Res>
    implements $BookingServiceEntityCopyWith<$Res> {
  _$BookingServiceEntityCopyWithImpl(this._self, this._then);

  final BookingServiceEntity _self;
  final $Res Function(BookingServiceEntity) _then;

/// Create a copy of BookingServiceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? image = freezed,Object? description = freezed,}) {
  return _then(BookingServiceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingServiceEntity].
extension BookingServiceEntityPatterns on BookingServiceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingServiceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingServiceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingServiceEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingServiceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingServiceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingServiceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  num price,  String? image,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingServiceEntity() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.image,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  num price,  String? image,  String? description)  $default,) {final _that = this;
switch (_that) {
case _BookingServiceEntity():
return $default(_that.id,_that.name,_that.price,_that.image,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  num price,  String? image,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _BookingServiceEntity() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.image,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _BookingServiceEntity implements BookingServiceEntity {
  const _BookingServiceEntity({required this.id, required this.name, required this.price, this.image, this.description});
  

@override final  int id;
@override final  String name;
@override final  num price;
@override final  String? image;
@override final  String? description;

/// Create a copy of BookingServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingServiceEntityCopyWith<_BookingServiceEntity> get copyWith => __$BookingServiceEntityCopyWithImpl<_BookingServiceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingServiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,price,image,description);
}

@override
String toString() {
    return 'BookingServiceEntity(id: $id, name: $name, price: $price, image: $image, description: $description)';
}


}

/// @nodoc
abstract mixin class _$BookingServiceEntityCopyWith<$Res> implements $BookingServiceEntityCopyWith<$Res> {
  factory _$BookingServiceEntityCopyWith(_BookingServiceEntity value, $Res Function(_BookingServiceEntity) _then) = __$BookingServiceEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, num price, String? image, String? description
});




}
/// @nodoc
class __$BookingServiceEntityCopyWithImpl<$Res>
    implements _$BookingServiceEntityCopyWith<$Res> {
  __$BookingServiceEntityCopyWithImpl(this._self, this._then);

  final _BookingServiceEntity _self;
  final $Res Function(_BookingServiceEntity) _then;

/// Create a copy of BookingServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? image = freezed,Object? description = freezed,}) {
  return _then(_BookingServiceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$BookingEntity {

 int get id; String get status; String get problemDescription; BookingServiceEntity get service; BookingProviderEntity get provider; String get dayAr; String get dayEn; String get time; String get createdAt; String get customerName; String get customerPhone; String? get customerEmail; String? get governorate; String? get center; RescheduleDetailsEntity? get rescheduleDetails;
/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingEntityCopyWith<BookingEntity> get copyWith => _$BookingEntityCopyWithImpl<BookingEntity>(this as BookingEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BookingEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.problemDescription, _this.problemDescription) || other.problemDescription == _this.problemDescription)&&(identical(other.service, _this.service) || other.service == _this.service)&&(identical(other.provider, _this.provider) || other.provider == _this.provider)&&(identical(other.dayAr, _this.dayAr) || other.dayAr == _this.dayAr)&&(identical(other.dayEn, _this.dayEn) || other.dayEn == _this.dayEn)&&(identical(other.time, _this.time) || other.time == _this.time)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.customerName, _this.customerName) || other.customerName == _this.customerName)&&(identical(other.customerPhone, _this.customerPhone) || other.customerPhone == _this.customerPhone)&&(identical(other.customerEmail, _this.customerEmail) || other.customerEmail == _this.customerEmail)&&(identical(other.governorate, _this.governorate) || other.governorate == _this.governorate)&&(identical(other.center, _this.center) || other.center == _this.center)&&(identical(other.rescheduleDetails, _this.rescheduleDetails) || other.rescheduleDetails == _this.rescheduleDetails));
}


@override
int get hashCode {
  final _this = this as BookingEntity;
  return Object.hash(runtimeType,_this.id,_this.status,_this.problemDescription,_this.service,_this.provider,_this.dayAr,_this.dayEn,_this.time,_this.createdAt,_this.customerName,_this.customerPhone,_this.customerEmail,_this.governorate,_this.center,_this.rescheduleDetails);
}

@override
String toString() {
  final _this = this as BookingEntity;
  return 'BookingEntity(id: ${_this.id}, status: ${_this.status}, problemDescription: ${_this.problemDescription}, service: ${_this.service}, provider: ${_this.provider}, dayAr: ${_this.dayAr}, dayEn: ${_this.dayEn}, time: ${_this.time}, createdAt: ${_this.createdAt}, customerName: ${_this.customerName}, customerPhone: ${_this.customerPhone}, customerEmail: ${_this.customerEmail}, governorate: ${_this.governorate}, center: ${_this.center}, rescheduleDetails: ${_this.rescheduleDetails})';
}


}

/// @nodoc
abstract mixin class $BookingEntityCopyWith<$Res>  {
  factory $BookingEntityCopyWith(BookingEntity value, $Res Function(BookingEntity) _then) = _$BookingEntityCopyWithImpl;
@useResult
$Res call({
 int id, String status, String problemDescription, BookingServiceEntity service, BookingProviderEntity provider, String dayAr, String dayEn, String time, String createdAt, String customerName, String customerPhone, String? customerEmail, String? governorate, String? center, RescheduleDetailsEntity? rescheduleDetails
});


$BookingServiceEntityCopyWith<$Res> get service;$BookingProviderEntityCopyWith<$Res> get provider;$RescheduleDetailsEntityCopyWith<$Res>? get rescheduleDetails;

}
/// @nodoc
class _$BookingEntityCopyWithImpl<$Res>
    implements $BookingEntityCopyWith<$Res> {
  _$BookingEntityCopyWithImpl(this._self, this._then);

  final BookingEntity _self;
  final $Res Function(BookingEntity) _then;

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? problemDescription = null,Object? service = null,Object? provider = null,Object? dayAr = null,Object? dayEn = null,Object? time = null,Object? createdAt = null,Object? customerName = null,Object? customerPhone = null,Object? customerEmail = freezed,Object? governorate = freezed,Object? center = freezed,Object? rescheduleDetails = freezed,}) {
  return _then(BookingEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,problemDescription: null == problemDescription ? _self.problemDescription : problemDescription // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as BookingServiceEntity,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as BookingProviderEntity,dayAr: null == dayAr ? _self.dayAr : dayAr // ignore: cast_nullable_to_non_nullable
as String,dayEn: null == dayEn ? _self.dayEn : dayEn // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,governorate: freezed == governorate ? _self.governorate : governorate // ignore: cast_nullable_to_non_nullable
as String?,center: freezed == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as String?,rescheduleDetails: freezed == rescheduleDetails ? _self.rescheduleDetails : rescheduleDetails // ignore: cast_nullable_to_non_nullable
as RescheduleDetailsEntity?,
  ));
}
/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingServiceEntityCopyWith<$Res> get service {
  
  return $BookingServiceEntityCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingProviderEntityCopyWith<$Res> get provider {
  
  return $BookingProviderEntityCopyWith<$Res>(_self.provider, (value) {
    return _then(_self.copyWith(provider: value));
  });
}/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RescheduleDetailsEntityCopyWith<$Res>? get rescheduleDetails {
    if (_self.rescheduleDetails == null) {
    return null;
  }

  return $RescheduleDetailsEntityCopyWith<$Res>(_self.rescheduleDetails!, (value) {
    return _then(_self.copyWith(rescheduleDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [BookingEntity].
extension BookingEntityPatterns on BookingEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String status,  String problemDescription,  BookingServiceEntity service,  BookingProviderEntity provider,  String dayAr,  String dayEn,  String time,  String createdAt,  String customerName,  String customerPhone,  String? customerEmail,  String? governorate,  String? center,  RescheduleDetailsEntity? rescheduleDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
return $default(_that.id,_that.status,_that.problemDescription,_that.service,_that.provider,_that.dayAr,_that.dayEn,_that.time,_that.createdAt,_that.customerName,_that.customerPhone,_that.customerEmail,_that.governorate,_that.center,_that.rescheduleDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String status,  String problemDescription,  BookingServiceEntity service,  BookingProviderEntity provider,  String dayAr,  String dayEn,  String time,  String createdAt,  String customerName,  String customerPhone,  String? customerEmail,  String? governorate,  String? center,  RescheduleDetailsEntity? rescheduleDetails)  $default,) {final _that = this;
switch (_that) {
case _BookingEntity():
return $default(_that.id,_that.status,_that.problemDescription,_that.service,_that.provider,_that.dayAr,_that.dayEn,_that.time,_that.createdAt,_that.customerName,_that.customerPhone,_that.customerEmail,_that.governorate,_that.center,_that.rescheduleDetails);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String status,  String problemDescription,  BookingServiceEntity service,  BookingProviderEntity provider,  String dayAr,  String dayEn,  String time,  String createdAt,  String customerName,  String customerPhone,  String? customerEmail,  String? governorate,  String? center,  RescheduleDetailsEntity? rescheduleDetails)?  $default,) {final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
return $default(_that.id,_that.status,_that.problemDescription,_that.service,_that.provider,_that.dayAr,_that.dayEn,_that.time,_that.createdAt,_that.customerName,_that.customerPhone,_that.customerEmail,_that.governorate,_that.center,_that.rescheduleDetails);case _:
  return null;

}
}

}

/// @nodoc


class _BookingEntity extends BookingEntity {
  const _BookingEntity({required this.id, required this.status, required this.problemDescription, required this.service, required this.provider, required this.dayAr, required this.dayEn, required this.time, required this.createdAt, required this.customerName, required this.customerPhone, this.customerEmail, this.governorate, this.center, this.rescheduleDetails}): super._();
  

@override final  int id;
@override final  String status;
@override final  String problemDescription;
@override final  BookingServiceEntity service;
@override final  BookingProviderEntity provider;
@override final  String dayAr;
@override final  String dayEn;
@override final  String time;
@override final  String createdAt;
@override final  String customerName;
@override final  String customerPhone;
@override final  String? customerEmail;
@override final  String? governorate;
@override final  String? center;
@override final  RescheduleDetailsEntity? rescheduleDetails;

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingEntityCopyWith<_BookingEntity> get copyWith => __$BookingEntityCopyWithImpl<_BookingEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.problemDescription, problemDescription) || other.problemDescription == problemDescription)&&(identical(other.service, service) || other.service == service)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.dayAr, dayAr) || other.dayAr == dayAr)&&(identical(other.dayEn, dayEn) || other.dayEn == dayEn)&&(identical(other.time, time) || other.time == time)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.governorate, governorate) || other.governorate == governorate)&&(identical(other.center, center) || other.center == center)&&(identical(other.rescheduleDetails, rescheduleDetails) || other.rescheduleDetails == rescheduleDetails));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,status,problemDescription,service,provider,dayAr,dayEn,time,createdAt,customerName,customerPhone,customerEmail,governorate,center,rescheduleDetails);
}

@override
String toString() {
    return 'BookingEntity(id: $id, status: $status, problemDescription: $problemDescription, service: $service, provider: $provider, dayAr: $dayAr, dayEn: $dayEn, time: $time, createdAt: $createdAt, customerName: $customerName, customerPhone: $customerPhone, customerEmail: $customerEmail, governorate: $governorate, center: $center, rescheduleDetails: $rescheduleDetails)';
}


}

/// @nodoc
abstract mixin class _$BookingEntityCopyWith<$Res> implements $BookingEntityCopyWith<$Res> {
  factory _$BookingEntityCopyWith(_BookingEntity value, $Res Function(_BookingEntity) _then) = __$BookingEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String status, String problemDescription, BookingServiceEntity service, BookingProviderEntity provider, String dayAr, String dayEn, String time, String createdAt, String customerName, String customerPhone, String? customerEmail, String? governorate, String? center, RescheduleDetailsEntity? rescheduleDetails
});


@override $BookingServiceEntityCopyWith<$Res> get service;@override $BookingProviderEntityCopyWith<$Res> get provider;@override $RescheduleDetailsEntityCopyWith<$Res>? get rescheduleDetails;

}
/// @nodoc
class __$BookingEntityCopyWithImpl<$Res>
    implements _$BookingEntityCopyWith<$Res> {
  __$BookingEntityCopyWithImpl(this._self, this._then);

  final _BookingEntity _self;
  final $Res Function(_BookingEntity) _then;

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? problemDescription = null,Object? service = null,Object? provider = null,Object? dayAr = null,Object? dayEn = null,Object? time = null,Object? createdAt = null,Object? customerName = null,Object? customerPhone = null,Object? customerEmail = freezed,Object? governorate = freezed,Object? center = freezed,Object? rescheduleDetails = freezed,}) {
  return _then(_BookingEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,problemDescription: null == problemDescription ? _self.problemDescription : problemDescription // ignore: cast_nullable_to_non_nullable
as String,service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as BookingServiceEntity,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as BookingProviderEntity,dayAr: null == dayAr ? _self.dayAr : dayAr // ignore: cast_nullable_to_non_nullable
as String,dayEn: null == dayEn ? _self.dayEn : dayEn // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerEmail: freezed == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String?,governorate: freezed == governorate ? _self.governorate : governorate // ignore: cast_nullable_to_non_nullable
as String?,center: freezed == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as String?,rescheduleDetails: freezed == rescheduleDetails ? _self.rescheduleDetails : rescheduleDetails // ignore: cast_nullable_to_non_nullable
as RescheduleDetailsEntity?,
  ));
}

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingServiceEntityCopyWith<$Res> get service {
  
  return $BookingServiceEntityCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingProviderEntityCopyWith<$Res> get provider {
  
  return $BookingProviderEntityCopyWith<$Res>(_self.provider, (value) {
    return _then(_self.copyWith(provider: value));
  });
}/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RescheduleDetailsEntityCopyWith<$Res>? get rescheduleDetails {
    if (_self.rescheduleDetails == null) {
    return null;
  }

  return $RescheduleDetailsEntityCopyWith<$Res>(_self.rescheduleDetails!, (value) {
    return _then(_self.copyWith(rescheduleDetails: value));
  });
}
}

/// @nodoc
mixin _$BookingParams {

 int get serviceId; int get availableDayId; int get availableTimeId; String get problemDescription; String get customerName; String get customerPhone; String get customerEmail; String get governorateId; String get centerId;
/// Create a copy of BookingParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingParamsCopyWith<BookingParams> get copyWith => _$BookingParamsCopyWithImpl<BookingParams>(this as BookingParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BookingParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingParams&&(identical(other.serviceId, _this.serviceId) || other.serviceId == _this.serviceId)&&(identical(other.availableDayId, _this.availableDayId) || other.availableDayId == _this.availableDayId)&&(identical(other.availableTimeId, _this.availableTimeId) || other.availableTimeId == _this.availableTimeId)&&(identical(other.problemDescription, _this.problemDescription) || other.problemDescription == _this.problemDescription)&&(identical(other.customerName, _this.customerName) || other.customerName == _this.customerName)&&(identical(other.customerPhone, _this.customerPhone) || other.customerPhone == _this.customerPhone)&&(identical(other.customerEmail, _this.customerEmail) || other.customerEmail == _this.customerEmail)&&(identical(other.governorateId, _this.governorateId) || other.governorateId == _this.governorateId)&&(identical(other.centerId, _this.centerId) || other.centerId == _this.centerId));
}


@override
int get hashCode {
  final _this = this as BookingParams;
  return Object.hash(runtimeType,_this.serviceId,_this.availableDayId,_this.availableTimeId,_this.problemDescription,_this.customerName,_this.customerPhone,_this.customerEmail,_this.governorateId,_this.centerId);
}

@override
String toString() {
  final _this = this as BookingParams;
  return 'BookingParams(serviceId: ${_this.serviceId}, availableDayId: ${_this.availableDayId}, availableTimeId: ${_this.availableTimeId}, problemDescription: ${_this.problemDescription}, customerName: ${_this.customerName}, customerPhone: ${_this.customerPhone}, customerEmail: ${_this.customerEmail}, governorateId: ${_this.governorateId}, centerId: ${_this.centerId})';
}


}

/// @nodoc
abstract mixin class $BookingParamsCopyWith<$Res>  {
  factory $BookingParamsCopyWith(BookingParams value, $Res Function(BookingParams) _then) = _$BookingParamsCopyWithImpl;
@useResult
$Res call({
 int serviceId, int availableDayId, int availableTimeId, String problemDescription, String customerName, String customerPhone, String customerEmail, String governorateId, String centerId
});




}
/// @nodoc
class _$BookingParamsCopyWithImpl<$Res>
    implements $BookingParamsCopyWith<$Res> {
  _$BookingParamsCopyWithImpl(this._self, this._then);

  final BookingParams _self;
  final $Res Function(BookingParams) _then;

/// Create a copy of BookingParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceId = null,Object? availableDayId = null,Object? availableTimeId = null,Object? problemDescription = null,Object? customerName = null,Object? customerPhone = null,Object? customerEmail = null,Object? governorateId = null,Object? centerId = null,}) {
  return _then(BookingParams(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,availableDayId: null == availableDayId ? _self.availableDayId : availableDayId // ignore: cast_nullable_to_non_nullable
as int,availableTimeId: null == availableTimeId ? _self.availableTimeId : availableTimeId // ignore: cast_nullable_to_non_nullable
as int,problemDescription: null == problemDescription ? _self.problemDescription : problemDescription // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerEmail: null == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,centerId: null == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingParams].
extension BookingParamsPatterns on BookingParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingParams value)  $default,){
final _that = this;
switch (_that) {
case _BookingParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingParams value)?  $default,){
final _that = this;
switch (_that) {
case _BookingParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int serviceId,  int availableDayId,  int availableTimeId,  String problemDescription,  String customerName,  String customerPhone,  String customerEmail,  String governorateId,  String centerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingParams() when $default != null:
return $default(_that.serviceId,_that.availableDayId,_that.availableTimeId,_that.problemDescription,_that.customerName,_that.customerPhone,_that.customerEmail,_that.governorateId,_that.centerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int serviceId,  int availableDayId,  int availableTimeId,  String problemDescription,  String customerName,  String customerPhone,  String customerEmail,  String governorateId,  String centerId)  $default,) {final _that = this;
switch (_that) {
case _BookingParams():
return $default(_that.serviceId,_that.availableDayId,_that.availableTimeId,_that.problemDescription,_that.customerName,_that.customerPhone,_that.customerEmail,_that.governorateId,_that.centerId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int serviceId,  int availableDayId,  int availableTimeId,  String problemDescription,  String customerName,  String customerPhone,  String customerEmail,  String governorateId,  String centerId)?  $default,) {final _that = this;
switch (_that) {
case _BookingParams() when $default != null:
return $default(_that.serviceId,_that.availableDayId,_that.availableTimeId,_that.problemDescription,_that.customerName,_that.customerPhone,_that.customerEmail,_that.governorateId,_that.centerId);case _:
  return null;

}
}

}

/// @nodoc


class _BookingParams extends BookingParams {
  const _BookingParams({required this.serviceId, required this.availableDayId, required this.availableTimeId, required this.problemDescription, required this.customerName, required this.customerPhone, required this.customerEmail, required this.governorateId, required this.centerId}): super._();
  

@override final  int serviceId;
@override final  int availableDayId;
@override final  int availableTimeId;
@override final  String problemDescription;
@override final  String customerName;
@override final  String customerPhone;
@override final  String customerEmail;
@override final  String governorateId;
@override final  String centerId;

/// Create a copy of BookingParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingParamsCopyWith<_BookingParams> get copyWith => __$BookingParamsCopyWithImpl<_BookingParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingParams&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.availableDayId, availableDayId) || other.availableDayId == availableDayId)&&(identical(other.availableTimeId, availableTimeId) || other.availableTimeId == availableTimeId)&&(identical(other.problemDescription, problemDescription) || other.problemDescription == problemDescription)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.governorateId, governorateId) || other.governorateId == governorateId)&&(identical(other.centerId, centerId) || other.centerId == centerId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,serviceId,availableDayId,availableTimeId,problemDescription,customerName,customerPhone,customerEmail,governorateId,centerId);
}

@override
String toString() {
    return 'BookingParams(serviceId: $serviceId, availableDayId: $availableDayId, availableTimeId: $availableTimeId, problemDescription: $problemDescription, customerName: $customerName, customerPhone: $customerPhone, customerEmail: $customerEmail, governorateId: $governorateId, centerId: $centerId)';
}


}

/// @nodoc
abstract mixin class _$BookingParamsCopyWith<$Res> implements $BookingParamsCopyWith<$Res> {
  factory _$BookingParamsCopyWith(_BookingParams value, $Res Function(_BookingParams) _then) = __$BookingParamsCopyWithImpl;
@override @useResult
$Res call({
 int serviceId, int availableDayId, int availableTimeId, String problemDescription, String customerName, String customerPhone, String customerEmail, String governorateId, String centerId
});




}
/// @nodoc
class __$BookingParamsCopyWithImpl<$Res>
    implements _$BookingParamsCopyWith<$Res> {
  __$BookingParamsCopyWithImpl(this._self, this._then);

  final _BookingParams _self;
  final $Res Function(_BookingParams) _then;

/// Create a copy of BookingParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? availableDayId = null,Object? availableTimeId = null,Object? problemDescription = null,Object? customerName = null,Object? customerPhone = null,Object? customerEmail = null,Object? governorateId = null,Object? centerId = null,}) {
  return _then(_BookingParams(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,availableDayId: null == availableDayId ? _self.availableDayId : availableDayId // ignore: cast_nullable_to_non_nullable
as int,availableTimeId: null == availableTimeId ? _self.availableTimeId : availableTimeId // ignore: cast_nullable_to_non_nullable
as int,problemDescription: null == problemDescription ? _self.problemDescription : problemDescription // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerEmail: null == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String,governorateId: null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,centerId: null == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UpdateBookingParams {

 int get bookingId; String get problemDescription; String get customerPhone;
/// Create a copy of UpdateBookingParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBookingParamsCopyWith<UpdateBookingParams> get copyWith => _$UpdateBookingParamsCopyWithImpl<UpdateBookingParams>(this as UpdateBookingParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateBookingParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBookingParams&&(identical(other.bookingId, _this.bookingId) || other.bookingId == _this.bookingId)&&(identical(other.problemDescription, _this.problemDescription) || other.problemDescription == _this.problemDescription)&&(identical(other.customerPhone, _this.customerPhone) || other.customerPhone == _this.customerPhone));
}


@override
int get hashCode {
  final _this = this as UpdateBookingParams;
  return Object.hash(runtimeType,_this.bookingId,_this.problemDescription,_this.customerPhone);
}

@override
String toString() {
  final _this = this as UpdateBookingParams;
  return 'UpdateBookingParams(bookingId: ${_this.bookingId}, problemDescription: ${_this.problemDescription}, customerPhone: ${_this.customerPhone})';
}


}

/// @nodoc
abstract mixin class $UpdateBookingParamsCopyWith<$Res>  {
  factory $UpdateBookingParamsCopyWith(UpdateBookingParams value, $Res Function(UpdateBookingParams) _then) = _$UpdateBookingParamsCopyWithImpl;
@useResult
$Res call({
 int bookingId, String problemDescription, String customerPhone
});




}
/// @nodoc
class _$UpdateBookingParamsCopyWithImpl<$Res>
    implements $UpdateBookingParamsCopyWith<$Res> {
  _$UpdateBookingParamsCopyWithImpl(this._self, this._then);

  final UpdateBookingParams _self;
  final $Res Function(UpdateBookingParams) _then;

/// Create a copy of UpdateBookingParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = null,Object? problemDescription = null,Object? customerPhone = null,}) {
  return _then(UpdateBookingParams(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,problemDescription: null == problemDescription ? _self.problemDescription : problemDescription // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateBookingParams].
extension UpdateBookingParamsPatterns on UpdateBookingParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateBookingParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateBookingParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateBookingParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateBookingParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateBookingParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateBookingParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bookingId,  String problemDescription,  String customerPhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateBookingParams() when $default != null:
return $default(_that.bookingId,_that.problemDescription,_that.customerPhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bookingId,  String problemDescription,  String customerPhone)  $default,) {final _that = this;
switch (_that) {
case _UpdateBookingParams():
return $default(_that.bookingId,_that.problemDescription,_that.customerPhone);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bookingId,  String problemDescription,  String customerPhone)?  $default,) {final _that = this;
switch (_that) {
case _UpdateBookingParams() when $default != null:
return $default(_that.bookingId,_that.problemDescription,_that.customerPhone);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateBookingParams extends UpdateBookingParams {
  const _UpdateBookingParams({required this.bookingId, required this.problemDescription, required this.customerPhone}): super._();
  

@override final  int bookingId;
@override final  String problemDescription;
@override final  String customerPhone;

/// Create a copy of UpdateBookingParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateBookingParamsCopyWith<_UpdateBookingParams> get copyWith => __$UpdateBookingParamsCopyWithImpl<_UpdateBookingParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateBookingParams&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.problemDescription, problemDescription) || other.problemDescription == problemDescription)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone));
}


@override
int get hashCode {
    return Object.hash(runtimeType,bookingId,problemDescription,customerPhone);
}

@override
String toString() {
    return 'UpdateBookingParams(bookingId: $bookingId, problemDescription: $problemDescription, customerPhone: $customerPhone)';
}


}

/// @nodoc
abstract mixin class _$UpdateBookingParamsCopyWith<$Res> implements $UpdateBookingParamsCopyWith<$Res> {
  factory _$UpdateBookingParamsCopyWith(_UpdateBookingParams value, $Res Function(_UpdateBookingParams) _then) = __$UpdateBookingParamsCopyWithImpl;
@override @useResult
$Res call({
 int bookingId, String problemDescription, String customerPhone
});




}
/// @nodoc
class __$UpdateBookingParamsCopyWithImpl<$Res>
    implements _$UpdateBookingParamsCopyWith<$Res> {
  __$UpdateBookingParamsCopyWithImpl(this._self, this._then);

  final _UpdateBookingParams _self;
  final $Res Function(_UpdateBookingParams) _then;

/// Create a copy of UpdateBookingParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = null,Object? problemDescription = null,Object? customerPhone = null,}) {
  return _then(_UpdateBookingParams(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,problemDescription: null == problemDescription ? _self.problemDescription : problemDescription // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AcceptRescheduleParams {

 int get bookingId;
/// Create a copy of AcceptRescheduleParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptRescheduleParamsCopyWith<AcceptRescheduleParams> get copyWith => _$AcceptRescheduleParamsCopyWithImpl<AcceptRescheduleParams>(this as AcceptRescheduleParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AcceptRescheduleParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptRescheduleParams&&(identical(other.bookingId, _this.bookingId) || other.bookingId == _this.bookingId));
}


@override
int get hashCode {
  final _this = this as AcceptRescheduleParams;
  return Object.hash(runtimeType,_this.bookingId);
}

@override
String toString() {
  final _this = this as AcceptRescheduleParams;
  return 'AcceptRescheduleParams(bookingId: ${_this.bookingId})';
}


}

/// @nodoc
abstract mixin class $AcceptRescheduleParamsCopyWith<$Res>  {
  factory $AcceptRescheduleParamsCopyWith(AcceptRescheduleParams value, $Res Function(AcceptRescheduleParams) _then) = _$AcceptRescheduleParamsCopyWithImpl;
@useResult
$Res call({
 int bookingId
});




}
/// @nodoc
class _$AcceptRescheduleParamsCopyWithImpl<$Res>
    implements $AcceptRescheduleParamsCopyWith<$Res> {
  _$AcceptRescheduleParamsCopyWithImpl(this._self, this._then);

  final AcceptRescheduleParams _self;
  final $Res Function(AcceptRescheduleParams) _then;

/// Create a copy of AcceptRescheduleParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = null,}) {
  return _then(AcceptRescheduleParams(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AcceptRescheduleParams].
extension AcceptRescheduleParamsPatterns on AcceptRescheduleParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptRescheduleParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptRescheduleParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptRescheduleParams value)  $default,){
final _that = this;
switch (_that) {
case _AcceptRescheduleParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptRescheduleParams value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptRescheduleParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bookingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcceptRescheduleParams() when $default != null:
return $default(_that.bookingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bookingId)  $default,) {final _that = this;
switch (_that) {
case _AcceptRescheduleParams():
return $default(_that.bookingId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bookingId)?  $default,) {final _that = this;
switch (_that) {
case _AcceptRescheduleParams() when $default != null:
return $default(_that.bookingId);case _:
  return null;

}
}

}

/// @nodoc


class _AcceptRescheduleParams extends AcceptRescheduleParams {
  const _AcceptRescheduleParams({required this.bookingId}): super._();
  

@override final  int bookingId;

/// Create a copy of AcceptRescheduleParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptRescheduleParamsCopyWith<_AcceptRescheduleParams> get copyWith => __$AcceptRescheduleParamsCopyWithImpl<_AcceptRescheduleParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptRescheduleParams&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,bookingId);
}

@override
String toString() {
    return 'AcceptRescheduleParams(bookingId: $bookingId)';
}


}

/// @nodoc
abstract mixin class _$AcceptRescheduleParamsCopyWith<$Res> implements $AcceptRescheduleParamsCopyWith<$Res> {
  factory _$AcceptRescheduleParamsCopyWith(_AcceptRescheduleParams value, $Res Function(_AcceptRescheduleParams) _then) = __$AcceptRescheduleParamsCopyWithImpl;
@override @useResult
$Res call({
 int bookingId
});




}
/// @nodoc
class __$AcceptRescheduleParamsCopyWithImpl<$Res>
    implements _$AcceptRescheduleParamsCopyWith<$Res> {
  __$AcceptRescheduleParamsCopyWithImpl(this._self, this._then);

  final _AcceptRescheduleParams _self;
  final $Res Function(_AcceptRescheduleParams) _then;

/// Create a copy of AcceptRescheduleParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = null,}) {
  return _then(_AcceptRescheduleParams(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ProposeRescheduleParams {

 int get bookingId; int get suggestedDayId; int get suggestedTimeId; String get rescheduleNote;
/// Create a copy of ProposeRescheduleParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProposeRescheduleParamsCopyWith<ProposeRescheduleParams> get copyWith => _$ProposeRescheduleParamsCopyWithImpl<ProposeRescheduleParams>(this as ProposeRescheduleParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProposeRescheduleParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProposeRescheduleParams&&(identical(other.bookingId, _this.bookingId) || other.bookingId == _this.bookingId)&&(identical(other.suggestedDayId, _this.suggestedDayId) || other.suggestedDayId == _this.suggestedDayId)&&(identical(other.suggestedTimeId, _this.suggestedTimeId) || other.suggestedTimeId == _this.suggestedTimeId)&&(identical(other.rescheduleNote, _this.rescheduleNote) || other.rescheduleNote == _this.rescheduleNote));
}


@override
int get hashCode {
  final _this = this as ProposeRescheduleParams;
  return Object.hash(runtimeType,_this.bookingId,_this.suggestedDayId,_this.suggestedTimeId,_this.rescheduleNote);
}

@override
String toString() {
  final _this = this as ProposeRescheduleParams;
  return 'ProposeRescheduleParams(bookingId: ${_this.bookingId}, suggestedDayId: ${_this.suggestedDayId}, suggestedTimeId: ${_this.suggestedTimeId}, rescheduleNote: ${_this.rescheduleNote})';
}


}

/// @nodoc
abstract mixin class $ProposeRescheduleParamsCopyWith<$Res>  {
  factory $ProposeRescheduleParamsCopyWith(ProposeRescheduleParams value, $Res Function(ProposeRescheduleParams) _then) = _$ProposeRescheduleParamsCopyWithImpl;
@useResult
$Res call({
 int bookingId, int suggestedDayId, int suggestedTimeId, String rescheduleNote
});




}
/// @nodoc
class _$ProposeRescheduleParamsCopyWithImpl<$Res>
    implements $ProposeRescheduleParamsCopyWith<$Res> {
  _$ProposeRescheduleParamsCopyWithImpl(this._self, this._then);

  final ProposeRescheduleParams _self;
  final $Res Function(ProposeRescheduleParams) _then;

/// Create a copy of ProposeRescheduleParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bookingId = null,Object? suggestedDayId = null,Object? suggestedTimeId = null,Object? rescheduleNote = null,}) {
  return _then(ProposeRescheduleParams(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,suggestedDayId: null == suggestedDayId ? _self.suggestedDayId : suggestedDayId // ignore: cast_nullable_to_non_nullable
as int,suggestedTimeId: null == suggestedTimeId ? _self.suggestedTimeId : suggestedTimeId // ignore: cast_nullable_to_non_nullable
as int,rescheduleNote: null == rescheduleNote ? _self.rescheduleNote : rescheduleNote // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProposeRescheduleParams].
extension ProposeRescheduleParamsPatterns on ProposeRescheduleParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProposeRescheduleParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProposeRescheduleParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProposeRescheduleParams value)  $default,){
final _that = this;
switch (_that) {
case _ProposeRescheduleParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProposeRescheduleParams value)?  $default,){
final _that = this;
switch (_that) {
case _ProposeRescheduleParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bookingId,  int suggestedDayId,  int suggestedTimeId,  String rescheduleNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProposeRescheduleParams() when $default != null:
return $default(_that.bookingId,_that.suggestedDayId,_that.suggestedTimeId,_that.rescheduleNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bookingId,  int suggestedDayId,  int suggestedTimeId,  String rescheduleNote)  $default,) {final _that = this;
switch (_that) {
case _ProposeRescheduleParams():
return $default(_that.bookingId,_that.suggestedDayId,_that.suggestedTimeId,_that.rescheduleNote);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bookingId,  int suggestedDayId,  int suggestedTimeId,  String rescheduleNote)?  $default,) {final _that = this;
switch (_that) {
case _ProposeRescheduleParams() when $default != null:
return $default(_that.bookingId,_that.suggestedDayId,_that.suggestedTimeId,_that.rescheduleNote);case _:
  return null;

}
}

}

/// @nodoc


class _ProposeRescheduleParams extends ProposeRescheduleParams {
  const _ProposeRescheduleParams({required this.bookingId, required this.suggestedDayId, required this.suggestedTimeId, required this.rescheduleNote}): super._();
  

@override final  int bookingId;
@override final  int suggestedDayId;
@override final  int suggestedTimeId;
@override final  String rescheduleNote;

/// Create a copy of ProposeRescheduleParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProposeRescheduleParamsCopyWith<_ProposeRescheduleParams> get copyWith => __$ProposeRescheduleParamsCopyWithImpl<_ProposeRescheduleParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProposeRescheduleParams&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.suggestedDayId, suggestedDayId) || other.suggestedDayId == suggestedDayId)&&(identical(other.suggestedTimeId, suggestedTimeId) || other.suggestedTimeId == suggestedTimeId)&&(identical(other.rescheduleNote, rescheduleNote) || other.rescheduleNote == rescheduleNote));
}


@override
int get hashCode {
    return Object.hash(runtimeType,bookingId,suggestedDayId,suggestedTimeId,rescheduleNote);
}

@override
String toString() {
    return 'ProposeRescheduleParams(bookingId: $bookingId, suggestedDayId: $suggestedDayId, suggestedTimeId: $suggestedTimeId, rescheduleNote: $rescheduleNote)';
}


}

/// @nodoc
abstract mixin class _$ProposeRescheduleParamsCopyWith<$Res> implements $ProposeRescheduleParamsCopyWith<$Res> {
  factory _$ProposeRescheduleParamsCopyWith(_ProposeRescheduleParams value, $Res Function(_ProposeRescheduleParams) _then) = __$ProposeRescheduleParamsCopyWithImpl;
@override @useResult
$Res call({
 int bookingId, int suggestedDayId, int suggestedTimeId, String rescheduleNote
});




}
/// @nodoc
class __$ProposeRescheduleParamsCopyWithImpl<$Res>
    implements _$ProposeRescheduleParamsCopyWith<$Res> {
  __$ProposeRescheduleParamsCopyWithImpl(this._self, this._then);

  final _ProposeRescheduleParams _self;
  final $Res Function(_ProposeRescheduleParams) _then;

/// Create a copy of ProposeRescheduleParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bookingId = null,Object? suggestedDayId = null,Object? suggestedTimeId = null,Object? rescheduleNote = null,}) {
  return _then(_ProposeRescheduleParams(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as int,suggestedDayId: null == suggestedDayId ? _self.suggestedDayId : suggestedDayId // ignore: cast_nullable_to_non_nullable
as int,suggestedTimeId: null == suggestedTimeId ? _self.suggestedTimeId : suggestedTimeId // ignore: cast_nullable_to_non_nullable
as int,rescheduleNote: null == rescheduleNote ? _self.rescheduleNote : rescheduleNote // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
