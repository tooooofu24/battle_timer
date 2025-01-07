import 'package:battle_timer/features/common/components/timer_icon_button.dart';
import 'package:flutter/material.dart';

class PlayFinishDialog extends StatelessWidget {
  const PlayFinishDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        '制限時間が終了しました！',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      content: Text('ダイアログを閉じるとタイマーがリセットされます'),
      actions: [
        Row(
          children: [
            Expanded(
              child: TimerIconButton(
                icon: Icons.done_rounded,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
