import 'package:flutter/material.dart';

enum TimerIconButtonColor {
  blueGrey,
  blue,
}

class TimerIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  final TimerIconButtonColor? color;

  const TimerIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.color = TimerIconButtonColor.blueGrey,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: color == TimerIconButtonColor.blueGrey
            ? Colors.blueGrey
            : Colors.blue,
        size: 45.0,
      ),
      onPressed: onPressed,
    );
  }
}
