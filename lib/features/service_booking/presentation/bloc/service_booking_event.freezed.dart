// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_booking_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServiceBookingEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ServiceBookingEvent()';
}


}

/// @nodoc
class $ServiceBookingEventCopyWith<$Res>  {
$ServiceBookingEventCopyWith(ServiceBookingEvent _, $Res Function(ServiceBookingEvent) __);
}


/// Adds pattern-matching-related methods to [ServiceBookingEvent].
extension ServiceBookingEventPatterns on ServiceBookingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServiceBookingInitialized value)?  initialized,TResult Function( ServiceBookingDaySelected value)?  daySelected,TResult Function( ServiceBookingTimeSelected value)?  timeSelected,TResult Function( ServiceBookingGovernorateSelected value)?  governorateSelected,TResult Function( ServiceBookingCenterSelected value)?  centerSelected,TResult Function( ServiceBookingAddressSelected value)?  addressSelected,TResult Function( ServiceBookingAddressesRefreshed value)?  addressesRefreshed,TResult Function( ServiceBookingFormChanged value)?  formChanged,TResult Function( ServiceBookingSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServiceBookingInitialized() when initialized != null:
return initialized(_that);case ServiceBookingDaySelected() when daySelected != null:
return daySelected(_that);case ServiceBookingTimeSelected() when timeSelected != null:
return timeSelected(_that);case ServiceBookingGovernorateSelected() when governorateSelected != null:
return governorateSelected(_that);case ServiceBookingCenterSelected() when centerSelected != null:
return centerSelected(_that);case ServiceBookingAddressSelected() when addressSelected != null:
return addressSelected(_that);case ServiceBookingAddressesRefreshed() when addressesRefreshed != null:
return addressesRefreshed(_that);case ServiceBookingFormChanged() when formChanged != null:
return formChanged(_that);case ServiceBookingSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServiceBookingInitialized value)  initialized,required TResult Function( ServiceBookingDaySelected value)  daySelected,required TResult Function( ServiceBookingTimeSelected value)  timeSelected,required TResult Function( ServiceBookingGovernorateSelected value)  governorateSelected,required TResult Function( ServiceBookingCenterSelected value)  centerSelected,required TResult Function( ServiceBookingAddressSelected value)  addressSelected,required TResult Function( ServiceBookingAddressesRefreshed value)  addressesRefreshed,required TResult Function( ServiceBookingFormChanged value)  formChanged,required TResult Function( ServiceBookingSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case ServiceBookingInitialized():
return initialized(_that);case ServiceBookingDaySelected():
return daySelected(_that);case ServiceBookingTimeSelected():
return timeSelected(_that);case ServiceBookingGovernorateSelected():
return governorateSelected(_that);case ServiceBookingCenterSelected():
return centerSelected(_that);case ServiceBookingAddressSelected():
return addressSelected(_that);case ServiceBookingAddressesRefreshed():
return addressesRefreshed(_that);case ServiceBookingFormChanged():
return formChanged(_that);case ServiceBookingSubmitted():
return submitted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServiceBookingInitialized value)?  initialized,TResult? Function( ServiceBookingDaySelected value)?  daySelected,TResult? Function( ServiceBookingTimeSelected value)?  timeSelected,TResult? Function( ServiceBookingGovernorateSelected value)?  governorateSelected,TResult? Function( ServiceBookingCenterSelected value)?  centerSelected,TResult? Function( ServiceBookingAddressSelected value)?  addressSelected,TResult? Function( ServiceBookingAddressesRefreshed value)?  addressesRefreshed,TResult? Function( ServiceBookingFormChanged value)?  formChanged,TResult? Function( ServiceBookingSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case ServiceBookingInitialized() when initialized != null:
return initialized(_that);case ServiceBookingDaySelected() when daySelected != null:
return daySelected(_that);case ServiceBookingTimeSelected() when timeSelected != null:
return timeSelected(_that);case ServiceBookingGovernorateSelected() when governorateSelected != null:
return governorateSelected(_that);case ServiceBookingCenterSelected() when centerSelected != null:
return centerSelected(_that);case ServiceBookingAddressSelected() when addressSelected != null:
return addressSelected(_that);case ServiceBookingAddressesRefreshed() when addressesRefreshed != null:
return addressesRefreshed(_that);case ServiceBookingFormChanged() when formChanged != null:
return formChanged(_that);case ServiceBookingSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ServiceDetailEntity service,  ServiceAvailableDayEntity? preselectedDay,  ServiceAvailableTimeEntity? preselectedTime)?  initialized,TResult Function( ServiceAvailableDayEntity day)?  daySelected,TResult Function( ServiceAvailableTimeEntity time)?  timeSelected,TResult Function( String governorateId,  String? centerId)?  governorateSelected,TResult Function( String centerId)?  centerSelected,TResult Function( AddressEntity address)?  addressSelected,TResult Function()?  addressesRefreshed,TResult Function( String? name,  String? phone,  String? email,  String? problemDescription)?  formChanged,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServiceBookingInitialized() when initialized != null:
return initialized(_that.service,_that.preselectedDay,_that.preselectedTime);case ServiceBookingDaySelected() when daySelected != null:
return daySelected(_that.day);case ServiceBookingTimeSelected() when timeSelected != null:
return timeSelected(_that.time);case ServiceBookingGovernorateSelected() when governorateSelected != null:
return governorateSelected(_that.governorateId,_that.centerId);case ServiceBookingCenterSelected() when centerSelected != null:
return centerSelected(_that.centerId);case ServiceBookingAddressSelected() when addressSelected != null:
return addressSelected(_that.address);case ServiceBookingAddressesRefreshed() when addressesRefreshed != null:
return addressesRefreshed();case ServiceBookingFormChanged() when formChanged != null:
return formChanged(_that.name,_that.phone,_that.email,_that.problemDescription);case ServiceBookingSubmitted() when submitted != null:
return submitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ServiceDetailEntity service,  ServiceAvailableDayEntity? preselectedDay,  ServiceAvailableTimeEntity? preselectedTime)  initialized,required TResult Function( ServiceAvailableDayEntity day)  daySelected,required TResult Function( ServiceAvailableTimeEntity time)  timeSelected,required TResult Function( String governorateId,  String? centerId)  governorateSelected,required TResult Function( String centerId)  centerSelected,required TResult Function( AddressEntity address)  addressSelected,required TResult Function()  addressesRefreshed,required TResult Function( String? name,  String? phone,  String? email,  String? problemDescription)  formChanged,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case ServiceBookingInitialized():
return initialized(_that.service,_that.preselectedDay,_that.preselectedTime);case ServiceBookingDaySelected():
return daySelected(_that.day);case ServiceBookingTimeSelected():
return timeSelected(_that.time);case ServiceBookingGovernorateSelected():
return governorateSelected(_that.governorateId,_that.centerId);case ServiceBookingCenterSelected():
return centerSelected(_that.centerId);case ServiceBookingAddressSelected():
return addressSelected(_that.address);case ServiceBookingAddressesRefreshed():
return addressesRefreshed();case ServiceBookingFormChanged():
return formChanged(_that.name,_that.phone,_that.email,_that.problemDescription);case ServiceBookingSubmitted():
return submitted();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ServiceDetailEntity service,  ServiceAvailableDayEntity? preselectedDay,  ServiceAvailableTimeEntity? preselectedTime)?  initialized,TResult? Function( ServiceAvailableDayEntity day)?  daySelected,TResult? Function( ServiceAvailableTimeEntity time)?  timeSelected,TResult? Function( String governorateId,  String? centerId)?  governorateSelected,TResult? Function( String centerId)?  centerSelected,TResult? Function( AddressEntity address)?  addressSelected,TResult? Function()?  addressesRefreshed,TResult? Function( String? name,  String? phone,  String? email,  String? problemDescription)?  formChanged,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case ServiceBookingInitialized() when initialized != null:
return initialized(_that.service,_that.preselectedDay,_that.preselectedTime);case ServiceBookingDaySelected() when daySelected != null:
return daySelected(_that.day);case ServiceBookingTimeSelected() when timeSelected != null:
return timeSelected(_that.time);case ServiceBookingGovernorateSelected() when governorateSelected != null:
return governorateSelected(_that.governorateId,_that.centerId);case ServiceBookingCenterSelected() when centerSelected != null:
return centerSelected(_that.centerId);case ServiceBookingAddressSelected() when addressSelected != null:
return addressSelected(_that.address);case ServiceBookingAddressesRefreshed() when addressesRefreshed != null:
return addressesRefreshed();case ServiceBookingFormChanged() when formChanged != null:
return formChanged(_that.name,_that.phone,_that.email,_that.problemDescription);case ServiceBookingSubmitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class ServiceBookingInitialized implements ServiceBookingEvent {
  const ServiceBookingInitialized({required this.service, this.preselectedDay, this.preselectedTime});
  

 final  ServiceDetailEntity service;
 final  ServiceAvailableDayEntity? preselectedDay;
 final  ServiceAvailableTimeEntity? preselectedTime;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceBookingInitializedCopyWith<ServiceBookingInitialized> get copyWith => _$ServiceBookingInitializedCopyWithImpl<ServiceBookingInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingInitialized&&(identical(other.service, service) || other.service == service)&&(identical(other.preselectedDay, preselectedDay) || other.preselectedDay == preselectedDay)&&(identical(other.preselectedTime, preselectedTime) || other.preselectedTime == preselectedTime));
}


