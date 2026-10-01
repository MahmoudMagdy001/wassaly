// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServiceDetailsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ServiceDetailsEvent()';
}


}

/// @nodoc
class $ServiceDetailsEventCopyWith<$Res>  {
$ServiceDetailsEventCopyWith(ServiceDetailsEvent _, $Res Function(ServiceDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [ServiceDetailsEvent].
extension ServiceDetailsEventPatterns on ServiceDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchServiceDetailsEvent value)?  fetchServiceDetails,TResult Function( ToggleServiceFavoriteEvent value)?  toggleServiceFavorite,TResult Function( CreateServiceReviewEvent value)?  createServiceReview,TResult Function( UpdateServiceReviewEvent value)?  updateServiceReview,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchServiceDetailsEvent() when fetchServiceDetails != null:
return fetchServiceDetails(_that);case ToggleServiceFavoriteEvent() when toggleServiceFavorite != null:
return toggleServiceFavorite(_that);case CreateServiceReviewEvent() when createServiceReview != null:
return createServiceReview(_that);case UpdateServiceReviewEvent() when updateServiceReview != null:
return updateServiceReview(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchServiceDetailsEvent value)  fetchServiceDetails,required TResult Function( ToggleServiceFavoriteEvent value)  toggleServiceFavorite,required TResult Function( CreateServiceReviewEvent value)  createServiceReview,required TResult Function( UpdateServiceReviewEvent value)  updateServiceReview,}){
final _that = this;
switch (_that) {
case FetchServiceDetailsEvent():
return fetchServiceDetails(_that);case ToggleServiceFavoriteEvent():
return toggleServiceFavorite(_that);case CreateServiceReviewEvent():
return createServiceReview(_that);case UpdateServiceReviewEvent():
return updateServiceReview(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchServiceDetailsEvent value)?  fetchServiceDetails,TResult? Function( ToggleServiceFavoriteEvent value)?  toggleServiceFavorite,TResult? Function( CreateServiceReviewEvent value)?  createServiceReview,TResult? Function( UpdateServiceReviewEvent value)?  updateServiceReview,}){
final _that = this;
switch (_that) {
case FetchServiceDetailsEvent() when fetchServiceDetails != null:
return fetchServiceDetails(_that);case ToggleServiceFavoriteEvent() when toggleServiceFavorite != null:
return toggleServiceFavorite(_that);case CreateServiceReviewEvent() when createServiceReview != null:
return createServiceReview(_that);case UpdateServiceReviewEvent() when updateServiceReview != null:
return updateServiceReview(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int serviceId)?  fetchServiceDetails,TResult Function( int serviceId)?  toggleServiceFavorite,TResult Function( int serviceId,  int rating,  String comment)?  createServiceReview,TResult Function( int reviewId,  int rating,  String comment)?  updateServiceReview,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchServiceDetailsEvent() when fetchServiceDetails != null:
return fetchServiceDetails(_that.serviceId);case ToggleServiceFavoriteEvent() when toggleServiceFavorite != null:
return toggleServiceFavorite(_that.serviceId);case CreateServiceReviewEvent() when createServiceReview != null:
return createServiceReview(_that.serviceId,_that.rating,_that.comment);case UpdateServiceReviewEvent() when updateServiceReview != null:
return updateServiceReview(_that.reviewId,_that.rating,_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int serviceId)  fetchServiceDetails,required TResult Function( int serviceId)  toggleServiceFavorite,required TResult Function( int serviceId,  int rating,  String comment)  createServiceReview,required TResult Function( int reviewId,  int rating,  String comment)  updateServiceReview,}) {final _that = this;
switch (_that) {
case FetchServiceDetailsEvent():
return fetchServiceDetails(_that.serviceId);case ToggleServiceFavoriteEvent():
return toggleServiceFavorite(_that.serviceId);case CreateServiceReviewEvent():
return createServiceReview(_that.serviceId,_that.rating,_that.comment);case UpdateServiceReviewEvent():
return updateServiceReview(_that.reviewId,_that.rating,_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int serviceId)?  fetchServiceDetails,TResult? Function( int serviceId)?  toggleServiceFavorite,TResult? Function( int serviceId,  int rating,  String comment)?  createServiceReview,TResult? Function( int reviewId,  int rating,  String comment)?  updateServiceReview,}) {final _that = this;
switch (_that) {
case FetchServiceDetailsEvent() when fetchServiceDetails != null:
return fetchServiceDetails(_that.serviceId);case ToggleServiceFavoriteEvent() when toggleServiceFavorite != null:
return toggleServiceFavorite(_that.serviceId);case CreateServiceReviewEvent() when createServiceReview != null:
return createServiceReview(_that.serviceId,_that.rating,_that.comment);case UpdateServiceReviewEvent() when updateServiceReview != null:
return updateServiceReview(_that.reviewId,_that.rating,_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class FetchServiceDetailsEvent implements ServiceDetailsEvent {
  const FetchServiceDetailsEvent(this.serviceId);
  

 final  int serviceId;

/// Create a copy of ServiceDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchServiceDetailsEventCopyWith<FetchServiceDetailsEvent> get copyWith => _$FetchServiceDetailsEventCopyWithImpl<FetchServiceDetailsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchServiceDetailsEvent&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,serviceId);
}

@override
String toString() {
    return 'ServiceDetailsEvent.fetchServiceDetails(serviceId: $serviceId)';
}


}

/// @nodoc
abstract mixin class $FetchServiceDetailsEventCopyWith<$Res> implements $ServiceDetailsEventCopyWith<$Res> {
  factory $FetchServiceDetailsEventCopyWith(FetchServiceDetailsEvent value, $Res Function(FetchServiceDetailsEvent) _then) = _$FetchServiceDetailsEventCopyWithImpl;
@useResult
$Res call({
 int serviceId
});




}
/// @nodoc
class _$FetchServiceDetailsEventCopyWithImpl<$Res>
    implements $FetchServiceDetailsEventCopyWith<$Res> {
  _$FetchServiceDetailsEventCopyWithImpl(this._self, this._then);

  final FetchServiceDetailsEvent _self;
  final $Res Function(FetchServiceDetailsEvent) _then;

/// Create a copy of ServiceDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceId = null,}) {
  return _then(FetchServiceDetailsEvent(
null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ToggleServiceFavoriteEvent implements ServiceDetailsEvent {
  const ToggleServiceFavoriteEvent(this.serviceId);
  

 final  int serviceId;

/// Create a copy of ServiceDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleServiceFavoriteEventCopyWith<ToggleServiceFavoriteEvent> get copyWith => _$ToggleServiceFavoriteEventCopyWithImpl<ToggleServiceFavoriteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleServiceFavoriteEvent&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,serviceId);
}

@override
String toString() {
    return 'ServiceDetailsEvent.toggleServiceFavorite(serviceId: $serviceId)';
}


}

/// @nodoc
abstract mixin class $ToggleServiceFavoriteEventCopyWith<$Res> implements $ServiceDetailsEventCopyWith<$Res> {
  factory $ToggleServiceFavoriteEventCopyWith(ToggleServiceFavoriteEvent value, $Res Function(ToggleServiceFavoriteEvent) _then) = _$ToggleServiceFavoriteEventCopyWithImpl;
@useResult
$Res call({
 int serviceId
});




}
/// @nodoc
class _$ToggleServiceFavoriteEventCopyWithImpl<$Res>
    implements $ToggleServiceFavoriteEventCopyWith<$Res> {
  _$ToggleServiceFavoriteEventCopyWithImpl(this._self, this._then);

  final ToggleServiceFavoriteEvent _self;
  final $Res Function(ToggleServiceFavoriteEvent) _then;

/// Create a copy of ServiceDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceId = null,}) {
  return _then(ToggleServiceFavoriteEvent(
null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateServiceReviewEvent implements ServiceDetailsEvent {
  const CreateServiceReviewEvent({required this.serviceId, required this.rating, required this.comment});
  

 final  int serviceId;
 final  int rating;
 final  String comment;

/// Create a copy of ServiceDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateServiceReviewEventCopyWith<CreateServiceReviewEvent> get copyWith => _$CreateServiceReviewEventCopyWithImpl<CreateServiceReviewEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateServiceReviewEvent&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,serviceId,rating,comment);
}

@override
String toString() {
    return 'ServiceDetailsEvent.createServiceReview(serviceId: $serviceId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $CreateServiceReviewEventCopyWith<$Res> implements $ServiceDetailsEventCopyWith<$Res> {
  factory $CreateServiceReviewEventCopyWith(CreateServiceReviewEvent value, $Res Function(CreateServiceReviewEvent) _then) = _$CreateServiceReviewEventCopyWithImpl;
@useResult
$Res call({
 int serviceId, int rating, String comment
});




}
/// @nodoc
class _$CreateServiceReviewEventCopyWithImpl<$Res>
    implements $CreateServiceReviewEventCopyWith<$Res> {
  _$CreateServiceReviewEventCopyWithImpl(this._self, this._then);

  final CreateServiceReviewEvent _self;
  final $Res Function(CreateServiceReviewEvent) _then;

/// Create a copy of ServiceDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? rating = null,Object? comment = null,}) {
  return _then(CreateServiceReviewEvent(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateServiceReviewEvent implements ServiceDetailsEvent {
  const UpdateServiceReviewEvent({required this.reviewId, required this.rating, required this.comment});
  

 final  int reviewId;
 final  int rating;
 final  String comment;

/// Create a copy of ServiceDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateServiceReviewEventCopyWith<UpdateServiceReviewEvent> get copyWith => _$UpdateServiceReviewEventCopyWithImpl<UpdateServiceReviewEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateServiceReviewEvent&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reviewId,rating,comment);
}

@override
String toString() {
    return 'ServiceDetailsEvent.updateServiceReview(reviewId: $reviewId, rating: $rating, comment: $comment)';
}


}

/// @nodoc
abstract mixin class $UpdateServiceReviewEventCopyWith<$Res> implements $ServiceDetailsEventCopyWith<$Res> {
  factory $UpdateServiceReviewEventCopyWith(UpdateServiceReviewEvent value, $Res Function(UpdateServiceReviewEvent) _then) = _$UpdateServiceReviewEventCopyWithImpl;
@useResult
$Res call({
 int reviewId, int rating, String comment
});




}
/// @nodoc
class _$UpdateServiceReviewEventCopyWithImpl<$Res>
    implements $UpdateServiceReviewEventCopyWith<$Res> {
  _$UpdateServiceReviewEventCopyWithImpl(this._self, this._then);

  final UpdateServiceReviewEvent _self;
  final $Res Function(UpdateServiceReviewEvent) _then;

/// Create a copy of ServiceDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reviewId = null,Object? rating = null,Object? comment = null,}) {
  return _then(UpdateServiceReviewEvent(
reviewId: null == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
