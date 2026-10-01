// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewModel {

 int get id; int get rating; String get comment;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewModelCopyWith<ReviewModel> get copyWith => _$ReviewModelCopyWithImpl<ReviewModel>(this as ReviewModel, _$identity);

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewModel;
  return Object.hash(runtimeType,_this.id,_this.rating,_this.comment,_this.createdAt);
}

@override
String toString() {
  final _this = this as ReviewModel;
  return 'ReviewModel(id: ${_this.id}, rating: ${_this.rating}, comment: ${_this.comment}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ReviewModelCopyWith<$Res>  {
  factory $ReviewModelCopyWith(ReviewModel value, $Res Function(ReviewModel) _then) = _$ReviewModelCopyWithImpl;
@useResult
$Res call({
 int id, int rating, String comment,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$ReviewModelCopyWithImpl<$Res>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._self, this._then);

  final ReviewModel _self;
  final $Res Function(ReviewModel) _then;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? createdAt = null,}) {
  return _then(ReviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewModel].
extension ReviewModelPatterns on ReviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int rating,  String comment, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int rating,  String comment, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ReviewModel():
return $default(_that.id,_that.rating,_that.comment,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int rating,  String comment, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewModel extends ReviewModel {
  const _ReviewModel({this.id = 0, this.rating = 0, this.comment = '', @JsonKey(name: 'created_at') this.createdAt = ''}): super._();
  factory _ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int rating;
@override@JsonKey() final  String comment;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewModelCopyWith<_ReviewModel> get copyWith => __$ReviewModelCopyWithImpl<_ReviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,rating,comment,createdAt);
}

@override
String toString() {
    return 'ReviewModel(id: $id, rating: $rating, comment: $comment, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReviewModelCopyWith<$Res> implements $ReviewModelCopyWith<$Res> {
  factory _$ReviewModelCopyWith(_ReviewModel value, $Res Function(_ReviewModel) _then) = __$ReviewModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int rating, String comment,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$ReviewModelCopyWithImpl<$Res>
    implements _$ReviewModelCopyWith<$Res> {
  __$ReviewModelCopyWithImpl(this._self, this._then);

  final _ReviewModel _self;
  final $Res Function(_ReviewModel) _then;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rating = null,Object? comment = null,Object? createdAt = null,}) {
  return _then(_ReviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
