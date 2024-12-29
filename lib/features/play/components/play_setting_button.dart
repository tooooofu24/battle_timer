import 'package:flutter/material.dart';

class PlaySettingButton extends StatelessWidget {
  final bool hasStarted;
  final void Function() onPressed;
  const PlaySettingButton({
    super.key,
    required this.hasStarted,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.settings_rounded,
        color: Colors.blueGrey,
        size: 45.0,
      ),
      onPressed: () async {
        if (!hasStarted) {
          onPressed();
          return;
        }
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
        '設定を変更しますか？',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      content: Text('設定を変更すると、現在のタイマーもリセットされます。'),
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
