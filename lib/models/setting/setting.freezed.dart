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
  PlayerSetting get playerSetting => throw _privateConstructorUsedError;
  PlayerSetting get opponentSetting => throw _privateConstructorUsedError;
  Rotation get rotation => throw _privateConstructorUsedError;

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
      {PlayerSetting playerSetting,
      PlayerSetting opponentSetting,
      Rotation rotation});

  $PlayerSettingCopyWith<$Res> get playerSetting;
  $PlayerSettingCopyWith<$Res> get opponentSetting;
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
    Object? playerSetting = null,
    Object? opponentSetting = null,
    Object? rotation = null,
  }) {
    return _then(_value.copyWith(
      playerSetting: null == playerSetting
          ? _value.playerSetting
          : playerSetting // ignore: cast_nullable_to_non_nullable
              as PlayerSetting,
      opponentSetting: null == opponentSetting
          ? _value.opponentSetting
          : opponentSetting // ignore: cast_nullable_to_non_nullable
              as PlayerSetting,
      rotation: null == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as Rotation,
    ) as $Val);
  }

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerSettingCopyWith<$Res> get playerSetting {
    return $PlayerSettingCopyWith<$Res>(_value.playerSetting, (value) {
      return _then(_value.copyWith(playerSetting: value) as $Val);
    });
  }

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerSettingCopyWith<$Res> get opponentSetting {
    return $PlayerSettingCopyWith<$Res>(_value.opponentSetting, (value) {
      return _then(_value.copyWith(opponentSetting: value) as $Val);
    });
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
      {PlayerSetting playerSetting,
      PlayerSetting opponentSetting,
      Rotation rotation});

  @override
  $PlayerSettingCopyWith<$Res> get playerSetting;
  @override
  $PlayerSettingCopyWith<$Res> get opponentSetting;
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
    Object? playerSetting = null,
    Object? opponentSetting = null,
    Object? rotation = null,
  }) {
    return _then(_$SettingImpl(
      playerSetting: null == playerSetting
          ? _value.playerSetting
          : playerSetting // ignore: cast_nullable_to_non_nullable
              as PlayerSetting,
      opponentSetting: null == opponentSetting
          ? _value.opponentSetting
          : opponentSetting // ignore: cast_nullable_to_non_nullable
              as PlayerSetting,
      rotation: null == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as Rotation,
    ));
  }
}

/// @nodoc

class _$SettingImpl extends _Setting {
  const _$SettingImpl(
      {this.playerSetting = const PlayerSetting(name: 'プレイヤー1'),
      this.opponentSetting = const PlayerSetting(name: 'プレイヤー2'),
      this.rotation = Rotation.up})
      : super._();

  @override
  @JsonKey()
  final PlayerSetting playerSetting;
  @override
  @JsonKey()
  final PlayerSetting opponentSetting;
  @override
  @JsonKey()
  final Rotation rotation;

  @override
  String toString() {
    return 'Setting(playerSetting: $playerSetting, opponentSetting: $opponentSetting, rotation: $rotation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingImpl &&
            (identical(other.playerSetting, playerSetting) ||
                other.playerSetting == playerSetting) &&
            (identical(other.opponentSetting, opponentSetting) ||
                other.opponentSetting == opponentSetting) &&
            (identical(other.rotation, rotation) ||
                other.rotation == rotation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, playerSetting, opponentSetting, rotation);

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
      {final PlayerSetting playerSetting,
      final PlayerSetting opponentSetting,
      final Rotation rotation}) = _$SettingImpl;
  const _Setting._() : super._();

  @override
  PlayerSetting get playerSetting;
  @override
  PlayerSetting get opponentSetting;
  @override
  Rotation get rotation;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
