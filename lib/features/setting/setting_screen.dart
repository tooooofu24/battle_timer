import 'package:battle_timer/features/setting/components/setting_card.dart';
import 'package:battle_timer/features/setting/components/setting_reset_button.dart';
import 'package:battle_timer/models/play/play_notifier.dart';
import 'package:battle_timer/models/setting/rotation.dart';
import 'package:battle_timer/models/setting/setting_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final setting = ref.watch(settingProvider);
    final settingNotifier = ref.read(settingProvider.notifier);
    final provider = playProvider(setting.seconds);
    final playNotifier = ref.read(provider.notifier);
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RotatedBox(
                      quarterTurns: setting.rotation.opponentQuarterTurns,
                      child: SettingCard(
                        setting: setting,
                        playerName: setting.opponentName,
                        setPlayerName: settingNotifier.setOpponentName,
                        setTime: settingNotifier.setTime,
                      ),
                    ),
                    SizedBox(
                      height: 72,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SettingResetButton(
                            onPressed: () {
                              settingNotifier.reset();
                              Navigator.pop(context);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.screen_rotation_rounded,
                              color: Colors.blueGrey,
                              size: 45.0,
                            ),
                            onPressed: () => settingNotifier.rotate(),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.done_rounded,
                              color: Colors.blueGrey,
                              size: 45.0,
                            ),
                            onPressed: () {
                              playNotifier.reset(setting.seconds);
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: setting.rotation.playerQuarterTurns,
                      child: SettingCard(
                        setting: setting,
                        playerName: setting.playerName,
                        setPlayerName: settingNotifier.setPlayerName,
                        setTime: settingNotifier.setTime,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
