import 'package:battle_timer/features/common/components/timer_icon_button.dart';
import 'package:flutter/material.dart';

class SettingResetButton extends StatelessWidget {
  final void Function() onPressed;
  const SettingResetButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TimerIconButton(
      icon: Icons.replay_rounded,
      onPressed: () async {
        final confirmed = await showDialog<bool>(
          context: context,
          builder: (context) => ResetConfirmDialog(),
        );
        if (confirmed == true) {
          onPressed();
        }
      },
    );
  }
}

class ResetConfirmDialog extends StatelessWidget {
  const ResetConfirmDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        '設定をリセットしますか？',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      content: Text('設定をリセットすると、現在の設定が全て削除されます。'),
      actions: [
        Row(
          children: [
            Expanded(
              child: TimerIconButton(
                icon: Icons.close_rounded,
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
            Expanded(
              child: TimerIconButton(
                icon: Icons.done_rounded,
                color: TimerIconButtonColor.blue,
                onPressed: () => Navigator.pop(context, true),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
