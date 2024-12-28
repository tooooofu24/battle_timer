import 'package:battle_timer/models/setting/rotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting.freezed.dart';

@freezed
class Setting with _$Setting {
  const Setting._();

  const factory Setting({
    @Default('プレイヤー1') String playerName, // 自分の名前
    @Default('プレイヤー2') String opponentName, // 相手の名前
    @Default(Rotation.up) Rotation rotation, // 回転
    @Default(10) int minute, // 分
    @Default(0) int second, // 秒
  }) = _Setting;

  String get time =>
      '${minute.toString()}:${second.toString().padLeft(2, '0')}';
}
