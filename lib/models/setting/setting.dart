import 'package:battle_timer/models/setting/player_setting.dart';
import 'package:battle_timer/models/setting/rotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting.freezed.dart';

@freezed
class Setting with _$Setting {
  const Setting._();

  const factory Setting({
    @Default(PlayerSetting(
      name: 'プレイヤー1',
    ))
    PlayerSetting playerSetting,
    @Default(PlayerSetting(
      name: 'プレイヤー2',
    ))
    PlayerSetting opponentSetting,
    @Default(Rotation.up) Rotation rotation,
  }) = _Setting;
}
