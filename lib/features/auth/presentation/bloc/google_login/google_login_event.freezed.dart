// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GoogleLoginEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleLoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GoogleLoginEvent()';
}


}

/// @nodoc
class $GoogleLoginEventCopyWith<$Res>  {
$GoogleLoginEventCopyWith(GoogleLoginEvent _, $Res Function(GoogleLoginEvent) __);
}


/// Adds pattern-matching-related methods to [GoogleLoginEvent].
extension GoogleLoginEventPatterns on GoogleLoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GoogleLoginStarted value)?  started,TResult Function( GoogleLoginCallbackReceived value)?  callbackReceived,TResult Function( GoogleLoginCancelled value)?  cancelled,TResult Function( GoogleLoginDeepLinkError value)?  deepLinkError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GoogleLoginStarted() when started != null:
return started(_that);case GoogleLoginCallbackReceived() when callbackReceived != null:
return callbackReceived(_that);case GoogleLoginCancelled() when cancelled != null:
return cancelled(_that);case GoogleLoginDeepLinkError() when deepLinkError != null:
return deepLinkError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GoogleLoginStarted value)  started,required TResult Function( GoogleLoginCallbackReceived value)  callbackReceived,required TResult Function( GoogleLoginCancelled value)  cancelled,required TResult Function( GoogleLoginDeepLinkError value)  deepLinkError,}){
final _that = this;
switch (_that) {
case GoogleLoginStarted():
return started(_that);case GoogleLoginCallbackReceived():
return callbackReceived(_that);case GoogleLoginCancelled():
return cancelled(_that);case GoogleLoginDeepLinkError():
return deepLinkError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GoogleLoginStarted value)?  started,TResult? Function( GoogleLoginCallbackReceived value)?  callbackReceived,TResult? Function( GoogleLoginCancelled value)?  cancelled,TResult? Function( GoogleLoginDeepLinkError value)?  deepLinkError,}){
final _that = this;
switch (_that) {
case GoogleLoginStarted() when started != null:
return started(_that);case GoogleLoginCallbackReceived() when callbackReceived != null:
return callbackReceived(_that);case GoogleLoginCancelled() when cancelled != null:
return cancelled(_that);case GoogleLoginDeepLinkError() when deepLinkError != null:
return deepLinkError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( GoogleLoginCallbackData callbackData)?  callbackReceived,TResult Function()?  cancelled,TResult Function( String error)?  deepLinkError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GoogleLoginStarted() when started != null:
return started();case GoogleLoginCallbackReceived() when callbackReceived != null:
return callbackReceived(_that.callbackData);case GoogleLoginCancelled() when cancelled != null:
return cancelled();case GoogleLoginDeepLinkError() when deepLinkError != null:
return deepLinkError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( GoogleLoginCallbackData callbackData)  callbackReceived,required TResult Function()  cancelled,required TResult Function( String error)  deepLinkError,}) {final _that = this;
switch (_that) {
case GoogleLoginStarted():
return started();case GoogleLoginCallbackReceived():
return callbackReceived(_that.callbackData);case GoogleLoginCancelled():
return cancelled();case GoogleLoginDeepLinkError():
return deepLinkError(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( GoogleLoginCallbackData callbackData)?  callbackReceived,TResult? Function()?  cancelled,TResult? Function( String error)?  deepLinkError,}) {final _that = this;
switch (_that) {
case GoogleLoginStarted() when started != null:
return started();case GoogleLoginCallbackReceived() when callbackReceived != null:
return callbackReceived(_that.callbackData);case GoogleLoginCancelled() when cancelled != null:
return cancelled();case GoogleLoginDeepLinkError() when deepLinkError != null:
return deepLinkError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class GoogleLoginStarted implements GoogleLoginEvent {
  const GoogleLoginStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleLoginStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GoogleLoginEvent.started()';
}


}




/// @nodoc


class GoogleLoginCallbackReceived implements GoogleLoginEvent {
  const GoogleLoginCallbackReceived(this.callbackData);
  

 final  GoogleLoginCallbackData callbackData;

/// Create a copy of GoogleLoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleLoginCallbackReceivedCopyWith<GoogleLoginCallbackReceived> get copyWith => _$GoogleLoginCallbackReceivedCopyWithImpl<GoogleLoginCallbackReceived>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleLoginCallbackReceived&&(identical(other.callbackData, callbackData) || other.callbackData == callbackData));
}


@override
int get hashCode {
    return Object.hash(runtimeType,callbackData);
}

@override
String toString() {
    return 'GoogleLoginEvent.callbackReceived(callbackData: $callbackData)';
}


}

/// @nodoc
abstract mixin class $GoogleLoginCallbackReceivedCopyWith<$Res> implements $GoogleLoginEventCopyWith<$Res> {
  factory $GoogleLoginCallbackReceivedCopyWith(GoogleLoginCallbackReceived value, $Res Function(GoogleLoginCallbackReceived) _then) = _$GoogleLoginCallbackReceivedCopyWithImpl;
@useResult
$Res call({
 GoogleLoginCallbackData callbackData
});




}
/// @nodoc
class _$GoogleLoginCallbackReceivedCopyWithImpl<$Res>
    implements $GoogleLoginCallbackReceivedCopyWith<$Res> {
  _$GoogleLoginCallbackReceivedCopyWithImpl(this._self, this._then);

  final GoogleLoginCallbackReceived _self;
  final $Res Function(GoogleLoginCallbackReceived) _then;

/// Create a copy of GoogleLoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? callbackData = null,}) {
  return _then(GoogleLoginCallbackReceived(
null == callbackData ? _self.callbackData : callbackData // ignore: cast_nullable_to_non_nullable
as GoogleLoginCallbackData,
  ));
}


}

/// @nodoc


class GoogleLoginCancelled implements GoogleLoginEvent {
  const GoogleLoginCancelled();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleLoginCancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GoogleLoginEvent.cancelled()';
}


}




/// @nodoc


class GoogleLoginDeepLinkError implements GoogleLoginEvent {
  const GoogleLoginDeepLinkError(this.error);
  

 final  String error;

/// Create a copy of GoogleLoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleLoginDeepLinkErrorCopyWith<GoogleLoginDeepLinkError> get copyWith => _$GoogleLoginDeepLinkErrorCopyWithImpl<GoogleLoginDeepLinkError>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleLoginDeepLinkError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,error);
}

@override
String toString() {
    return 'GoogleLoginEvent.deepLinkError(error: $error)';
}


}

/// @nodoc
abstract mixin class $GoogleLoginDeepLinkErrorCopyWith<$Res> implements $GoogleLoginEventCopyWith<$Res> {
  factory $GoogleLoginDeepLinkErrorCopyWith(GoogleLoginDeepLinkError value, $Res Function(GoogleLoginDeepLinkError) _then) = _$GoogleLoginDeepLinkErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$GoogleLoginDeepLinkErrorCopyWithImpl<$Res>
    implements $GoogleLoginDeepLinkErrorCopyWith<$Res> {
  _$GoogleLoginDeepLinkErrorCopyWithImpl(this._self, this._then);

  final GoogleLoginDeepLinkError _self;
  final $Res Function(GoogleLoginDeepLinkError) _then;

/// Create a copy of GoogleLoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GoogleLoginDeepLinkError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
