// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Setting {
  String get playerName => throw _privateConstructorUsedError; // 自分の名前
  String get opponentName => throw _privateConstructorUsedError; // 相手の名前
  Rotation get rotation => throw _privateConstructorUsedError; // 回転
  int get hour => throw _privateConstructorUsedError; // 時
  int get minute => throw _privateConstructorUsedError; // 分
  int get second => throw _privateConstructorUsedError;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingCopyWith<Setting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCopyWith<$Res> {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) then) =
      _$SettingCopyWithImpl<$Res, Setting>;
  @useResult
  $Res call(
      {String playerName,
      String opponentName,
      Rotation rotation,
      int hour,
      int minute,
      int second});
}

/// @nodoc
class _$SettingCopyWithImpl<$Res, $Val extends Setting>
    implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? opponentName = null,
    Object? rotation = null,
    Object? hour = null,
    Object? minute = null,
    Object? second = null,
  }) {
    return _then(_value.copyWith(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      opponentName: null == opponentName
          ? _value.opponentName
          : opponentName // ignore: cast_nullable_to_non_nullable
              as String,
      rotation: null == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as Rotation,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingImplCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$$SettingImplCopyWith(
          _$SettingImpl value, $Res Function(_$SettingImpl) then) =
      __$$SettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String playerName,
      String opponentName,
      Rotation rotation,
      int hour,
      int minute,
      int second});
}

/// @nodoc
class __$$SettingImplCopyWithImpl<$Res>
    extends _$SettingCopyWithImpl<$Res, _$SettingImpl>
    implements _$$SettingImplCopyWith<$Res> {
  __$$SettingImplCopyWithImpl(
      _$SettingImpl _value, $Res Function(_$SettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? opponentName = null,
    Object? rotation = null,
    Object? hour = null,
    Object? minute = null,
    Object? second = null,
  }) {
    return _then(_$SettingImpl(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      opponentName: null == opponentName
          ? _value.opponentName
          : opponentName // ignore: cast_nullable_to_non_nullable
              as String,
      rotation: null == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as Rotation,
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
    ));
  }
}

/// @nodoc

class _$SettingImpl extends _Setting {
  const _$SettingImpl(
      {this.playerName = '太郎',
      this.opponentName = '花子',
      this.rotation = Rotation.up,
      this.hour = 0,
      this.minute = 10,
      this.second = 10})
      : super._();

  @override
  @JsonKey()
  final String playerName;
// 自分の名前
  @override
  @JsonKey()
  final String opponentName;
// 相手の名前
  @override
  @JsonKey()
  final Rotation rotation;
// 回転
  @override
  @JsonKey()
  final int hour;
// 時
  @override
  @JsonKey()
  final int minute;
// 分
  @override
  @JsonKey()
  final int second;

  @override
  String toString() {
    return 'Setting(playerName: $playerName, opponentName: $opponentName, rotation: $rotation, hour: $hour, minute: $minute, second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingImpl &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName) &&
            (identical(other.opponentName, opponentName) ||
                other.opponentName == opponentName) &&
            (identical(other.rotation, rotation) ||
                other.rotation == rotation) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.second, second) || other.second == second));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, playerName, opponentName, rotation, hour, minute, second);

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      __$$SettingImplCopyWithImpl<_$SettingImpl>(this, _$identity);
}

abstract class _Setting extends Setting {
  const factory _Setting(
      {final String playerName,
      final String opponentName,
      final Rotation rotation,
      final int hour,
      final int minute,
      final int second}) = _$SettingImpl;
  const _Setting._() : super._();

  @override
  String get playerName; // 自分の名前
  @override
  String get opponentName; // 相手の名前
  @override
  Rotation get rotation; // 回転
  @override
  int get hour; // 時
  @override
  int get minute; // 分
  @override
  int get second;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
