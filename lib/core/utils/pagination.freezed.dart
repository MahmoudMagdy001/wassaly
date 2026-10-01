// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedResponse<T> {

 List<T> get data; int get currentPage; int get lastPage; int get total; int get totalUnread;
/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedResponseCopyWith<T, PaginatedResponse<T>> get copyWith => _$PaginatedResponseCopyWithImpl<T, PaginatedResponse<T>>(this as PaginatedResponse<T>, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PaginatedResponse<T>;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedResponse<T>&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.lastPage, _this.lastPage) || other.lastPage == _this.lastPage)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.totalUnread, _this.totalUnread) || other.totalUnread == _this.totalUnread));
}


@override
int get hashCode {
  final _this = this as PaginatedResponse<T>;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.currentPage,_this.lastPage,_this.total,_this.totalUnread);
}

@override
String toString() {
  final _this = this as PaginatedResponse<T>;
  return 'PaginatedResponse<$T>(data: ${_this.data}, currentPage: ${_this.currentPage}, lastPage: ${_this.lastPage}, total: ${_this.total}, totalUnread: ${_this.totalUnread})';
}


}

/// @nodoc
abstract mixin class $PaginatedResponseCopyWith<T,$Res>  {
  factory $PaginatedResponseCopyWith(PaginatedResponse<T> value, $Res Function(PaginatedResponse<T>) _then) = _$PaginatedResponseCopyWithImpl;
@useResult
$Res call({
 List<T> data, int currentPage, int lastPage, int total, int totalUnread
});




}
/// @nodoc
class _$PaginatedResponseCopyWithImpl<T,$Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  _$PaginatedResponseCopyWithImpl(this._self, this._then);

  final PaginatedResponse<T> _self;
  final $Res Function(PaginatedResponse<T>) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? currentPage = null,Object? lastPage = null,Object? total = null,Object? totalUnread = null,}) {
  return _then(PaginatedResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalUnread: null == totalUnread ? _self.totalUnread : totalUnread // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedResponse].
extension PaginatedResponsePatterns<T> on PaginatedResponse<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedResponse<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedResponse<T> value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedResponse<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> data,  int currentPage,  int lastPage,  int total,  int totalUnread)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that.data,_that.currentPage,_that.lastPage,_that.total,_that.totalUnread);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> data,  int currentPage,  int lastPage,  int total,  int totalUnread)  $default,) {final _that = this;
switch (_that) {
case _PaginatedResponse():
return $default(_that.data,_that.currentPage,_that.lastPage,_that.total,_that.totalUnread);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> data,  int currentPage,  int lastPage,  int total,  int totalUnread)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedResponse() when $default != null:
return $default(_that.data,_that.currentPage,_that.lastPage,_that.total,_that.totalUnread);case _:
  return null;

}
}

}

/// @nodoc


class _PaginatedResponse<T> extends PaginatedResponse<T> {
  const _PaginatedResponse({required  List<T> data, this.currentPage = 1, this.lastPage = 1, this.total = 0, this.totalUnread = 0}): _data = data,super._();
  

 final  List<T> _data;
@override List<T> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  int lastPage;
@override@JsonKey() final  int total;
@override@JsonKey() final  int totalUnread;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedResponseCopyWith<T, _PaginatedResponse<T>> get copyWith => __$PaginatedResponseCopyWithImpl<T, _PaginatedResponse<T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedResponse<T>&&const DeepCollectionEquality().equals(other.data, _data)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalUnread, totalUnread) || other.totalUnread == totalUnread));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),currentPage,lastPage,total,totalUnread);
}

@override
String toString() {
    return 'PaginatedResponse<$T>(data: $data, currentPage: $currentPage, lastPage: $lastPage, total: $total, totalUnread: $totalUnread)';
}


}

/// @nodoc
abstract mixin class _$PaginatedResponseCopyWith<T,$Res> implements $PaginatedResponseCopyWith<T, $Res> {
  factory _$PaginatedResponseCopyWith(_PaginatedResponse<T> value, $Res Function(_PaginatedResponse<T>) _then) = __$PaginatedResponseCopyWithImpl;
@override @useResult
$Res call({
 List<T> data, int currentPage, int lastPage, int total, int totalUnread
});




}
/// @nodoc
class __$PaginatedResponseCopyWithImpl<T,$Res>
    implements _$PaginatedResponseCopyWith<T, $Res> {
  __$PaginatedResponseCopyWithImpl(this._self, this._then);

  final _PaginatedResponse<T> _self;
  final $Res Function(_PaginatedResponse<T>) _then;

/// Create a copy of PaginatedResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? currentPage = null,Object? lastPage = null,Object? total = null,Object? totalUnread = null,}) {
  return _then(_PaginatedResponse<T>(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalUnread: null == totalUnread ? _self.totalUnread : totalUnread // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
