import 'package:battle_timer/features/common/components/timer_icon_button.dart';
import 'package:flutter/material.dart';

class StartStopButton extends StatelessWidget {
  final bool isPlaying;
  final void Function() onStart;
  final void Function() onStop;
  const StartStopButton({
    super.key,
    required this.isPlaying,
    required this.onStart,
    required this.onStop,
  });

  @override
  Widget build(BuildContext context) {
    return isPlaying
        ? TimerIconButton(
            icon: Icons.pause_rounded,
            onPressed: onStop,
          )
        : TimerIconButton(
            icon: Icons.play_arrow_rounded,
            onPressed: onStart,
          );
  }
}
