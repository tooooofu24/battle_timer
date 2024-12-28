import 'package:battle_timer/features/play/components/play_card.dart';
import 'package:battle_timer/models/setting/game_notifier.dart';
import 'package:battle_timer/models/setting/rotation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayScreen extends ConsumerWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingProvider);
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Color(0xFFF8FAFC),
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RotatedBox(
                    quarterTurns: state.rotation.opponentQuarterTurns,
                    child: PlayCard(
                      playerName: state.opponentName,
                      time: state.time,
                    ),
                  ),
                  SizedBox(
                    height: 72,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.stop_rounded,
                            color: Colors.blueGrey,
                            size: 40.0,
                          ),
                          onPressed: () => {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.pause_rounded,
                            color: Colors.blueGrey,
                            size: 40.0,
                          ),
                          onPressed: () => {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.settings_rounded,
                            color: Colors.blueGrey,
                            size: 40.0,
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/setting'),
                        ),
                      ],
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: state.rotation.playerQuarterTurns,
                    child: PlayCard(
                      playerName: state.playerName,
                      time: state.time,
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
