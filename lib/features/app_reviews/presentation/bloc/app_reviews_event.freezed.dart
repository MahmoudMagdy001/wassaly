// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_reviews_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppReviewsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AppReviewsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppReviewsEvent()';
}


}

/// @nodoc
class $AppReviewsEventCopyWith<$Res>  {
$AppReviewsEventCopyWith(AppReviewsEvent _, $Res Function(AppReviewsEvent) __);
}


/// Adds pattern-matching-related methods to [AppReviewsEvent].
extension AppReviewsEventPatterns on AppReviewsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetAppReviewsEvent value)?  getAppReviews,TResult Function( AddAppReviewEvent value)?  addAppReview,TResult Function( UpdateAppReviewEvent value)?  updateAppReview,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetAppReviewsEvent() when getAppReviews != null:
return getAppReviews(_that);case AddAppReviewEvent() when addAppReview != null:
return addAppReview(_that);case UpdateAppReviewEvent() when updateAppReview != null:
return updateAppReview(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetAppReviewsEvent value)  getAppReviews,required TResult Function( AddAppReviewEvent value)  addAppReview,required TResult Function( UpdateAppReviewEvent value)  updateAppReview,}){
final _that = this;
switch (_that) {
case GetAppReviewsEvent():
return getAppReviews(_that);case AddAppReviewEvent():
return addAppReview(_that);case UpdateAppReviewEvent():
return updateAppReview(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetAppReviewsEvent value)?  getAppReviews,TResult? Function( AddAppReviewEvent value)?  addAppReview,TResult? Function( UpdateAppReviewEvent value)?  updateAppReview,}){
final _that = this;
switch (_that) {
case GetAppReviewsEvent() when getAppReviews != null:
return getAppReviews(_that);case AddAppReviewEvent() when addAppReview != null:
return addAppReview(_that);case UpdateAppReviewEvent() when updateAppReview != null:
return updateAppReview(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getAppReviews,TResult Function( int rating,  String comment)?  addAppReview,TResult Function( int reviewId,  int rating,  String comment)?  updateAppReview,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetAppReviewsEvent() when getAppReviews != null:
return getAppReviews();case AddAppReviewEvent() when addAppReview != null:
return addAppReview(_that.rating,_that.comment);case UpdateAppReviewEvent() when updateAppReview != null:
return updateAppReview(_that.reviewId,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getAppReviews,required TResult Function( int rating,  String comment)  addAppReview,required TResult Function( int reviewId,  int rating,  String comment)  updateAppReview,}) {final _that = this;
switch (_that) {
case GetAppReviewsEvent():
return getAppReviews();case AddAppReviewEvent():
return addAppReview(_that.rating,_that.comment);case UpdateAppReviewEvent():
return updateAppReview(_that.reviewId,_that.rating,_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getAppReviews,TResult? Function( int rating,  String comment)?  addAppReview,TResult? Function( int reviewId,  int rating,  String comment)?  updateAppReview,}) {final _that = this;
switch (_that) {
case GetAppReviewsEvent() when getAppReviews != null:
return getAppReviews();case AddAppReviewEvent() when addAppReview != null:
return addAppReview(_that.rating,_that.comment);case UpdateAppReviewEvent() when updateAppReview != null:
return updateAppReview(_that.reviewId,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class GetAppReviewsEvent implements AppReviewsEvent {
  const GetAppReviewsEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAppReviewsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppReviewsEvent.getAppReviews()';
}


}




/// @nodoc


class AddAppReviewEvent implements AppReviewsEvent {
  const AddAppReviewEvent({required this.rating, required this.comment});
  

 final  int rating;
 final  String comment;

/// Create a copy of AppReviewsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddAppReviewEventCopyWith<AddAppReviewEvent> get copyWith => _$AddAppReviewEventCopyWithImpl<AddAppReviewEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAppReviewEvent&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,rating,comment);
}

@override
String toString() {
    return 'AppReviewsEvent.addAppReview(rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $AddAppReviewEventCopyWith<$Res> implements $AppReviewsEventCopyWith<$Res> {
  factory $AddAppReviewEventCopyWith(AddAppReviewEvent value, $Res Function(AddAppReviewEvent) _then) = _$AddAppReviewEventCopyWithImpl;
@useResult
$Res call({
 int rating, String comment
});




}
/// @nodoc
class _$AddAppReviewEventCopyWithImpl<$Res>
    implements $AddAppReviewEventCopyWith<$Res> {
  _$AddAppReviewEventCopyWithImpl(this._self, this._then);

  final AddAppReviewEvent _self;
  final $Res Function(AddAppReviewEvent) _then;

/// Create a copy of AppReviewsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rating = null,Object? comment = null,}) {
  return _then(AddAppReviewEvent(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateAppReviewEvent implements AppReviewsEvent {
  const UpdateAppReviewEvent({required this.reviewId, required this.rating, required this.comment});
  

 final  int reviewId;
 final  int rating;
 final  String comment;

/// Create a copy of AppReviewsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAppReviewEventCopyWith<UpdateAppReviewEvent> get copyWith => _$UpdateAppReviewEventCopyWithImpl<UpdateAppReviewEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAppReviewEvent&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reviewId,rating,comment);
}

@override
String toString() {
    return 'AppReviewsEvent.updateAppReview(reviewId: $reviewId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $UpdateAppReviewEventCopyWith<$Res> implements $AppReviewsEventCopyWith<$Res> {
  factory $UpdateAppReviewEventCopyWith(UpdateAppReviewEvent value, $Res Function(UpdateAppReviewEvent) _then) = _$UpdateAppReviewEventCopyWithImpl;
@useResult
$Res call({
 int reviewId, int rating, String comment
});




}
/// @nodoc
class _$UpdateAppReviewEventCopyWithImpl<$Res>
    implements $UpdateAppReviewEventCopyWith<$Res> {
  _$UpdateAppReviewEventCopyWithImpl(this._self, this._then);

  final UpdateAppReviewEvent _self;
  final $Res Function(UpdateAppReviewEvent) _then;

/// Create a copy of AppReviewsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reviewId = null,Object? rating = null,Object? comment = null,}) {
  return _then(UpdateAppReviewEvent(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
