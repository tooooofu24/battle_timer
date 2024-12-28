import 'package:battle_timer/features/play/utils/timer_service.dart';
import 'package:battle_timer/models/play/play.dart';
import 'package:battle_timer/models/setting/setting.dart';
import 'package:battle_timer/models/setting/setting_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayNotifier extends StateNotifier<Play> {
  PlayNotifier(
    int playerRemainingSeconds,
    int opponentRemainingSeconds,
  ) : super(Play(
          playerRemainingSeconds: playerRemainingSeconds,
          opponentRemainingSeconds: opponentRemainingSeconds,
        ));

  final timerService = TimerService();

  void setSetting(Setting setting) {
    state = state.copyWith(
      playerRemainingSeconds: setting.seconds,
      opponentRemainingSeconds: setting.seconds,
    );
  }

  void tapPlayerTimer() {
    // プレイ中 && 相手のターンの場合は何もしない
    if (state.isPlaying && !state.isPlayerTurn) {
      return;
    }
    // Playの状態を更新
    state = state.copyWith(
      isPlaying: true,
      isPlayerTurn: false,
    );
    // タイマーを止める
    timerService.stop();
    // 1秒ごとにopponentRemainingSecondsを1減らす
    timerService.start(
      state.opponentRemainingSeconds,
      (remaining) =>
          state = state.copyWith(opponentRemainingSeconds: remaining),
    );
  }

  void tapOpponentTimer() {
    // プレイ中 && プレイヤーのターンの場合は何もしない
    if (state.isPlaying && state.isPlayerTurn) {
      return;
    }
    // Playの状態を更新
    state = state.copyWith(
      isPlaying: true,
      isPlayerTurn: true,
    );
    // タイマーを止める
    timerService.stop();
    // 1秒ごとにplayerRemainingSecondsを1減らす
    timerService.start(
      state.playerRemainingSeconds,
      (remaining) => state = state.copyWith(playerRemainingSeconds: remaining),
    );
  }

  void stop() {
    timerService.stop();
    state = state.copyWith(isPlaying: false);
  }

  void start() {
    if (state.isPlayerTurn) {
      tapOpponentTimer();
    } else {
      tapPlayerTimer();
    }
  }

  void reset(Setting setting) {
    timerService.stop();
    state = Play(
      playerRemainingSeconds: setting.seconds,
      opponentRemainingSeconds: setting.seconds,
    );
  }
}

final playProvider = StateNotifierProvider<PlayNotifier, Play>((ref) {
  final setting = ref.watch(settingProvider);
  return PlayNotifier(setting.seconds, setting.seconds);
});
