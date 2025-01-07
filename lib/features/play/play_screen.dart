import 'package:battle_timer/features/common/components/time_animated_rotation.dart';
import 'package:battle_timer/features/play/components/play_card.dart';
import 'package:battle_timer/features/play/components/play_reset_button.dart';
import 'package:battle_timer/features/play/components/play_setting_button.dart';
import 'package:battle_timer/features/play/components/start_stop_button.dart';
import 'package:battle_timer/models/play/play_notifier.dart';
import 'package:battle_timer/models/setting/rotation.dart';
import 'package:battle_timer/models/setting/setting_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayScreen extends ConsumerWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setting = ref.watch(settingProvider);
    final provider = playProvider(setting);
    final play = ref.watch(provider);
    final notifier = ref.read(provider.notifier);

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TimeAnimatedRotation(
                    turns: setting.rotation.opponentTurns,
                    child: PlayCard(
                      playerName: setting.opponentSetting.name,
                      time: play.opponentTime,
                      increment: setting.opponentSetting.increment,
                      isActive: !play.isPlayerTurn && play.isPlaying,
                      isPlaying: play.isPlaying,
                      onTap: () => notifier.tapTimer(
                          play.isPlaying && play.opponentSeconds > 0
                              ? setting.opponentSetting.increment
                              : 0,
                          false),
                    ),
                  ),
                  SizedBox(
                    height: 72,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PlayResetButton(
                          onPressed: play.hasStarted
                              ? () => notifier.reset(setting)
                              : null,
                        ),
                        StartStopButton(
                          isPlaying: play.isPlaying,
                          onStart: () => notifier.start(),
                          onStop: () => notifier.stop(),
                        ),
                        PlaySettingButton(
                          hasStarted: play.hasStarted,
                          onPressed: () {
                            notifier.stop();
                            Navigator.pushNamed(context, '/setting');
                          },
                        ),
                      ],
                    ),
                  ),
                  TimeAnimatedRotation(
                    turns: setting.rotation.playerTurns,
                    child: PlayCard(
                      playerName: setting.playerSetting.name,
                      time: play.playerTime,
                      increment: setting.playerSetting.increment,
                      isActive: play.isPlayerTurn && play.isPlaying,
                      isPlaying: play.isPlaying,
                      onTap: () => notifier.tapTimer(
                        play.isPlaying && play.playerSeconds > 0
                            ? setting.playerSetting.increment
                            : 0,
                        true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
