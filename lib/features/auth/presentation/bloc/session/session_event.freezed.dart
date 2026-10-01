// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionEvent()';
}


}

/// @nodoc
class $SessionEventCopyWith<$Res>  {
$SessionEventCopyWith(SessionEvent _, $Res Function(SessionEvent) __);
}


/// Adds pattern-matching-related methods to [SessionEvent].
extension SessionEventPatterns on SessionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SessionLoginRequested value)?  loginRequested,TResult Function( SessionCheckRequested value)?  checkRequested,TResult Function( SessionLogoutRequested value)?  logoutRequested,TResult Function( SessionUserUpdated value)?  userUpdated,TResult Function( SessionConnectivityRestored value)?  connectivityRestored,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SessionLoginRequested() when loginRequested != null:
return loginRequested(_that);case SessionCheckRequested() when checkRequested != null:
return checkRequested(_that);case SessionLogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case SessionUserUpdated() when userUpdated != null:
return userUpdated(_that);case SessionConnectivityRestored() when connectivityRestored != null:
return connectivityRestored(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SessionLoginRequested value)  loginRequested,required TResult Function( SessionCheckRequested value)  checkRequested,required TResult Function( SessionLogoutRequested value)  logoutRequested,required TResult Function( SessionUserUpdated value)  userUpdated,required TResult Function( SessionConnectivityRestored value)  connectivityRestored,}){
final _that = this;
switch (_that) {
case SessionLoginRequested():
return loginRequested(_that);case SessionCheckRequested():
return checkRequested(_that);case SessionLogoutRequested():
return logoutRequested(_that);case SessionUserUpdated():
return userUpdated(_that);case SessionConnectivityRestored():
return connectivityRestored(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SessionLoginRequested value)?  loginRequested,TResult? Function( SessionCheckRequested value)?  checkRequested,TResult? Function( SessionLogoutRequested value)?  logoutRequested,TResult? Function( SessionUserUpdated value)?  userUpdated,TResult? Function( SessionConnectivityRestored value)?  connectivityRestored,}){
final _that = this;
switch (_that) {
case SessionLoginRequested() when loginRequested != null:
return loginRequested(_that);case SessionCheckRequested() when checkRequested != null:
return checkRequested(_that);case SessionLogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case SessionUserUpdated() when userUpdated != null:
return userUpdated(_that);case SessionConnectivityRestored() when connectivityRestored != null:
return connectivityRestored(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  loginRequested,TResult Function()?  checkRequested,TResult Function()?  logoutRequested,TResult Function( UserEntity user)?  userUpdated,TResult Function()?  connectivityRestored,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SessionLoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case SessionCheckRequested() when checkRequested != null:
return checkRequested();case SessionLogoutRequested() when logoutRequested != null:
return logoutRequested();case SessionUserUpdated() when userUpdated != null:
return userUpdated(_that.user);case SessionConnectivityRestored() when connectivityRestored != null:
return connectivityRestored();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  loginRequested,required TResult Function()  checkRequested,required TResult Function()  logoutRequested,required TResult Function( UserEntity user)  userUpdated,required TResult Function()  connectivityRestored,}) {final _that = this;
switch (_that) {
case SessionLoginRequested():
return loginRequested(_that.email,_that.password);case SessionCheckRequested():
return checkRequested();case SessionLogoutRequested():
return logoutRequested();case SessionUserUpdated():
return userUpdated(_that.user);case SessionConnectivityRestored():
return connectivityRestored();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  loginRequested,TResult? Function()?  checkRequested,TResult? Function()?  logoutRequested,TResult? Function( UserEntity user)?  userUpdated,TResult? Function()?  connectivityRestored,}) {final _that = this;
switch (_that) {
case SessionLoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case SessionCheckRequested() when checkRequested != null:
return checkRequested();case SessionLogoutRequested() when logoutRequested != null:
return logoutRequested();case SessionUserUpdated() when userUpdated != null:
return userUpdated(_that.user);case SessionConnectivityRestored() when connectivityRestored != null:
return connectivityRestored();case _:
  return null;

}
}

}

/// @nodoc


class SessionLoginRequested implements SessionEvent {
  const SessionLoginRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionLoginRequestedCopyWith<SessionLoginRequested> get copyWith => _$SessionLoginRequestedCopyWithImpl<SessionLoginRequested>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionLoginRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,password);
}

@override
String toString() {
    return 'SessionEvent.loginRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SessionLoginRequestedCopyWith<$Res> implements $SessionEventCopyWith<$Res> {
  factory $SessionLoginRequestedCopyWith(SessionLoginRequested value, $Res Function(SessionLoginRequested) _then) = _$SessionLoginRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$SessionLoginRequestedCopyWithImpl<$Res>
    implements $SessionLoginRequestedCopyWith<$Res> {
  _$SessionLoginRequestedCopyWithImpl(this._self, this._then);

  final SessionLoginRequested _self;
  final $Res Function(SessionLoginRequested) _then;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(SessionLoginRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SessionCheckRequested implements SessionEvent {
  const SessionCheckRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionCheckRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionEvent.checkRequested()';
}


}




/// @nodoc


class SessionLogoutRequested implements SessionEvent {
  const SessionLogoutRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionLogoutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionEvent.logoutRequested()';
}


}




/// @nodoc


class SessionUserUpdated implements SessionEvent {
  const SessionUserUpdated(this.user);
  

 final  UserEntity user;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionUserUpdatedCopyWith<SessionUserUpdated> get copyWith => _$SessionUserUpdatedCopyWithImpl<SessionUserUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionUserUpdated&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'SessionEvent.userUpdated(user: $user)';
}


}

/// @nodoc
abstract mixin class $SessionUserUpdatedCopyWith<$Res> implements $SessionEventCopyWith<$Res> {
  factory $SessionUserUpdatedCopyWith(SessionUserUpdated value, $Res Function(SessionUserUpdated) _then) = _$SessionUserUpdatedCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$SessionUserUpdatedCopyWithImpl<$Res>
    implements $SessionUserUpdatedCopyWith<$Res> {
  _$SessionUserUpdatedCopyWithImpl(this._self, this._then);

  final SessionUserUpdated _self;
  final $Res Function(SessionUserUpdated) _then;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SessionUserUpdated(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class SessionConnectivityRestored implements SessionEvent {
  const SessionConnectivityRestored();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionConnectivityRestored);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionEvent.connectivityRestored()';
}


}




// dart format on
