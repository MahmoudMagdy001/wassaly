// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProviderDetailsState {

 AppStatus get status; ProviderDetailEntity? get provider; String get errorMessage;
/// Create a copy of ProviderDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderDetailsStateCopyWith<ProviderDetailsState> get copyWith => _$ProviderDetailsStateCopyWithImpl<ProviderDetailsState>(this as ProviderDetailsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProviderDetailsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProviderDetailsState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.provider, _this.provider) || other.provider == _this.provider)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as ProviderDetailsState;
  return Object.hash(runtimeType,_this.status,_this.provider,_this.errorMessage);
}

@override
String toString() {
  final _this = this as ProviderDetailsState;
  return 'ProviderDetailsState(status: ${_this.status}, provider: ${_this.provider}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $ProviderDetailsStateCopyWith<$Res>  {
  factory $ProviderDetailsStateCopyWith(ProviderDetailsState value, $Res Function(ProviderDetailsState) _then) = _$ProviderDetailsStateCopyWithImpl;
@useResult
$Res call({
 AppStatus status, ProviderDetailEntity? provider, String errorMessage
});


$ProviderDetailEntityCopyWith<$Res>? get provider;

}
/// @nodoc
class _$ProviderDetailsStateCopyWithImpl<$Res>
    implements $ProviderDetailsStateCopyWith<$Res> {
  _$ProviderDetailsStateCopyWithImpl(this._self, this._then);

  final ProviderDetailsState _self;
  final $Res Function(ProviderDetailsState) _then;

/// Create a copy of ProviderDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? provider = freezed,Object? errorMessage = null,}) {
  return _then(ProviderDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ProviderDetailEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProviderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProviderDetailEntityCopyWith<$Res>? get provider {
    if (_self.provider == null) {
    return null;
  }

  return $ProviderDetailEntityCopyWith<$Res>(_self.provider!, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProviderDetailsState].
extension ProviderDetailsStatePatterns on ProviderDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProviderDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProviderDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProviderDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _ProviderDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProviderDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _ProviderDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppStatus status,  ProviderDetailEntity? provider,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProviderDetailsState() when $default != null:
return $default(_that.status,_that.provider,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppStatus status,  ProviderDetailEntity? provider,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ProviderDetailsState():
return $default(_that.status,_that.provider,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppStatus status,  ProviderDetailEntity? provider,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ProviderDetailsState() when $default != null:
return $default(_that.status,_that.provider,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProviderDetailsState implements ProviderDetailsState {
  const _ProviderDetailsState({this.status = AppStatus.initial, this.provider, this.errorMessage = ''});
  

@override@JsonKey() final  AppStatus status;
@override final  ProviderDetailEntity? provider;
@override@JsonKey() final  String errorMessage;

/// Create a copy of ProviderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProviderDetailsStateCopyWith<_ProviderDetailsState> get copyWith => __$ProviderDetailsStateCopyWithImpl<_ProviderDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProviderDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,provider,errorMessage);
}

@override
String toString() {
    return 'ProviderDetailsState(status: $status, provider: $provider, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ProviderDetailsStateCopyWith<$Res> implements $ProviderDetailsStateCopyWith<$Res> {
  factory _$ProviderDetailsStateCopyWith(_ProviderDetailsState value, $Res Function(_ProviderDetailsState) _then) = __$ProviderDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 AppStatus status, ProviderDetailEntity? provider, String errorMessage
});


@override $ProviderDetailEntityCopyWith<$Res>? get provider;

}
/// @nodoc
class __$ProviderDetailsStateCopyWithImpl<$Res>
    implements _$ProviderDetailsStateCopyWith<$Res> {
  __$ProviderDetailsStateCopyWithImpl(this._self, this._then);

  final _ProviderDetailsState _self;
  final $Res Function(_ProviderDetailsState) _then;

/// Create a copy of ProviderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? provider = freezed,Object? errorMessage = null,}) {
  return _then(_ProviderDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as ProviderDetailEntity?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProviderDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProviderDetailEntityCopyWith<$Res>? get provider {
    if (_self.provider == null) {
    return null;
  }

  return $ProviderDetailEntityCopyWith<$Res>(_self.provider!, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}

// dart format on
