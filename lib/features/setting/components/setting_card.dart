import 'package:battle_timer/features/setting/components/player_name_field.dart';
import 'package:battle_timer/features/setting/components/setting_bottom_sheet.dart';
import 'package:battle_timer/models/setting/setting.dart';
import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  final Setting setting;
  final String playerName;
  final void Function(String) setPlayerName;
  final void Function(int, int) setTime;

  const SettingCard({
    required this.setting,
    required this.playerName,
    required this.setPlayerName,
    required this.setTime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color: Colors.white,
        elevation: 0.3,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                PlayerNameField(
                  initialValue: playerName,
                  onChanged: setPlayerName,
                ),
                Expanded(
                  child: Center(
                    child: TextButton(
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) => SettingBottomSheet(
                          defaultMinute: setting.minute,
                          defaultSecond: setting.second,
                          setTime: setTime,
                        ),
                      ),
                      child: Text(
                        setting.time,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