@override
int get hashCode {
    return Object.hash(runtimeType,service,preselectedDay,preselectedTime);
}

@override
String toString() {
    return 'ServiceBookingEvent.initialized(service: $service, preselectedDay: $preselectedDay, preselectedTime: $preselectedTime)';
}


}

/// @nodoc
abstract mixin class $ServiceBookingInitializedCopyWith<$Res> implements $ServiceBookingEventCopyWith<$Res> {
  factory $ServiceBookingInitializedCopyWith(ServiceBookingInitialized value, $Res Function(ServiceBookingInitialized) _then) = _$ServiceBookingInitializedCopyWithImpl;
@useResult
$Res call({
 ServiceDetailEntity service, ServiceAvailableDayEntity? preselectedDay, ServiceAvailableTimeEntity? preselectedTime
});


$ServiceDetailEntityCopyWith<$Res> get service;$ServiceAvailableDayEntityCopyWith<$Res>? get preselectedDay;$ServiceAvailableTimeEntityCopyWith<$Res>? get preselectedTime;

}
/// @nodoc
class _$ServiceBookingInitializedCopyWithImpl<$Res>
    implements $ServiceBookingInitializedCopyWith<$Res> {
  _$ServiceBookingInitializedCopyWithImpl(this._self, this._then);

  final ServiceBookingInitialized _self;
  final $Res Function(ServiceBookingInitialized) _then;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? service = null,Object? preselectedDay = freezed,Object? preselectedTime = freezed,}) {
  return _then(ServiceBookingInitialized(
service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceDetailEntity,preselectedDay: freezed == preselectedDay ? _self.preselectedDay : preselectedDay // ignore: cast_nullable_to_non_nullable
as ServiceAvailableDayEntity?,preselectedTime: freezed == preselectedTime ? _self.preselectedTime : preselectedTime // ignore: cast_nullable_to_non_nullable
as ServiceAvailableTimeEntity?,
  ));
}

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceDetailEntityCopyWith<$Res> get service {
  
  return $ServiceDetailEntityCopyWith<$Res>(_self.service, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceAvailableDayEntityCopyWith<$Res>? get preselectedDay {
    if (_self.preselectedDay == null) {
    return null;
  }

  return $ServiceAvailableDayEntityCopyWith<$Res>(_self.preselectedDay!, (value) {
    return _then(_self.copyWith(preselectedDay: value));
  });
}/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceAvailableTimeEntityCopyWith<$Res>? get preselectedTime {
    if (_self.preselectedTime == null) {
    return null;
  }

  return $ServiceAvailableTimeEntityCopyWith<$Res>(_self.preselectedTime!, (value) {
    return _then(_self.copyWith(preselectedTime: value));
  });
}
}

/// @nodoc


class ServiceBookingDaySelected implements ServiceBookingEvent {
  const ServiceBookingDaySelected(this.day);
  

 final  ServiceAvailableDayEntity day;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceBookingDaySelectedCopyWith<ServiceBookingDaySelected> get copyWith => _$ServiceBookingDaySelectedCopyWithImpl<ServiceBookingDaySelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingDaySelected&&(identical(other.day, day) || other.day == day));
}


