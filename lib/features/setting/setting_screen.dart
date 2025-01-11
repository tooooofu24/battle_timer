import 'package:battle_timer/features/common/components/time_animated_rotation.dart';
import 'package:battle_timer/features/common/components/timer_icon_button.dart';
import 'package:battle_timer/features/setting/components/setting_background.dart';
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
    final provider = playProvider(setting);
    final playNotifier = ref.read(provider.notifier);
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: [
            SettingBackground(),
            SafeArea(
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TimeAnimatedRotation(
                          turns: setting.rotation.opponentTurns,
                          child: SettingCard(
                            playerSetting: setting.opponentSetting,
                            setPlayerName: settingNotifier.setOpponentName,
                            setTime: settingNotifier.setOpponentTime,
                            setBothTime: settingNotifier.setBothTime,
                            setIncrement: settingNotifier.setOpponentIncrement,
                            setBothIncrement: settingNotifier.setBothIncrement,
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
                                  playNotifier.reset(setting);
                                  Navigator.pop(context);
                                },
                              ),
                              TimerIconButton(
                                icon: Icons.screen_rotation_rounded,
                                onPressed: () => settingNotifier.rotate(),
                              ),
                              TimerIconButton(
                                icon: Icons.done_rounded,
                                onPressed: () {
                                  playNotifier.reset(setting);
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        TimeAnimatedRotation(
                          turns: setting.rotation.playerTurns,
                          child: SettingCard(
                            playerSetting: setting.playerSetting,
                            setPlayerName: settingNotifier.setPlayerName,
                            setTime: settingNotifier.setPlayerTime,
                            setBothTime: settingNotifier.setBothTime,
                            setIncrement: settingNotifier.setPlayerIncrement,
                            setBothIncrement: settingNotifier.setBothIncrement,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
