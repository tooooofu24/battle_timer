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
        ? IconButton(
            icon: Icon(
              Icons.pause_rounded,
              color: Colors.blueGrey,
              size: 40.0,
            ),
            onPressed: onStop,
          )
        : IconButton(
            icon: Icon(
              Icons.play_arrow_rounded,
              color: Colors.blueGrey,
              size: 40.0,
            ),
            onPressed: onStart,
          );
  }
}