@override
int get hashCode {
    return Object.hash(runtimeType,day);
}

@override
String toString() {
    return 'ServiceBookingEvent.daySelected(day: $day)';
}


}

/// @nodoc
abstract mixin class $ServiceBookingDaySelectedCopyWith<$Res> implements $ServiceBookingEventCopyWith<$Res> {
  factory $ServiceBookingDaySelectedCopyWith(ServiceBookingDaySelected value, $Res Function(ServiceBookingDaySelected) _then) = _$ServiceBookingDaySelectedCopyWithImpl;
@useResult
$Res call({
 ServiceAvailableDayEntity day
});


$ServiceAvailableDayEntityCopyWith<$Res> get day;

}
/// @nodoc
class _$ServiceBookingDaySelectedCopyWithImpl<$Res>
    implements $ServiceBookingDaySelectedCopyWith<$Res> {
  _$ServiceBookingDaySelectedCopyWithImpl(this._self, this._then);

  final ServiceBookingDaySelected _self;
  final $Res Function(ServiceBookingDaySelected) _then;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? day = null,}) {
  return _then(ServiceBookingDaySelected(
null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as ServiceAvailableDayEntity,
  ));
}

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceAvailableDayEntityCopyWith<$Res> get day {
  
  return $ServiceAvailableDayEntityCopyWith<$Res>(_self.day, (value) {
    return _then(_self.copyWith(day: value));
  });
}
}

