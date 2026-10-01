// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {

 AppStatus get status; AppStatus get actionStatus; AppStatus get addressStatus; AppStatus get governorateStatus; AppStatus get centerStatus; UserEntity? get user; List<AddressEntity> get addresses; List<GovernorateEntity> get governorates; List<CenterEntity> get centers; String? get errorMessage; String? get actionError; String? get addressError; String? get governorateError; String? get centerError;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProfileState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.actionStatus, _this.actionStatus) || other.actionStatus == _this.actionStatus)&&(identical(other.addressStatus, _this.addressStatus) || other.addressStatus == _this.addressStatus)&&(identical(other.governorateStatus, _this.governorateStatus) || other.governorateStatus == _this.governorateStatus)&&(identical(other.centerStatus, _this.centerStatus) || other.centerStatus == _this.centerStatus)&&(identical(other.user, _this.user) || other.user == _this.user)&&const DeepCollectionEquality().equals(other.addresses, _this.addresses)&&const DeepCollectionEquality().equals(other.governorates, _this.governorates)&&const DeepCollectionEquality().equals(other.centers, _this.centers)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.actionError, _this.actionError) || other.actionError == _this.actionError)&&(identical(other.addressError, _this.addressError) || other.addressError == _this.addressError)&&(identical(other.governorateError, _this.governorateError) || other.governorateError == _this.governorateError)&&(identical(other.centerError, _this.centerError) || other.centerError == _this.centerError));
}


@override
int get hashCode {
  final _this = this as ProfileState;
  return Object.hash(runtimeType,_this.status,_this.actionStatus,_this.addressStatus,_this.governorateStatus,_this.centerStatus,_this.user,const DeepCollectionEquality().hash(_this.addresses),const DeepCollectionEquality().hash(_this.governorates),const DeepCollectionEquality().hash(_this.centers),_this.errorMessage,_this.actionError,_this.addressError,_this.governorateError,_this.centerError);
}

@override
String toString() {
  final _this = this as ProfileState;
  return 'ProfileState(status: ${_this.status}, actionStatus: ${_this.actionStatus}, addressStatus: ${_this.addressStatus}, governorateStatus: ${_this.governorateStatus}, centerStatus: ${_this.centerStatus}, user: ${_this.user}, addresses: ${_this.addresses}, governorates: ${_this.governorates}, centers: ${_this.centers}, errorMessage: ${_this.errorMessage}, actionError: ${_this.actionError}, addressError: ${_this.addressError}, governorateError: ${_this.governorateError}, centerError: ${_this.centerError})';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 AppStatus status, AppStatus actionStatus, AppStatus addressStatus, AppStatus governorateStatus, AppStatus centerStatus, UserEntity? user, List<AddressEntity> addresses, List<GovernorateEntity> governorates, List<CenterEntity> centers, String? errorMessage, String? actionError, String? addressError, String? governorateError, String? centerError
});


$UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? actionStatus = null,Object? addressStatus = null,Object? governorateStatus = null,Object? centerStatus = null,Object? user = freezed,Object? addresses = null,Object? governorates = null,Object? centers = null,Object? errorMessage = freezed,Object? actionError = freezed,Object? addressError = freezed,Object? governorateError = freezed,Object? centerError = freezed,}) {
  return _then(ProfileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,addressStatus: null == addressStatus ? _self.addressStatus : addressStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,governorateStatus: null == governorateStatus ? _self.governorateStatus : governorateStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,centerStatus: null == centerStatus ? _self.centerStatus : centerStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressEntity>,governorates: null == governorates ? _self.governorates : governorates // ignore: cast_nullable_to_non_nullable
as List<GovernorateEntity>,centers: null == centers ? _self.centers : centers // ignore: cast_nullable_to_non_nullable
as List<CenterEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,actionError: freezed == actionError ? _self.actionError : actionError // ignore: cast_nullable_to_non_nullable
as String?,addressError: freezed == addressError ? _self.addressError : addressError // ignore: cast_nullable_to_non_nullable
as String?,governorateError: freezed == governorateError ? _self.governorateError : governorateError // ignore: cast_nullable_to_non_nullable
as String?,centerError: freezed == centerError ? _self.centerError : centerError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProfileState
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


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppStatus status,  AppStatus actionStatus,  AppStatus addressStatus,  AppStatus governorateStatus,  AppStatus centerStatus,  UserEntity? user,  List<AddressEntity> addresses,  List<GovernorateEntity> governorates,  List<CenterEntity> centers,  String? errorMessage,  String? actionError,  String? addressError,  String? governorateError,  String? centerError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.status,_that.actionStatus,_that.addressStatus,_that.governorateStatus,_that.centerStatus,_that.user,_that.addresses,_that.governorates,_that.centers,_that.errorMessage,_that.actionError,_that.addressError,_that.governorateError,_that.centerError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppStatus status,  AppStatus actionStatus,  AppStatus addressStatus,  AppStatus governorateStatus,  AppStatus centerStatus,  UserEntity? user,  List<AddressEntity> addresses,  List<GovernorateEntity> governorates,  List<CenterEntity> centers,  String? errorMessage,  String? actionError,  String? addressError,  String? governorateError,  String? centerError)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.status,_that.actionStatus,_that.addressStatus,_that.governorateStatus,_that.centerStatus,_that.user,_that.addresses,_that.governorates,_that.centers,_that.errorMessage,_that.actionError,_that.addressError,_that.governorateError,_that.centerError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppStatus status,  AppStatus actionStatus,  AppStatus addressStatus,  AppStatus governorateStatus,  AppStatus centerStatus,  UserEntity? user,  List<AddressEntity> addresses,  List<GovernorateEntity> governorates,  List<CenterEntity> centers,  String? errorMessage,  String? actionError,  String? addressError,  String? governorateError,  String? centerError)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.status,_that.actionStatus,_that.addressStatus,_that.governorateStatus,_that.centerStatus,_that.user,_that.addresses,_that.governorates,_that.centers,_that.errorMessage,_that.actionError,_that.addressError,_that.governorateError,_that.centerError);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({this.status = AppStatus.initial, this.actionStatus = AppStatus.initial, this.addressStatus = AppStatus.initial, this.governorateStatus = AppStatus.initial, this.centerStatus = AppStatus.initial, this.user,  List<AddressEntity> addresses = const [],  List<GovernorateEntity> governorates = const [],  List<CenterEntity> centers = const [], this.errorMessage, this.actionError, this.addressError, this.governorateError, this.centerError}): _addresses = addresses,_governorates = governorates,_centers = centers;
  

