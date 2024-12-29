import 'package:flutter/material.dart';

class SettingResetButton extends StatelessWidget {
  final void Function() onPressed;
  const SettingResetButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.replay_rounded,
        color: Colors.blueGrey,
        size: 45.0,
      ),
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
              child: IconButton(
                icon: Icon(
                  Icons.close_rounded,
                  color: Colors.blueGrey,
                  size: 30.0,
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(
                  Icons.done_rounded,
                  color: Colors.blue,
                  size: 30.0,
                ),
                onPressed: () => Navigator.pop(context, true),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
