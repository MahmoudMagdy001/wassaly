// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GoogleLoginState {

 bool get isLoading; String? get errorMessage; UserEntity? get user;
/// Create a copy of GoogleLoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleLoginStateCopyWith<GoogleLoginState> get copyWith => _$GoogleLoginStateCopyWithImpl<GoogleLoginState>(this as GoogleLoginState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GoogleLoginState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleLoginState&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as GoogleLoginState;
  return Object.hash(runtimeType,_this.isLoading,_this.errorMessage,_this.user);
}

@override
String toString() {
  final _this = this as GoogleLoginState;
  return 'GoogleLoginState(isLoading: ${_this.isLoading}, errorMessage: ${_this.errorMessage}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $GoogleLoginStateCopyWith<$Res>  {
  factory $GoogleLoginStateCopyWith(GoogleLoginState value, $Res Function(GoogleLoginState) _then) = _$GoogleLoginStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, UserEntity? user
});


$UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class _$GoogleLoginStateCopyWithImpl<$Res>
    implements $GoogleLoginStateCopyWith<$Res> {
  _$GoogleLoginStateCopyWithImpl(this._self, this._then);

  final GoogleLoginState _self;
  final $Res Function(GoogleLoginState) _then;

/// Create a copy of GoogleLoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? user = freezed,}) {
  return _then(GoogleLoginState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,
  ));
}
/// Create a copy of GoogleLoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [GoogleLoginState].
extension GoogleLoginStatePatterns on GoogleLoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleLoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleLoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleLoginState value)  $default,){
final _that = this;
switch (_that) {
case _GoogleLoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleLoginState value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleLoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  UserEntity? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleLoginState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  UserEntity? user)  $default,) {final _that = this;
switch (_that) {
case _GoogleLoginState():
return $default(_that.isLoading,_that.errorMessage,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? errorMessage,  UserEntity? user)?  $default,) {final _that = this;
switch (_that) {
case _GoogleLoginState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _GoogleLoginState implements GoogleLoginState {
  const _GoogleLoginState({this.isLoading = false, this.errorMessage, this.user});
  

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override final  UserEntity? user;

/// Create a copy of GoogleLoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleLoginStateCopyWith<_GoogleLoginState> get copyWith => __$GoogleLoginStateCopyWithImpl<_GoogleLoginState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleLoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isLoading,errorMessage,user);
}

@override
String toString() {
    return 'GoogleLoginState(isLoading: $isLoading, errorMessage: $errorMessage, user: $user)';
}


}

/// @nodoc
abstract mixin class _$GoogleLoginStateCopyWith<$Res> implements $GoogleLoginStateCopyWith<$Res> {
  factory _$GoogleLoginStateCopyWith(_GoogleLoginState value, $Res Function(_GoogleLoginState) _then) = __$GoogleLoginStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, UserEntity? user
});


@override $UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class __$GoogleLoginStateCopyWithImpl<$Res>
    implements _$GoogleLoginStateCopyWith<$Res> {
  __$GoogleLoginStateCopyWithImpl(this._self, this._then);

  final _GoogleLoginState _self;
  final $Res Function(_GoogleLoginState) _then;

/// Create a copy of GoogleLoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? user = freezed,}) {
  return _then(_GoogleLoginState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,
  ));
}

/// Create a copy of GoogleLoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