@override@JsonKey() final  AppStatus status;
@override@JsonKey() final  AppStatus actionStatus;
@override@JsonKey() final  AppStatus addressStatus;
@override@JsonKey() final  AppStatus governorateStatus;
@override@JsonKey() final  AppStatus centerStatus;
@override final  UserEntity? user;
 final  List<AddressEntity> _addresses;
@override@JsonKey() List<AddressEntity> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

 final  List<GovernorateEntity> _governorates;
@override@JsonKey() List<GovernorateEntity> get governorates {
  if (_governorates is EqualUnmodifiableListView) return _governorates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_governorates);
}

 final  List<CenterEntity> _centers;
@override@JsonKey() List<CenterEntity> get centers {
  if (_centers is EqualUnmodifiableListView) return _centers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_centers);
}

@override final  String? errorMessage;
@override final  String? actionError;
@override final  String? addressError;
@override final  String? governorateError;
@override final  String? centerError;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.addressStatus, addressStatus) || other.addressStatus == addressStatus)&&(identical(other.governorateStatus, governorateStatus) || other.governorateStatus == governorateStatus)&&(identical(other.centerStatus, centerStatus) || other.centerStatus == centerStatus)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.addresses, _addresses)&&const DeepCollectionEquality().equals(other.governorates, _governorates)&&const DeepCollectionEquality().equals(other.centers, _centers)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.actionError, actionError) || other.actionError == actionError)&&(identical(other.addressError, addressError) || other.addressError == addressError)&&(identical(other.governorateError, governorateError) || other.governorateError == governorateError)&&(identical(other.centerError, centerError) || other.centerError == centerError));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,actionStatus,addressStatus,governorateStatus,centerStatus,user,const DeepCollectionEquality().hash(_addresses),const DeepCollectionEquality().hash(_governorates),const DeepCollectionEquality().hash(_centers),errorMessage,actionError,addressError,governorateError,centerError);
}

@override
String toString() {
    return 'ProfileState(status: $status, actionStatus: $actionStatus, addressStatus: $addressStatus, governorateStatus: $governorateStatus, centerStatus: $centerStatus, user: $user, addresses: $addresses, governorates: $governorates, centers: $centers, errorMessage: $errorMessage, actionError: $actionError, addressError: $addressError, governorateError: $governorateError, centerError: $centerError)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 AppStatus status, AppStatus actionStatus, AppStatus addressStatus, AppStatus governorateStatus, AppStatus centerStatus, UserEntity? user, List<AddressEntity> addresses, List<GovernorateEntity> governorates, List<CenterEntity> centers, String? errorMessage, String? actionError, String? addressError, String? governorateError, String? centerError
});


@override $UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? actionStatus = null,Object? addressStatus = null,Object? governorateStatus = null,Object? centerStatus = null,Object? user = freezed,Object? addresses = null,Object? governorates = null,Object? centers = null,Object? errorMessage = freezed,Object? actionError = freezed,Object? addressError = freezed,Object? governorateError = freezed,Object? centerError = freezed,}) {
  return _then(_ProfileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AppStatus,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,addressStatus: null == addressStatus ? _self.addressStatus : addressStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,governorateStatus: null == governorateStatus ? _self.governorateStatus : governorateStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,centerStatus: null == centerStatus ? _self.centerStatus : centerStatus // ignore: cast_nullable_to_non_nullable
as AppStatus,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressEntity>,governorates: null == governorates ? _self._governorates : governorates // ignore: cast_nullable_to_non_nullable
as List<GovernorateEntity>,centers: null == centers ? _self._centers : centers // ignore: cast_nullable_to_non_nullable
as List<CenterEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,actionError: freezed == actionError ? _self.actionError : actionError // ignore: cast_nullable_to_non_nullable
as String?,addressError: freezed == addressError ? _self.addressError : addressError // ignore: cast_nullable_to_non_nullable
as String?,governorateError: freezed == governorateError ? _self.governorateError : governorateError // ignore: cast_nullable_to_non_nullable
as String?,centerError: freezed == centerError ? _self.centerError : centerError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProfileState
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
