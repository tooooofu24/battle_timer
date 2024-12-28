import 'package:battle_timer/features/play/components/play_card.dart';
import 'package:battle_timer/features/play/components/play_reset_button.dart';
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
    final play = ref.watch(playProvider);
    final notifier = ref.read(playProvider.notifier);

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
                  RotatedBox(
                    quarterTurns: setting.rotation.opponentQuarterTurns,
                    child: PlayCard(
                      playerName: setting.opponentName,
                      time: play.opponentTime,
                      onTap: () => notifier.tapOpponentTimer(),
                    ),
                  ),
                  SizedBox(
                    height: 72,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PlayResetButton(
                          onPressed: () => notifier.reset(setting),
                        ),
                        StartStopButton(
                          isPlaying: play.isPlaying,
                          onStart: () => notifier.start(),
                          onStop: () => notifier.stop(),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.settings_rounded,
                            color: Colors.blueGrey,
                            size: 40.0,
                          ),
                          onPressed: () {
                            notifier.stop();
                            Navigator.pushNamed(context, '/setting');
                          },
                        ),
                      ],
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: setting.rotation.playerQuarterTurns,
                    child: PlayCard(
                      playerName: setting.playerName,
                      time: play.playerTime,
                      onTap: () => notifier.tapPlayerTimer(),
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
