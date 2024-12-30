import 'package:battle_timer/models/setting/rotation.dart';
import 'package:battle_timer/models/setting/setting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingNotifier extends StateNotifier<Setting> {
  SettingNotifier() : super(const Setting());

  void rotate() {
    state = state.copyWith(rotation: state.rotation.rotate());
  }

  void setPlayerTime(int hour, int minute, int second) {
    final playerSetting = state.playerSetting.copyWith(
      hour: hour,
      minute: minute,
      second: second,
    );
    state = state.copyWith(playerSetting: playerSetting);
  }

  void setOpponentTime(int hour, int minute, int second) {
    final opponentSetting = state.opponentSetting.copyWith(
      hour: hour,
      minute: minute,
      second: second,
    );
    state = state.copyWith(opponentSetting: opponentSetting);
  }

  void setBothTime(int hour, int minute, int second) {
    setPlayerTime(hour, minute, second);
    setOpponentTime(hour, minute, second);
  }

  void setPlayerIncrement(int increment) {
    final playerSetting = state.playerSetting.copyWith(
      increment: increment,
    );
    state = state.copyWith(playerSetting: playerSetting);
  }

  void setOpponentIncrement(int increment) {
    final opponentSetting = state.opponentSetting.copyWith(
      increment: increment,
    );
    state = state.copyWith(opponentSetting: opponentSetting);
  }

  void setBothIncrement(int increment) {
    setPlayerIncrement(increment);
    setOpponentIncrement(increment);
  }

  void setPlayerName(String playerName) {
    final playerSetting = state.playerSetting.copyWith(
      name: playerName,
    );
    state = state.copyWith(playerSetting: playerSetting);
  }

  void setOpponentName(String playerName) {
    final opponentSetting = state.opponentSetting.copyWith(
      name: playerName,
    );
    state = state.copyWith(opponentSetting: opponentSetting);
  }

  void reset() {
    state = const Setting();
  }
}

final settingProvider = StateNotifierProvider<SettingNotifier, Setting>((ref) {
  return SettingNotifier();
});