/// @nodoc


class ServiceBookingTimeSelected implements ServiceBookingEvent {
  const ServiceBookingTimeSelected(this.time);
  

 final  ServiceAvailableTimeEntity time;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceBookingTimeSelectedCopyWith<ServiceBookingTimeSelected> get copyWith => _$ServiceBookingTimeSelectedCopyWithImpl<ServiceBookingTimeSelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingTimeSelected&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode {
    return Object.hash(runtimeType,time);
}

@override
String toString() {
    return 'ServiceBookingEvent.timeSelected(time: $time)';
}


}

/// @nodoc
abstract mixin class $ServiceBookingTimeSelectedCopyWith<$Res> implements $ServiceBookingEventCopyWith<$Res> {
  factory $ServiceBookingTimeSelectedCopyWith(ServiceBookingTimeSelected value, $Res Function(ServiceBookingTimeSelected) _then) = _$ServiceBookingTimeSelectedCopyWithImpl;
@useResult
$Res call({
 ServiceAvailableTimeEntity time
});


$ServiceAvailableTimeEntityCopyWith<$Res> get time;

}
/// @nodoc
class _$ServiceBookingTimeSelectedCopyWithImpl<$Res>
    implements $ServiceBookingTimeSelectedCopyWith<$Res> {
  _$ServiceBookingTimeSelectedCopyWithImpl(this._self, this._then);

  final ServiceBookingTimeSelected _self;
  final $Res Function(ServiceBookingTimeSelected) _then;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? time = null,}) {
  return _then(ServiceBookingTimeSelected(
null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as ServiceAvailableTimeEntity,
  ));
}

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceAvailableTimeEntityCopyWith<$Res> get time {
  
  return $ServiceAvailableTimeEntityCopyWith<$Res>(_self.time, (value) {
    return _then(_self.copyWith(time: value));
  });
}
}

/// @nodoc


class ServiceBookingGovernorateSelected implements ServiceBookingEvent {
  const ServiceBookingGovernorateSelected(this.governorateId, {this.centerId});
  

 final  String governorateId;
 final  String? centerId;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceBookingGovernorateSelectedCopyWith<ServiceBookingGovernorateSelected> get copyWith => _$ServiceBookingGovernorateSelectedCopyWithImpl<ServiceBookingGovernorateSelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingGovernorateSelected&&(identical(other.governorateId, governorateId) || other.governorateId == governorateId)&&(identical(other.centerId, centerId) || other.centerId == centerId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,governorateId,centerId);
}

@override
String toString() {
    return 'ServiceBookingEvent.governorateSelected(governorateId: $governorateId, centerId: $centerId)';
}


}

