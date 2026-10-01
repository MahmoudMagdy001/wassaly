// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServiceBookingState {

 ServiceBookingStatus get status; ServiceDetailEntity? get service; ServiceAvailableDayEntity? get selectedDay; ServiceAvailableTimeEntity? get selectedTime; String get customerName; String get customerPhone; String get customerEmail; String get problemDescription; List<GovernorateEntity> get governorates; List<CenterEntity> get centers; List<AddressEntity> get addresses; AddressEntity? get selectedAddress; String? get selectedGovernorateId; String? get selectedCenterId; bool get isLoadingGovernorates; bool get isLoadingCenters; bool get isLoadingAddresses; BookingEntity? get booking; String? get errorMessage; String? get nameError; String? get phoneError; String? get emailError; String? get dayError; String? get timeError; String? get governorateError; String? get centerError;
/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceBookingStateCopyWith<ServiceBookingState> get copyWith => _$ServiceBookingStateCopyWithImpl<ServiceBookingState>(this as ServiceBookingState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ServiceBookingState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.service, _this.service) || other.service == _this.service)&&(identical(other.selectedDay, _this.selectedDay) || other.selectedDay == _this.selectedDay)&&(identical(other.selectedTime, _this.selectedTime) || other.selectedTime == _this.selectedTime)&&(identical(other.customerName, _this.customerName) || other.customerName == _this.customerName)&&(identical(other.customerPhone, _this.customerPhone) || other.customerPhone == _this.customerPhone)&&(identical(other.customerEmail, _this.customerEmail) || other.customerEmail == _this.customerEmail)&&(identical(other.problemDescription, _this.problemDescription) || other.problemDescription == _this.problemDescription)&&const DeepCollectionEquality().equals(other.governorates, _this.governorates)&&const DeepCollectionEquality().equals(other.centers, _this.centers)&&const DeepCollectionEquality().equals(other.addresses, _this.addresses)&&(identical(other.selectedAddress, _this.selectedAddress) || other.selectedAddress == _this.selectedAddress)&&(identical(other.selectedGovernorateId, _this.selectedGovernorateId) || other.selectedGovernorateId == _this.selectedGovernorateId)&&(identical(other.selectedCenterId, _this.selectedCenterId) || other.selectedCenterId == _this.selectedCenterId)&&(identical(other.isLoadingGovernorates, _this.isLoadingGovernorates) || other.isLoadingGovernorates == _this.isLoadingGovernorates)&&(identical(other.isLoadingCenters, _this.isLoadingCenters) || other.isLoadingCenters == _this.isLoadingCenters)&&(identical(other.isLoadingAddresses, _this.isLoadingAddresses) || other.isLoadingAddresses == _this.isLoadingAddresses)&&(identical(other.booking, _this.booking) || other.booking == _this.booking)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.nameError, _this.nameError) || other.nameError == _this.nameError)&&(identical(other.phoneError, _this.phoneError) || other.phoneError == _this.phoneError)&&(identical(other.emailError, _this.emailError) || other.emailError == _this.emailError)&&(identical(other.dayError, _this.dayError) || other.dayError == _this.dayError)&&(identical(other.timeError, _this.timeError) || other.timeError == _this.timeError)&&(identical(other.governorateError, _this.governorateError) || other.governorateError == _this.governorateError)&&(identical(other.centerError, _this.centerError) || other.centerError == _this.centerError));
}


@override
int get hashCode {
  final _this = this as ServiceBookingState;
  return Object.hashAll([runtimeType,_this.status,_this.service,_this.selectedDay,_this.selectedTime,_this.customerName,_this.customerPhone,_this.customerEmail,_this.problemDescription,const DeepCollectionEquality().hash(_this.governorates),const DeepCollectionEquality().hash(_this.centers),const DeepCollectionEquality().hash(_this.addresses),_this.selectedAddress,_this.selectedGovernorateId,_this.selectedCenterId,_this.isLoadingGovernorates,_this.isLoadingCenters,_this.isLoadingAddresses,_this.booking,_this.errorMessage,_this.nameError,_this.phoneError,_this.emailError,_this.dayError,_this.timeError,_this.governorateError,_this.centerError]);
}

