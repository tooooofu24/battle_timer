import 'package:battle_timer/features/common/components/time_display.dart';
import 'package:battle_timer/features/common/components/timer_card.dart';
import 'package:battle_timer/features/setting/components/increment_bottom_sheet.dart';
import 'package:battle_timer/features/setting/components/player_name_field.dart';
import 'package:battle_timer/features/setting/components/time_bottom_sheet.dart';
import 'package:battle_timer/models/setting/player_setting.dart';
import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  final PlayerSetting playerSetting;
  final void Function(String) setPlayerName;
  final void Function(int, int, int) setTime;
  final void Function(int, int, int) setBothTime;
  final void Function(int) setIncrement;
  final void Function(int) setBothIncrement;

  const SettingCard({
    required this.playerSetting,
    required this.setPlayerName,
    required this.setTime,
    required this.setBothTime,
    required this.setIncrement,
    required this.setBothIncrement,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TimerCard(
      children: [
        PlayerNameField(
          playerName: playerSetting.name,
          onChanged: setPlayerName,
        ),
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => TimeBottomSheet(
                  defaultHour: playerSetting.hour,
                  defaultMinute: playerSetting.minute,
                  defaultSecond: playerSetting.second,
                  setTime: setTime,
                  setBothTime: setBothTime,
                ),
              ),
              child: TimeDisplay(time: playerSetting.displayTime),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => IncrementBottomSheet(
                defaultValue: playerSetting.increment,
                setTime: setIncrement,
                setBothTime: setBothIncrement,
              ),
            ),
            child: Text(
              '+${playerSetting.increment}',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
