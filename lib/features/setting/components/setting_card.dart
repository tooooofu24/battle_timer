import 'package:battle_timer/features/common/components/time_display.dart';
import 'package:battle_timer/features/common/components/timer_card.dart';
import 'package:battle_timer/features/setting/components/player_name_field.dart';
import 'package:battle_timer/features/setting/components/setting_bottom_sheet.dart';
import 'package:battle_timer/models/setting/setting.dart';
import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  final Setting setting;
  final String playerName;
  final void Function(String) setPlayerName;
  final void Function(int, int, int) setTime;

  const SettingCard({
    required this.setting,
    required this.playerName,
    required this.setPlayerName,
    required this.setTime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TimerCard(
      children: [
        PlayerNameField(
          playerName: playerName,
          onChanged: setPlayerName,
        ),
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => SettingBottomSheet(
                  defaultHour: setting.hour,
                  defaultMinute: setting.minute,
                  defaultSecond: setting.second,
                  setTime: setTime,
                ),
              ),
              child: TimeDisplay(
                time: setting.time,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