/// @nodoc
abstract mixin class $ServiceBookingGovernorateSelectedCopyWith<$Res> implements $ServiceBookingEventCopyWith<$Res> {
  factory $ServiceBookingGovernorateSelectedCopyWith(ServiceBookingGovernorateSelected value, $Res Function(ServiceBookingGovernorateSelected) _then) = _$ServiceBookingGovernorateSelectedCopyWithImpl;
@useResult
$Res call({
 String governorateId, String? centerId
});




}
/// @nodoc
class _$ServiceBookingGovernorateSelectedCopyWithImpl<$Res>
    implements $ServiceBookingGovernorateSelectedCopyWith<$Res> {
  _$ServiceBookingGovernorateSelectedCopyWithImpl(this._self, this._then);

  final ServiceBookingGovernorateSelected _self;
  final $Res Function(ServiceBookingGovernorateSelected) _then;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? governorateId = null,Object? centerId = freezed,}) {
  return _then(ServiceBookingGovernorateSelected(
null == governorateId ? _self.governorateId : governorateId // ignore: cast_nullable_to_non_nullable
as String,centerId: freezed == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ServiceBookingCenterSelected implements ServiceBookingEvent {
  const ServiceBookingCenterSelected(this.centerId);
  

 final  String centerId;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceBookingCenterSelectedCopyWith<ServiceBookingCenterSelected> get copyWith => _$ServiceBookingCenterSelectedCopyWithImpl<ServiceBookingCenterSelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingCenterSelected&&(identical(other.centerId, centerId) || other.centerId == centerId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,centerId);
}

@override
String toString() {
    return 'ServiceBookingEvent.centerSelected(centerId: $centerId)';
}


}

/// @nodoc
abstract mixin class $ServiceBookingCenterSelectedCopyWith<$Res> implements $ServiceBookingEventCopyWith<$Res> {
  factory $ServiceBookingCenterSelectedCopyWith(ServiceBookingCenterSelected value, $Res Function(ServiceBookingCenterSelected) _then) = _$ServiceBookingCenterSelectedCopyWithImpl;
@useResult
$Res call({
 String centerId
});




}
/// @nodoc
class _$ServiceBookingCenterSelectedCopyWithImpl<$Res>
    implements $ServiceBookingCenterSelectedCopyWith<$Res> {
  _$ServiceBookingCenterSelectedCopyWithImpl(this._self, this._then);

  final ServiceBookingCenterSelected _self;
  final $Res Function(ServiceBookingCenterSelected) _then;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? centerId = null,}) {
  return _then(ServiceBookingCenterSelected(
null == centerId ? _self.centerId : centerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ServiceBookingAddressSelected implements ServiceBookingEvent {
  const ServiceBookingAddressSelected(this.address);
  

 final  AddressEntity address;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceBookingAddressSelectedCopyWith<ServiceBookingAddressSelected> get copyWith => _$ServiceBookingAddressSelectedCopyWithImpl<ServiceBookingAddressSelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingAddressSelected&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode {
    return Object.hash(runtimeType,address);
}

@override
String toString() {
    return 'ServiceBookingEvent.addressSelected(address: $address)';
}


}

/// @nodoc
abstract mixin class $ServiceBookingAddressSelectedCopyWith<$Res> implements $ServiceBookingEventCopyWith<$Res> {
  factory $ServiceBookingAddressSelectedCopyWith(ServiceBookingAddressSelected value, $Res Function(ServiceBookingAddressSelected) _then) = _$ServiceBookingAddressSelectedCopyWithImpl;
@useResult
$Res call({
 AddressEntity address
});


$AddressEntityCopyWith<$Res> get address;

}
/// @nodoc
class _$ServiceBookingAddressSelectedCopyWithImpl<$Res>
    implements $ServiceBookingAddressSelectedCopyWith<$Res> {
  _$ServiceBookingAddressSelectedCopyWithImpl(this._self, this._then);

  final ServiceBookingAddressSelected _self;
  final $Res Function(ServiceBookingAddressSelected) _then;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(ServiceBookingAddressSelected(
null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressEntity,
  ));
}

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressEntityCopyWith<$Res> get address {
  
  return $AddressEntityCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

/// @nodoc


class ServiceBookingAddressesRefreshed implements ServiceBookingEvent {
  const ServiceBookingAddressesRefreshed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingAddressesRefreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ServiceBookingEvent.addressesRefreshed()';
}


}




/// @nodoc


class ServiceBookingFormChanged implements ServiceBookingEvent {
  const ServiceBookingFormChanged({this.name, this.phone, this.email, this.problemDescription});
  

 final  String? name;
 final  String? phone;
 final  String? email;
 final  String? problemDescription;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceBookingFormChangedCopyWith<ServiceBookingFormChanged> get copyWith => _$ServiceBookingFormChangedCopyWithImpl<ServiceBookingFormChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingFormChanged&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.problemDescription, problemDescription) || other.problemDescription == problemDescription));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,email,problemDescription);
}

@override
String toString() {
    return 'ServiceBookingEvent.formChanged(name: $name, phone: $phone, email: $email, problemDescription: $problemDescription)';
}


}

/// @nodoc
abstract mixin class $ServiceBookingFormChangedCopyWith<$Res> implements $ServiceBookingEventCopyWith<$Res> {
  factory $ServiceBookingFormChangedCopyWith(ServiceBookingFormChanged value, $Res Function(ServiceBookingFormChanged) _then) = _$ServiceBookingFormChangedCopyWithImpl;
@useResult
$Res call({
 String? name, String? phone, String? email, String? problemDescription
});




}
/// @nodoc
class _$ServiceBookingFormChangedCopyWithImpl<$Res>
    implements $ServiceBookingFormChangedCopyWith<$Res> {
  _$ServiceBookingFormChangedCopyWithImpl(this._self, this._then);

  final ServiceBookingFormChanged _self;
  final $Res Function(ServiceBookingFormChanged) _then;

/// Create a copy of ServiceBookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? phone = freezed,Object? email = freezed,Object? problemDescription = freezed,}) {
  return _then(ServiceBookingFormChanged(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,problemDescription: freezed == problemDescription ? _self.problemDescription : problemDescription // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ServiceBookingSubmitted implements ServiceBookingEvent {
  const ServiceBookingSubmitted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceBookingSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ServiceBookingEvent.submitted()';
}


}




// dart format on
