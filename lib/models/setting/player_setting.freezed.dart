// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerSetting {
  String get name => throw _privateConstructorUsedError;
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;
  int get second => throw _privateConstructorUsedError;
  int get increment => throw _privateConstructorUsedError;

  /// Create a copy of PlayerSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerSettingCopyWith<PlayerSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSettingCopyWith<$Res> {
  factory $PlayerSettingCopyWith(
          PlayerSetting value, $Res Function(PlayerSetting) then) =
      _$PlayerSettingCopyWithImpl<$Res, PlayerSetting>;
  @useResult
  $Res call({String name, int hour, int minute, int second, int increment});
}

/// @nodoc
class _$PlayerSettingCopyWithImpl<$Res, $Val extends PlayerSetting>
    implements $PlayerSettingCopyWith<$Res> {
  _$PlayerSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? hour = null,
    Object? minute = null,
    Object? second = null,
    Object? increment = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
      increment: null == increment
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerSettingImplCopyWith<$Res>
    implements $PlayerSettingCopyWith<$Res> {
  factory _$$PlayerSettingImplCopyWith(
          _$PlayerSettingImpl value, $Res Function(_$PlayerSettingImpl) then) =
      __$$PlayerSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int hour, int minute, int second, int increment});
}

/// @nodoc
class __$$PlayerSettingImplCopyWithImpl<$Res>
    extends _$PlayerSettingCopyWithImpl<$Res, _$PlayerSettingImpl>
    implements _$$PlayerSettingImplCopyWith<$Res> {
  __$$PlayerSettingImplCopyWithImpl(
      _$PlayerSettingImpl _value, $Res Function(_$PlayerSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? hour = null,
    Object? minute = null,
    Object? second = null,
    Object? increment = null,
  }) {
    return _then(_$PlayerSettingImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
      increment: null == increment
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayerSettingImpl extends _PlayerSetting {
  const _$PlayerSettingImpl(
      {required this.name,
      this.hour = 0,
      this.minute = 5,
      this.second = 0,
      this.increment = 5})
      : super._();

  @override
  final String name;
  @override
  @JsonKey()
  final int hour;
  @override
  @JsonKey()
  final int minute;
  @override
  @JsonKey()
  final int second;
  @override
  @JsonKey()
  final int increment;

  @override
  String toString() {
    return 'PlayerSetting(name: $name, hour: $hour, minute: $minute, second: $second, increment: $increment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerSettingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.second, second) || other.second == second) &&
            (identical(other.increment, increment) ||
                other.increment == increment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, hour, minute, second, increment);

  /// Create a copy of PlayerSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerSettingImplCopyWith<_$PlayerSettingImpl> get copyWith =>
      __$$PlayerSettingImplCopyWithImpl<_$PlayerSettingImpl>(this, _$identity);
}

abstract class _PlayerSetting extends PlayerSetting {
  const factory _PlayerSetting(
      {required final String name,
      final int hour,
      final int minute,
      final int second,
      final int increment}) = _$PlayerSettingImpl;
  const _PlayerSetting._() : super._();

  @override
  String get name;
  @override
  int get hour;
  @override
  int get minute;
  @override
  int get second;
  @override
  int get increment;

  /// Create a copy of PlayerSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerSettingImplCopyWith<_$PlayerSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