@override
String toString() {
  final _this = this as ServiceBookingState;
  return 'ServiceBookingState(status: ${_this.status}, service: ${_this.service}, selectedDay: ${_this.selectedDay}, selectedTime: ${_this.selectedTime}, customerName: ${_this.customerName}, customerPhone: ${_this.customerPhone}, customerEmail: ${_this.customerEmail}, problemDescription: ${_this.problemDescription}, governorates: ${_this.governorates}, centers: ${_this.centers}, addresses: ${_this.addresses}, selectedAddress: ${_this.selectedAddress}, selectedGovernorateId: ${_this.selectedGovernorateId}, selectedCenterId: ${_this.selectedCenterId}, isLoadingGovernorates: ${_this.isLoadingGovernorates}, isLoadingCenters: ${_this.isLoadingCenters}, isLoadingAddresses: ${_this.isLoadingAddresses}, booking: ${_this.booking}, errorMessage: ${_this.errorMessage}, nameError: ${_this.nameError}, phoneError: ${_this.phoneError}, emailError: ${_this.emailError}, dayError: ${_this.dayError}, timeError: ${_this.timeError}, governorateError: ${_this.governorateError}, centerError: ${_this.centerError})';
}


}

/// @nodoc
abstract mixin class $ServiceBookingStateCopyWith<$Res>  {
  factory $ServiceBookingStateCopyWith(ServiceBookingState value, $Res Function(ServiceBookingState) _then) = _$ServiceBookingStateCopyWithImpl;
@useResult
$Res call({
 ServiceBookingStatus status, ServiceDetailEntity? service, ServiceAvailableDayEntity? selectedDay, ServiceAvailableTimeEntity? selectedTime, String customerName, String customerPhone, String customerEmail, String problemDescription, List<GovernorateEntity> governorates, List<CenterEntity> centers, List<AddressEntity> addresses, AddressEntity? selectedAddress, String? selectedGovernorateId, String? selectedCenterId, bool isLoadingGovernorates, bool isLoadingCenters, bool isLoadingAddresses, BookingEntity? booking, String? errorMessage, String? nameError, String? phoneError, String? emailError, String? dayError, String? timeError, String? governorateError, String? centerError
});


$ServiceDetailEntityCopyWith<$Res>? get service;$ServiceAvailableDayEntityCopyWith<$Res>? get selectedDay;$ServiceAvailableTimeEntityCopyWith<$Res>? get selectedTime;$AddressEntityCopyWith<$Res>? get selectedAddress;$BookingEntityCopyWith<$Res>? get booking;

}
/// @nodoc
class _$ServiceBookingStateCopyWithImpl<$Res>
    implements $ServiceBookingStateCopyWith<$Res> {
  _$ServiceBookingStateCopyWithImpl(this._self, this._then);

  final ServiceBookingState _self;
  final $Res Function(ServiceBookingState) _then;

/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? service = freezed,Object? selectedDay = freezed,Object? selectedTime = freezed,Object? customerName = null,Object? customerPhone = null,Object? customerEmail = null,Object? problemDescription = null,Object? governorates = null,Object? centers = null,Object? addresses = null,Object? selectedAddress = freezed,Object? selectedGovernorateId = freezed,Object? selectedCenterId = freezed,Object? isLoadingGovernorates = null,Object? isLoadingCenters = null,Object? isLoadingAddresses = null,Object? booking = freezed,Object? errorMessage = freezed,Object? nameError = freezed,Object? phoneError = freezed,Object? emailError = freezed,Object? dayError = freezed,Object? timeError = freezed,Object? governorateError = freezed,Object? centerError = freezed,}) {
  return _then(ServiceBookingState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServiceBookingStatus,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceDetailEntity?,selectedDay: freezed == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as ServiceAvailableDayEntity?,selectedTime: freezed == selectedTime ? _self.selectedTime : selectedTime // ignore: cast_nullable_to_non_nullable
as ServiceAvailableTimeEntity?,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerEmail: null == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String,problemDescription: null == problemDescription ? _self.problemDescription : problemDescription // ignore: cast_nullable_to_non_nullable
as String,governorates: null == governorates ? _self.governorates : governorates // ignore: cast_nullable_to_non_nullable
as List<GovernorateEntity>,centers: null == centers ? _self.centers : centers // ignore: cast_nullable_to_non_nullable
as List<CenterEntity>,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressEntity>,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressEntity?,selectedGovernorateId: freezed == selectedGovernorateId ? _self.selectedGovernorateId : selectedGovernorateId // ignore: cast_nullable_to_non_nullable
as String?,selectedCenterId: freezed == selectedCenterId ? _self.selectedCenterId : selectedCenterId // ignore: cast_nullable_to_non_nullable
as String?,isLoadingGovernorates: null == isLoadingGovernorates ? _self.isLoadingGovernorates : isLoadingGovernorates // ignore: cast_nullable_to_non_nullable
as bool,isLoadingCenters: null == isLoadingCenters ? _self.isLoadingCenters : isLoadingCenters // ignore: cast_nullable_to_non_nullable
as bool,isLoadingAddresses: null == isLoadingAddresses ? _self.isLoadingAddresses : isLoadingAddresses // ignore: cast_nullable_to_non_nullable
as bool,booking: freezed == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as BookingEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,nameError: freezed == nameError ? _self.nameError : nameError // ignore: cast_nullable_to_non_nullable
as String?,phoneError: freezed == phoneError ? _self.phoneError : phoneError // ignore: cast_nullable_to_non_nullable
as String?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String?,dayError: freezed == dayError ? _self.dayError : dayError // ignore: cast_nullable_to_non_nullable
as String?,timeError: freezed == timeError ? _self.timeError : timeError // ignore: cast_nullable_to_non_nullable
as String?,governorateError: freezed == governorateError ? _self.governorateError : governorateError // ignore: cast_nullable_to_non_nullable
as String?,centerError: freezed == centerError ? _self.centerError : centerError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceDetailEntityCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceDetailEntityCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceAvailableDayEntityCopyWith<$Res>? get selectedDay {
    if (_self.selectedDay == null) {
    return null;
  }

  return $ServiceAvailableDayEntityCopyWith<$Res>(_self.selectedDay!, (value) {
    return _then(_self.copyWith(selectedDay: value));
  });
}/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceAvailableTimeEntityCopyWith<$Res>? get selectedTime {
    if (_self.selectedTime == null) {
    return null;
  }

  return $ServiceAvailableTimeEntityCopyWith<$Res>(_self.selectedTime!, (value) {
    return _then(_self.copyWith(selectedTime: value));
  });
}/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressEntityCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
    return null;
  }

  return $AddressEntityCopyWith<$Res>(_self.selectedAddress!, (value) {
    return _then(_self.copyWith(selectedAddress: value));
  });
}/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingEntityCopyWith<$Res>? get booking {
    if (_self.booking == null) {
    return null;
  }

  return $BookingEntityCopyWith<$Res>(_self.booking!, (value) {
    return _then(_self.copyWith(booking: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServiceBookingState].
extension ServiceBookingStatePatterns on ServiceBookingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceBookingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceBookingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceBookingState value)  $default,){
final _that = this;
switch (_that) {
case _ServiceBookingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceBookingState value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceBookingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ServiceBookingStatus status,  ServiceDetailEntity? service,  ServiceAvailableDayEntity? selectedDay,  ServiceAvailableTimeEntity? selectedTime,  String customerName,  String customerPhone,  String customerEmail,  String problemDescription,  List<GovernorateEntity> governorates,  List<CenterEntity> centers,  List<AddressEntity> addresses,  AddressEntity? selectedAddress,  String? selectedGovernorateId,  String? selectedCenterId,  bool isLoadingGovernorates,  bool isLoadingCenters,  bool isLoadingAddresses,  BookingEntity? booking,  String? errorMessage,  String? nameError,  String? phoneError,  String? emailError,  String? dayError,  String? timeError,  String? governorateError,  String? centerError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceBookingState() when $default != null:
return $default(_that.status,_that.service,_that.selectedDay,_that.selectedTime,_that.customerName,_that.customerPhone,_that.customerEmail,_that.problemDescription,_that.governorates,_that.centers,_that.addresses,_that.selectedAddress,_that.selectedGovernorateId,_that.selectedCenterId,_that.isLoadingGovernorates,_that.isLoadingCenters,_that.isLoadingAddresses,_that.booking,_that.errorMessage,_that.nameError,_that.phoneError,_that.emailError,_that.dayError,_that.timeError,_that.governorateError,_that.centerError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ServiceBookingStatus status,  ServiceDetailEntity? service,  ServiceAvailableDayEntity? selectedDay,  ServiceAvailableTimeEntity? selectedTime,  String customerName,  String customerPhone,  String customerEmail,  String problemDescription,  List<GovernorateEntity> governorates,  List<CenterEntity> centers,  List<AddressEntity> addresses,  AddressEntity? selectedAddress,  String? selectedGovernorateId,  String? selectedCenterId,  bool isLoadingGovernorates,  bool isLoadingCenters,  bool isLoadingAddresses,  BookingEntity? booking,  String? errorMessage,  String? nameError,  String? phoneError,  String? emailError,  String? dayError,  String? timeError,  String? governorateError,  String? centerError)  $default,) {final _that = this;
switch (_that) {
case _ServiceBookingState():
return $default(_that.status,_that.service,_that.selectedDay,_that.selectedTime,_that.customerName,_that.customerPhone,_that.customerEmail,_that.problemDescription,_that.governorates,_that.centers,_that.addresses,_that.selectedAddress,_that.selectedGovernorateId,_that.selectedCenterId,_that.isLoadingGovernorates,_that.isLoadingCenters,_that.isLoadingAddresses,_that.booking,_that.errorMessage,_that.nameError,_that.phoneError,_that.emailError,_that.dayError,_that.timeError,_that.governorateError,_that.centerError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ServiceBookingStatus status,  ServiceDetailEntity? service,  ServiceAvailableDayEntity? selectedDay,  ServiceAvailableTimeEntity? selectedTime,  String customerName,  String customerPhone,  String customerEmail,  String problemDescription,  List<GovernorateEntity> governorates,  List<CenterEntity> centers,  List<AddressEntity> addresses,  AddressEntity? selectedAddress,  String? selectedGovernorateId,  String? selectedCenterId,  bool isLoadingGovernorates,  bool isLoadingCenters,  bool isLoadingAddresses,  BookingEntity? booking,  String? errorMessage,  String? nameError,  String? phoneError,  String? emailError,  String? dayError,  String? timeError,  String? governorateError,  String? centerError)?  $default,) {final _that = this;
switch (_that) {
case _ServiceBookingState() when $default != null:
return $default(_that.status,_that.service,_that.selectedDay,_that.selectedTime,_that.customerName,_that.customerPhone,_that.customerEmail,_that.problemDescription,_that.governorates,_that.centers,_that.addresses,_that.selectedAddress,_that.selectedGovernorateId,_that.selectedCenterId,_that.isLoadingGovernorates,_that.isLoadingCenters,_that.isLoadingAddresses,_that.booking,_that.errorMessage,_that.nameError,_that.phoneError,_that.emailError,_that.dayError,_that.timeError,_that.governorateError,_that.centerError);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceBookingState extends ServiceBookingState {
  const _ServiceBookingState({this.status = ServiceBookingStatus.initial, this.service, this.selectedDay, this.selectedTime, this.customerName = '', this.customerPhone = '', this.customerEmail = '', this.problemDescription = '',  List<GovernorateEntity> governorates = const [],  List<CenterEntity> centers = const [],  List<AddressEntity> addresses = const [], this.selectedAddress, this.selectedGovernorateId, this.selectedCenterId, this.isLoadingGovernorates = false, this.isLoadingCenters = false, this.isLoadingAddresses = false, this.booking, this.errorMessage, this.nameError, this.phoneError, this.emailError, this.dayError, this.timeError, this.governorateError, this.centerError}): _governorates = governorates,_centers = centers,_addresses = addresses,super._();
  

@override@JsonKey() final  ServiceBookingStatus status;
@override final  ServiceDetailEntity? service;
@override final  ServiceAvailableDayEntity? selectedDay;
@override final  ServiceAvailableTimeEntity? selectedTime;
@override@JsonKey() final  String customerName;
@override@JsonKey() final  String customerPhone;
@override@JsonKey() final  String customerEmail;
@override@JsonKey() final  String problemDescription;
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

 final  List<AddressEntity> _addresses;
@override@JsonKey() List<AddressEntity> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override final  AddressEntity? selectedAddress;
@override final  String? selectedGovernorateId;
@override final  String? selectedCenterId;
@override@JsonKey() final  bool isLoadingGovernorates;
@override@JsonKey() final  bool isLoadingCenters;
@override@JsonKey() final  bool isLoadingAddresses;
@override final  BookingEntity? booking;
@override final  String? errorMessage;
@override final  String? nameError;
@override final  String? phoneError;
@override final  String? emailError;
@override final  String? dayError;
@override final  String? timeError;
@override final  String? governorateError;
@override final  String? centerError;

/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceBookingStateCopyWith<_ServiceBookingState> get copyWith => __$ServiceBookingStateCopyWithImpl<_ServiceBookingState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceBookingState&&(identical(other.status, status) || other.status == status)&&(identical(other.service, service) || other.service == service)&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay)&&(identical(other.selectedTime, selectedTime) || other.selectedTime == selectedTime)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail)&&(identical(other.problemDescription, problemDescription) || other.problemDescription == problemDescription)&&const DeepCollectionEquality().equals(other.governorates, _governorates)&&const DeepCollectionEquality().equals(other.centers, _centers)&&const DeepCollectionEquality().equals(other.addresses, _addresses)&&(identical(other.selectedAddress, selectedAddress) || other.selectedAddress == selectedAddress)&&(identical(other.selectedGovernorateId, selectedGovernorateId) || other.selectedGovernorateId == selectedGovernorateId)&&(identical(other.selectedCenterId, selectedCenterId) || other.selectedCenterId == selectedCenterId)&&(identical(other.isLoadingGovernorates, isLoadingGovernorates) || other.isLoadingGovernorates == isLoadingGovernorates)&&(identical(other.isLoadingCenters, isLoadingCenters) || other.isLoadingCenters == isLoadingCenters)&&(identical(other.isLoadingAddresses, isLoadingAddresses) || other.isLoadingAddresses == isLoadingAddresses)&&(identical(other.booking, booking) || other.booking == booking)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.nameError, nameError) || other.nameError == nameError)&&(identical(other.phoneError, phoneError) || other.phoneError == phoneError)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.dayError, dayError) || other.dayError == dayError)&&(identical(other.timeError, timeError) || other.timeError == timeError)&&(identical(other.governorateError, governorateError) || other.governorateError == governorateError)&&(identical(other.centerError, centerError) || other.centerError == centerError));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,status,service,selectedDay,selectedTime,customerName,customerPhone,customerEmail,problemDescription,const DeepCollectionEquality().hash(_governorates),const DeepCollectionEquality().hash(_centers),const DeepCollectionEquality().hash(_addresses),selectedAddress,selectedGovernorateId,selectedCenterId,isLoadingGovernorates,isLoadingCenters,isLoadingAddresses,booking,errorMessage,nameError,phoneError,emailError,dayError,timeError,governorateError,centerError]);
}

