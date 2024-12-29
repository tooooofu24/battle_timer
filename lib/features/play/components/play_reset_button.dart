import 'package:flutter/material.dart';

class PlayResetButton extends StatelessWidget {
  final bool disabled;
  final void Function() onPressed;
  const PlayResetButton({
    super.key,
    required this.disabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.stop_rounded,
        color: Colors.blueGrey,
        size: 45.0,
      ),
      onPressed: () async {
        if (disabled) return;
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
        'タイマーをリセットしますか？',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      content: Text('タイマーをリセットすると、残り時間が全てリセットされます。'),
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
