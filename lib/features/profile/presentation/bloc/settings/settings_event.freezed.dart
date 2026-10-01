// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SettingsInitialized value)?  settingsInitialized,TResult Function( LanguageToggled value)?  languageToggled,TResult Function( LanguageChanged value)?  languageChanged,TResult Function( ThemeToggled value)?  themeToggled,TResult Function( ThemeModeChanged value)?  themeModeChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SettingsInitialized() when settingsInitialized != null:
return settingsInitialized(_that);case LanguageToggled() when languageToggled != null:
return languageToggled(_that);case LanguageChanged() when languageChanged != null:
return languageChanged(_that);case ThemeToggled() when themeToggled != null:
return themeToggled(_that);case ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SettingsInitialized value)  settingsInitialized,required TResult Function( LanguageToggled value)  languageToggled,required TResult Function( LanguageChanged value)  languageChanged,required TResult Function( ThemeToggled value)  themeToggled,required TResult Function( ThemeModeChanged value)  themeModeChanged,}){
final _that = this;
switch (_that) {
case SettingsInitialized():
return settingsInitialized(_that);case LanguageToggled():
return languageToggled(_that);case LanguageChanged():
return languageChanged(_that);case ThemeToggled():
return themeToggled(_that);case ThemeModeChanged():
return themeModeChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SettingsInitialized value)?  settingsInitialized,TResult? Function( LanguageToggled value)?  languageToggled,TResult? Function( LanguageChanged value)?  languageChanged,TResult? Function( ThemeToggled value)?  themeToggled,TResult? Function( ThemeModeChanged value)?  themeModeChanged,}){
final _that = this;
switch (_that) {
case SettingsInitialized() when settingsInitialized != null:
return settingsInitialized(_that);case LanguageToggled() when languageToggled != null:
return languageToggled(_that);case LanguageChanged() when languageChanged != null:
return languageChanged(_that);case ThemeToggled() when themeToggled != null:
return themeToggled(_that);case ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  settingsInitialized,TResult Function()?  languageToggled,TResult Function( String language)?  languageChanged,TResult Function()?  themeToggled,TResult Function( ThemeMode themeMode)?  themeModeChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SettingsInitialized() when settingsInitialized != null:
return settingsInitialized();case LanguageToggled() when languageToggled != null:
return languageToggled();case LanguageChanged() when languageChanged != null:
return languageChanged(_that.language);case ThemeToggled() when themeToggled != null:
return themeToggled();case ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that.themeMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  settingsInitialized,required TResult Function()  languageToggled,required TResult Function( String language)  languageChanged,required TResult Function()  themeToggled,required TResult Function( ThemeMode themeMode)  themeModeChanged,}) {final _that = this;
switch (_that) {
case SettingsInitialized():
return settingsInitialized();case LanguageToggled():
return languageToggled();case LanguageChanged():
return languageChanged(_that.language);case ThemeToggled():
return themeToggled();case ThemeModeChanged():
return themeModeChanged(_that.themeMode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  settingsInitialized,TResult? Function()?  languageToggled,TResult? Function( String language)?  languageChanged,TResult? Function()?  themeToggled,TResult? Function( ThemeMode themeMode)?  themeModeChanged,}) {final _that = this;
switch (_that) {
case SettingsInitialized() when settingsInitialized != null:
return settingsInitialized();case LanguageToggled() when languageToggled != null:
return languageToggled();case LanguageChanged() when languageChanged != null:
return languageChanged(_that.language);case ThemeToggled() when themeToggled != null:
return themeToggled();case ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc


class SettingsInitialized implements SettingsEvent {
  const SettingsInitialized();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettingsEvent.settingsInitialized()';
}


}




/// @nodoc


class LanguageToggled implements SettingsEvent {
  const LanguageToggled();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageToggled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettingsEvent.languageToggled()';
}


}




/// @nodoc


class LanguageChanged implements SettingsEvent {
  const LanguageChanged(this.language);
  

 final  String language;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageChangedCopyWith<LanguageChanged> get copyWith => _$LanguageChangedCopyWithImpl<LanguageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageChanged&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode {
    return Object.hash(runtimeType,language);
}

@override
String toString() {
    return 'SettingsEvent.languageChanged(language: $language)';
}


}

/// @nodoc
abstract mixin class $LanguageChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $LanguageChangedCopyWith(LanguageChanged value, $Res Function(LanguageChanged) _then) = _$LanguageChangedCopyWithImpl;
@useResult
$Res call({
 String language
});




}
/// @nodoc
class _$LanguageChangedCopyWithImpl<$Res>
    implements $LanguageChangedCopyWith<$Res> {
  _$LanguageChangedCopyWithImpl(this._self, this._then);

  final LanguageChanged _self;
  final $Res Function(LanguageChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? language = null,}) {
  return _then(LanguageChanged(
null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ThemeToggled implements SettingsEvent {
  const ThemeToggled();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeToggled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettingsEvent.themeToggled()';
}


}




/// @nodoc


class ThemeModeChanged implements SettingsEvent {
  const ThemeModeChanged(this.themeMode);
  

 final  ThemeMode themeMode;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeModeChangedCopyWith<ThemeModeChanged> get copyWith => _$ThemeModeChangedCopyWithImpl<ThemeModeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeModeChanged&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,themeMode);
}

@override
String toString() {
    return 'SettingsEvent.themeModeChanged(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $ThemeModeChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $ThemeModeChangedCopyWith(ThemeModeChanged value, $Res Function(ThemeModeChanged) _then) = _$ThemeModeChangedCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode
});




}
/// @nodoc
class _$ThemeModeChangedCopyWithImpl<$Res>
    implements $ThemeModeChangedCopyWith<$Res> {
  _$ThemeModeChangedCopyWithImpl(this._self, this._then);

  final ThemeModeChanged _self;
  final $Res Function(ThemeModeChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(ThemeModeChanged(
null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}


}

// dart format on
