import 'package:battle_timer/features/play/components/play_finish_dialog.dart';
import 'package:battle_timer/features/play/utils/sound_service.dart';
import 'package:battle_timer/features/play/utils/timer_service.dart';
import 'package:battle_timer/models/play/play.dart';
import 'package:battle_timer/models/setting/setting.dart';
import 'package:battle_timer/models/setting/setting_notifier.dart';
import 'package:flutter/material.dart';
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
  final soundService = SoundService();

  void tapTimer({
    required int increment,
    required bool tapPlayerTimer,
    required BuildContext context,
    required WidgetRef ref,
  }) {
    final tapOpponentTimer = !tapPlayerTimer;
    final isPlayerTurn = state.isPlayerTurn;
    final isOpponentTurn = !isPlayerTurn;
    // プレイ中 && 相手ターンに自分のタイマーをタップした場合は何もしない
    if (state.isPlaying && tapPlayerTimer == isOpponentTurn) {
      return;
    }
    // プレイ中 && 自分ターンに相手のタイマーをタップした場合は何もしない
    if (state.isPlaying && tapOpponentTimer == isPlayerTurn) {
      return;
    }
    // タイマーとサウンドを停止
    timerService.stop();
    soundService.stop();

    // 秒数を追加
    var playerSeconds = state.playerSeconds;
    var opponentSeconds = state.opponentSeconds;
    if (tapPlayerTimer) {
      playerSeconds += increment;
    } else {
      opponentSeconds += increment;
    }

    // Playの状態を更新
    state = state.copyWith(
      isPlaying: true,
      hasStarted: true,
      isPlayerTurn: !isPlayerTurn,
      playerSeconds: playerSeconds,
      opponentSeconds: opponentSeconds,
    );

    timerService.start(
      isPlayerTurn ? state.opponentSeconds : state.playerSeconds,
      (remaining) {
        if (isPlayerTurn) {
          state = state.copyWith(opponentSeconds: remaining);
        } else {
          state = state.copyWith(playerSeconds: remaining);
        }
        if (remaining == 10) {
          soundService.stop();
          soundService.play();
        }
        if (remaining == 5) {
          soundService.stop();
          soundService.play(loop: true);
        }
        if (remaining == 0) {
          soundService.stop();
          stop();
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => PlayFinishDialog(),
          ).then((_) {
            final setting = ref.watch(settingProvider);
            reset(setting);
          });
        }
      },
    );
  }

  void stop() {
    timerService.stop();
    state = state.copyWith(isPlaying: false);
  }

  void start({
    required BuildContext context,
    required WidgetRef ref,
  }) {
    tapTimer(
      increment: 0,
      tapPlayerTimer: !state.isPlayerTurn,
      context: context,
      ref: ref,
    );
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
