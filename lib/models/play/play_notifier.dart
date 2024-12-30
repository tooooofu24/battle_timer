import 'package:battle_timer/features/play/utils/timer_service.dart';
import 'package:battle_timer/models/play/play.dart';
import 'package:battle_timer/models/setting/setting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayNotifier extends StateNotifier<Play> {
  PlayNotifier(
    int playerSeconds,
    int opponentSeconds,
  ) : super(Play(
          playerSeconds: playerSeconds,
          opponentSeconds: opponentSeconds,
        ));

  final timerService = TimerService();

  void tapPlayerTimer() {
    // プレイ中 && 相手のターンの場合は何もしない
    if (state.isPlaying && !state.isPlayerTurn) {
      return;
    }
    // Playの状態を更新
    state = state.copyWith(
      isPlaying: true,
      hasStarted: true,
      isPlayerTurn: false,
    );
    // タイマーを止める
    timerService.stop();
    // 1秒ごとにopponentSecondsを1減らす
    timerService.start(
      state.opponentSeconds,
      (remaining) => state = state.copyWith(opponentSeconds: remaining),
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
      hasStarted: true,
      isPlayerTurn: true,
    );
    // タイマーを止める
    timerService.stop();
    // 1秒ごとにplayerSecondsを1減らす
    timerService.start(
      state.playerSeconds,
      (remaining) => state = state.copyWith(playerSeconds: remaining),
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
      playerSeconds: setting.playerSetting.seconds,
      opponentSeconds: setting.opponentSetting.seconds,
    );
  }
}

final playProvider =
    StateNotifierProvider.autoDispose.family<PlayNotifier, Play, Setting>(
  (ref, setting) {
    return PlayNotifier(
      setting.playerSetting.seconds,
      setting.opponentSetting.seconds,
    );
  },
);