@override
String toString() {
    return 'ServiceBookingState(status: $status, service: $service, selectedDay: $selectedDay, selectedTime: $selectedTime, customerName: $customerName, customerPhone: $customerPhone, customerEmail: $customerEmail, problemDescription: $problemDescription, governorates: $governorates, centers: $centers, addresses: $addresses, selectedAddress: $selectedAddress, selectedGovernorateId: $selectedGovernorateId, selectedCenterId: $selectedCenterId, isLoadingGovernorates: $isLoadingGovernorates, isLoadingCenters: $isLoadingCenters, isLoadingAddresses: $isLoadingAddresses, booking: $booking, errorMessage: $errorMessage, nameError: $nameError, phoneError: $phoneError, emailError: $emailError, dayError: $dayError, timeError: $timeError, governorateError: $governorateError, centerError: $centerError)';
}


}

/// @nodoc
abstract mixin class _$ServiceBookingStateCopyWith<$Res> implements $ServiceBookingStateCopyWith<$Res> {
  factory _$ServiceBookingStateCopyWith(_ServiceBookingState value, $Res Function(_ServiceBookingState) _then) = __$ServiceBookingStateCopyWithImpl;
@override @useResult
$Res call({
 ServiceBookingStatus status, ServiceDetailEntity? service, ServiceAvailableDayEntity? selectedDay, ServiceAvailableTimeEntity? selectedTime, String customerName, String customerPhone, String customerEmail, String problemDescription, List<GovernorateEntity> governorates, List<CenterEntity> centers, List<AddressEntity> addresses, AddressEntity? selectedAddress, String? selectedGovernorateId, String? selectedCenterId, bool isLoadingGovernorates, bool isLoadingCenters, bool isLoadingAddresses, BookingEntity? booking, String? errorMessage, String? nameError, String? phoneError, String? emailError, String? dayError, String? timeError, String? governorateError, String? centerError
});


@override $ServiceDetailEntityCopyWith<$Res>? get service;@override $ServiceAvailableDayEntityCopyWith<$Res>? get selectedDay;@override $ServiceAvailableTimeEntityCopyWith<$Res>? get selectedTime;@override $AddressEntityCopyWith<$Res>? get selectedAddress;@override $BookingEntityCopyWith<$Res>? get booking;

}
/// @nodoc
class __$ServiceBookingStateCopyWithImpl<$Res>
    implements _$ServiceBookingStateCopyWith<$Res> {
  __$ServiceBookingStateCopyWithImpl(this._self, this._then);

  final _ServiceBookingState _self;
  final $Res Function(_ServiceBookingState) _then;

/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? service = freezed,Object? selectedDay = freezed,Object? selectedTime = freezed,Object? customerName = null,Object? customerPhone = null,Object? customerEmail = null,Object? problemDescription = null,Object? governorates = null,Object? centers = null,Object? addresses = null,Object? selectedAddress = freezed,Object? selectedGovernorateId = freezed,Object? selectedCenterId = freezed,Object? isLoadingGovernorates = null,Object? isLoadingCenters = null,Object? isLoadingAddresses = null,Object? booking = freezed,Object? errorMessage = freezed,Object? nameError = freezed,Object? phoneError = freezed,Object? emailError = freezed,Object? dayError = freezed,Object? timeError = freezed,Object? governorateError = freezed,Object? centerError = freezed,}) {
  return _then(_ServiceBookingState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ServiceBookingStatus,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceDetailEntity?,selectedDay: freezed == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as ServiceAvailableDayEntity?,selectedTime: freezed == selectedTime ? _self.selectedTime : selectedTime // ignore: cast_nullable_to_non_nullable
as ServiceAvailableTimeEntity?,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: null == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String,customerEmail: null == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String,problemDescription: null == problemDescription ? _self.problemDescription : problemDescription // ignore: cast_nullable_to_non_nullable
as String,governorates: null == governorates ? _self._governorates : governorates // ignore: cast_nullable_to_non_nullable
as List<GovernorateEntity>,centers: null == centers ? _self._centers : centers // ignore: cast_nullable_to_non_nullable
as List<CenterEntity>,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressEntity>,selectedAddress: freezed == selectedAddress ? _self.selectedAddress : selectedAddress // ignore: cast_nullable_to_non_nullable
as AddressEntity?,selectedGovernorateId: freezed == selectedGovernorateId ? _self.selectedGovernorateId : selectedGovernorateId // ignore: cast_nullable_to_non_nullable
as String?,selectedCenterId: freezed == selectedCenterId ? _self.selectedCenterId : selectedCenterId // ignore: cast_nullable_to_non_nullable
as String?,isLoadingGovernorates: null == isLoadingGovernorates ? _self.isLoadingGovernorates : isLoadingGovernorates // ignore: cast_nullable_to_non_nullable
as bool,isLoadingCenters: null == isLoadingCenters ? _self.isLoadingCenters : isLoadingCenters // ignore: cast_nullable_to_non_nullable
as bool,isLoadingAddresses: null == isLoadingAddresses ? _self.isLoadingAddresses : isLoadingAddresses // ignore: cast_nullable_to_non_nullable
as bool,booking: freezed == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as BookingEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,nameError: freezed == nameError ? _self.nameError : nameError // ignore: cast_nullable_to_non_nullable
as String?,phoneError: freezed == phoneError ? _self.phoneError : phoneError // ignore: cast_nullable_to_non_nullable
as String?,emailError: freezed == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String?,dayError: freezed == dayError ? _self.dayError : dayError // ignore: cast_nullable_to_non_nullable
as String?,timeError: freezed == timeError ? _self.timeError : timeError // ignore: cast_nullable_to_non_nullable
as String?,governorateError: freezed == governorateError ? _self.governorateError : governorateError // ignore: cast_nullable_to_non_nullable
as String?,centerError: freezed == centerError ? _self.centerError : centerError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceDetailEntityCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ServiceDetailEntityCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceAvailableDayEntityCopyWith<$Res>? get selectedDay {
    if (_self.selectedDay == null) {
    return null;
  }

  return $ServiceAvailableDayEntityCopyWith<$Res>(_self.selectedDay!, (value) {
    return _then(_self.copyWith(selectedDay: value));
  });
}/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceAvailableTimeEntityCopyWith<$Res>? get selectedTime {
    if (_self.selectedTime == null) {
    return null;
  }

  return $ServiceAvailableTimeEntityCopyWith<$Res>(_self.selectedTime!, (value) {
    return _then(_self.copyWith(selectedTime: value));
  });
}/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressEntityCopyWith<$Res>? get selectedAddress {
    if (_self.selectedAddress == null) {
    return null;
  }

  return $AddressEntityCopyWith<$Res>(_self.selectedAddress!, (value) {
    return _then(_self.copyWith(selectedAddress: value));
  });
}/// Create a copy of ServiceBookingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BookingEntityCopyWith<$Res>? get booking {
    if (_self.booking == null) {
    return null;
  }

  return $BookingEntityCopyWith<$Res>(_self.booking!, (value) {
    return _then(_self.copyWith(booking: value));
  });
}
}

// dart format on
